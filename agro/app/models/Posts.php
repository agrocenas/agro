<?php

class Posts extends Phalcon\Mvc\Model {

    /**
     * Entity Id
     * @var integer
     */
    public $id;

    /**
     * Relation to user who has posted
     * @var integer
     */
    public $user;

    /**
     * Post date
     * @var datetime
     */
    public $date;

    /**
     * Relation to product posted
     * @var integer
     */
    public $product;

    /**
     * Description of post
     * @var string
     */
    public $description;

    /**
     * Relation to comments
     * @var 
     */
    public $comments;

    /**
     * Symbol Y or N - indicates if post is active
     * @var string
     */
    public $active;

    /**
     * Relations zone
     */
    public function initialize() {
        $this->hasOne('user', 'Users', 'id', array(
            'reusable' => false
        ));

        $this->hasOne('product', 'Products', 'id', array(
            'reusable' => false
        ));
        
        $this->hasMany('id', 'Comments', 'post');
    }

    //performed on every object
    public function onConstruct() {

  }

}
