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
    public $post_user;
    
    /**
     * Post date
     * @var datetime
     */
    public $post_date;
    
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
     *Relation to comments
     * @var type string
     */
    public $comment;
    /**
     * Symbol Y or N - indicates if post is active
     * @var string
     */
    public $active;

    
    /**
     * Relations zone
     */
    
    public function initialize() {
        $this->hasOne('post_user', 'Users', 'id', array(
            'reusable' => false
        ));

        $this->hasOne('product', 'Products', 'id', array(
            'reusable' => false
        ));
        
        $this->hasOne('comment', 'Comments', 'id', array(
            'reusable' => false
        ));
    }

}
