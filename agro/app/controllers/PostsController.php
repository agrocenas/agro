<?php

use Phalcon\Tag,
    Phalcon\Mvc\Model\Criteria,
    Phalcon\Forms\Form,
    Phalcon\Forms\Element\Text,
    Phalcon\Forms\Element\Hidden;

class PostsController extends ControllerBase {

    public function initialize() {
        $this->view->setTemplateAfter('main');
        Tag::setTitle('Ofertas');
        parent::initialize();
    }

    protected function getForm($entity = null, $edit = false) {
        $form = new Form($entity);


        if (!$edit) {
            $form->add(new Text("id", array(
                "size" => 10,
                "maxlength" => 10,
            )));
            $form->add(new Text("user", array(
                "size" => 20,
                "maxlength" => 50
            )));
        } else {
            $form->add(new Hidden("id"));
            $form->add(new Hidden("user"));
        }

        $form->add(new Phalcon\Forms\Element\Date("date"));

        $form->add(new Text("product", array(
            "size" => 10,
            "maxlength" => 30
        )));

        $form->add(new Text("description", array(
            "size" => 14,
            "maxlength" => 40
        )));

        $form->add(new Text("active", array(
            "size" => 1,
            "maxlength" => 3
        )));

        return $form;
    }

    public function indexAction() {
        $this->session->conditions = null;
        $this->view->setVar("products", Products::find());
        $this->view->form = $this->getForm();
    }

    public function searchAction() {
        $numberPage = 1;
        if ($this->request->isPost()) {
            $query = Criteria::fromInput($this->di, "Posts", $_POST);
            $this->persistent->searchParams = $query->getParams();
        } else {
            $numberPage = $this->request->getQuery("page", "int");
            if ($numberPage <= 0) {
                $numberPage = 1;
            }
        }

        $parameters = array();
        if ($this->persistent->searchParams) {
            $parameters = $this->persistent->searchParams;
        }

        $posts = Posts::find($parameters);
        if (count($posts) == 0) {
            $this->flash->warning("A pesquisa nao encontrou resultados");
            return $this->forward("posts/index");
        }
        $paginator = new Phalcon\Paginator\Adapter\Model(array(
            "data" => $posts,
            "limit" => 10,
            "page" => $numberPage
        ));

        $page = $paginator->getPaginate();

        //pass the values to view
        $this->view->setVar("page", $page);
    }

    public function wallAction() {
       // TODO: implement infinite scrool
        
       
        $posts = Posts::find();

        $paginator = new Phalcon\Paginator\Adapter\Model(array(
            "data" => $posts,
            "limit" => 15,
            "page" => 1
        ));

        $page = $paginator->getPaginate();

        if (count($posts) == 0) {
            $this->flash->warning("A pesquisa nao encontrou resultados");
            return $this->forward("posts/index");
        }



        //TODO: ADD Them to the page
        //initialize comments
//        $comments = Comments::find(array(
//                    "conditions" => "post = ?1",
//                    "bind" => array(1 => $posts->id)
//        ));

        //pass the values to view
        $this->view->setVar("page", $page);
        //$this->view->setVar("comments", $comments);
    }

    public function newAction() {
        $this->view->setVar("products", Products::find());
        $this->view->form = $this->getForm();
    }

    public function editAction($id) {
        $request = $this->request;
        if (!$request->isPost()) {

            $post = Posts::findFirstById($id);
            if (!$post) {
                $this->flash->error("Oferta nao encontrado!");
                return $this->forward("posts/index");
            }
            // for ddl
            $this->view->setVar("products", Products::find());
            $this->view->form = $this->getForm($post, true);
        }
    }

    public function createAction() {
        if (!$this->request->isPost()) {
            return $this->forward("posts/index");
        }

        $posts = new Posts();
        $posts->id = $this->request->getPost("id", "int");
        $posts->user = $this->request->getPost("user", "striptags");
        $posts->date = $this->request->getPost("date", "striptags");
        $posts->product = $this->request->getPost("product", "int");
        $posts->description = $this->request->getPost("description", "striptags");
        $posts->acive = "Y";

        if (!$posts->save()) {
            foreach ($posts->getMessages() as $message) {
                $this->flash->error((string) $message);
            }
            return $this->forward("posts/new");
        }

        $this->flash->success("Publicado! :)");
        return $this->forward("posts/index");
    }

    public function saveAction() {
        if (!$this->request->isPost()) {
            return $this->forward("posts/index");
        }

        $id = $this->request->getPost("id", "int");

        $posts = Posts::findFirstById($id);
        if ($posts == false) {
            $this->flash->error("Oferta nao encontrado ! " . $id);
            return $this->forward("posts/index");
        }

        $posts->id = $this->request->getPost("id", "int");
        $posts->user = $this->request->getPost("user", "striptags");
        $posts->date = $this->request->getPost("date", "striptags");
        $posts->product = $this->request->getPost("product", "striptags");
        $posts->description = $this->request->getPost("description", "striptags");
        $posts->acive = $this->request->getPost("active", "striptags");

        if (!$posts->save()) {
            foreach ($posts->getMessages() as $message) {
                $this->flash->error((string) $message);
            }
            return $this->forward("posts/edit/" . $posts->id);
        }

        $this->flash->success("Oferta actualizado !");
        return $this->forward("posts/index");
    }

    public function deleteAction($id) {

        $posts = Posts::findFirstById($id);
        if (!$posts) {
            $this->flash->error("Oferta nao encontrado !");
            return $this->forward("posts/index");
        }

        if (!$posts->delete()) {
            foreach ($posts->getMessages() as $message) {
                $this->flash->error((string) $message);
            }
            return $this->forward("posts/search");
        }

        $this->flash->error("Oferta eliminado !");
        return $this->forward("posts/index");
    }

}
