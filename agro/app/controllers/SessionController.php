<?php

use Phalcon\Tag as Tag;

class SessionController extends ControllerBase
{
    public function initialize()
    {
        $this->view->setTemplateAfter('main');
        Tag::setTitle('Entrar');
        parent::initialize();
    }

    public function indexAction()
    {
        //Default user and pass
        if (!$this->request->isPost()) {
            Tag::setDefault('email', '');
            Tag::setDefault('password', '');
        }
    }

    public function registerAction()
    {
        $request = $this->request;
        if ($request->isPost()) {

            $name = $request->getPost('name', array('string', 'striptags'));
            $username = $request->getPost('username', 'alphanum');
            $email = $request->getPost('email', 'email');
            $password = $request->getPost('password');
            $repeatPassword = $this->request->getPost('repeatPassword');

            if ($password != $repeatPassword) {
                $this->flash->error('Passwords diferentes');
                return false;
            }

            $user = new Users();
            $user->username = $username;
            $user->password = sha1($password);
            $user->name = $name;
            $user->email = $email;
            $user->created_at = new Phalcon\Db\RawValue('now()');
            $user->active = 'Y';
            if ($user->save() == false) {
                foreach ($user->getMessages() as $message) {
                    $this->flash->error((string) $message);
                }
            } else {
                Tag::setDefault('email', '');
                Tag::setDefault('password', '');
                $this->flash->success('Obrigado pelo registo, agora faz login.');
                return $this->forward('session/index');
            }
        }
    }

    /**
     * Register authenticated user into session data
     *
     * @param Users $user
     */
    private function _registerSession($user)
    {
        $this->session->set('auth', array(
            'id' => $user->id,
            'name' => $user->name
        ));
    }

    /**
     * This actions receive the input from the login form
     *
     */
    public function startAction()
    {
        if ($this->request->isPost()) {
            $email = $this->request->getPost('email', 'email');

            $password = $this->request->getPost('password');
            $password = sha1($password);

            $user = Users::findFirst("email='$email' AND password='$password' AND active='Y'");
            if ($user != false) {
                $this->_registerSession($user);
                $this->flash->notice('Bem Vindo ' . $user->name);
                return $this->forward('requests/index');
            }

            $username = $this->request->getPost('email', 'alphanum');
            $user = Users::findFirst("username='$email' AND password='$password' AND active='Y'");
            if ($user != false) {
                $this->_registerSession($user);
                $this->flash->notice('Bem Vindo ' . $user->name);
                return $this->forward('requests/index');
            }

            $this->flash->error('email/password errados');
        }

        return $this->forward('session/index');
    }

    /**
     * Finishes the active session redirecting to the index
     *
     * @return unknown
     */
    public function endAction()
    {
        $this->session->remove('auth');
        $this->flash->success('Até já !');
        return $this->forward('index/index');
    }
}
