<?php

/**
 * Elements
 *
 * Helps to build UI elements for the application
 */
class Elements extends Phalcon\Mvc\User\Component
{

    private $_headerMenu = array(
        'pull-left' => array(
            'index' => array(
                'caption' => 'Home',
                'action' => 'index'
            ),
            'posts' => array(
                'caption' => 'Ofertas',
                'action' => 'search'
            ),
            'requests' => array(
                'caption' => 'Pedidos',
                'action' => 'index'
            ),
            'about' => array(
                'caption' => 'Acerca',
                'action' => 'index'
            ),
            'contacts' => array(
                'caption' => 'Contatos',
                'action' => 'index'
            ),
        ),
        'pull-right' => array(
            'session' => array(
                'caption' => 'Entrar',
                'action' => 'index'
            ),
        )
    );

    private $_tabs = array(
        'Ofertas' => array(
          'controller'  => 'posts',
          'action' => 'search',
          'any' => true
        ),
        'Mapa' => array(
          'controller'  => 'maplocations',
          'action' => 'index',
          'any' => false
        ),
        'Pedidos' => array(
            'controller' => 'requests',
            'action' => 'index',
            'any' => false
        ),
        'Produtores' => array(
            'controller' => 'suppliers',
            'action' => 'search',
            'any' => true
        ),
        'Produtos' => array(
            'controller' => 'products',
            'action' => 'search',
            'any' => true
        ),
        'Categorias' => array(
            'controller' => 'producttypes',
            'action' => 'search',
            'any' => true
        ),
        'Perfil' => array(
            'controller' => 'requests',
            'action' => 'profile',
            'any' => false
        )
    );

    /**
     * Builds header menu with left and right items
     *
     * @return string
     */
    public function getMenu()
    {

        $auth = $this->session->get('auth');
        if ($auth) {
            $this->_headerMenu['pull-right']['session'] = array(
                'caption' => 'Sair',
                'action' => 'end'
            );
        } else {
            unset($this->_headerMenu['pull-left']['requests']);
            unset($this->_headerMenu['pull-left']['posts']);
        }

        echo '<div class="nav-collapse">';
        $controllerName = $this->view->getControllerName();
        foreach ($this->_headerMenu as $position => $menu) {
            echo '<ul class="nav ', $position, '">';
            foreach ($menu as $controller => $option) {
                if ($controllerName == $controller) {
                    echo '<li class="active">';
                } else {
                    echo '<li>';
                }
                echo Phalcon\Tag::linkTo($controller.'/'.$option['action'], $option['caption']);
                echo '</li>';
            }
            echo '</ul>';
        }
        echo '</div>';
    }

    public function getTabs()
    {
        $controllerName = $this->view->getControllerName();
        $actionName = $this->view->getActionName();
        echo '<div class="navbar-private">';
        echo '<nav>';
        echo '<ul>';
        foreach ($this->_tabs as $caption => $option) {
            if ($option['controller'] == $controllerName && ($option['action'] == $actionName || $option['any'])) {
                echo '<li id="active">';
            } else {
                echo '<li>';
            }
            echo Phalcon\Tag::linkTo($option['controller'].'/'.$option['action'], $caption);
            echo '</li>';
           
        }
       echo '</ul>';
       echo '</nav>';
       echo '</div>';
       echo '<br>';
    }
}
