<?php

class Contacts extends Phalcon\Mvc\Model {

    /**
     * Entty Id
     * @var integer
     */
    public $id;
    
    /**
     * Relation to user
     * @var integer
     */
    public $user;
    
    /**
     * User alias for reply
     * @var string
     */
    public $name;
    
    /**
     * E-mail left for reply
     * @var
     */
    public $email;
    
    /**
     * Comments
     * @var string
     */
    public $comments;
    
    /**
     * Creattion date
     * @var datetime
     */
    public $created_at;

    
    /**
     * Relations
     */
    public function initialize() {
        $this->hasOne('user', 'Users', 'id', array(
            'reusable' => false
        ));
    }

}
