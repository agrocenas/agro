<?php

class Comments extends Phalcon\Mvc\Model {

    
    /**
     * Entity Id
     * @var integer
     */
    public $id;
    
    /**
     * Relation to post
     *@var string
     */
    public $post;
    
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
     * Relation to rating
     * @var integer
     */
    public $rating;

    
    /**
     * Description of post
     * @var string
     */
    public $title;
    
    /**
     * Description of post
     * @var string
     */
    public $description;
    
    
    /**
     * Symbol Y or N - indicates if post is active
     * @var string
     */
    public $active;

    
    /**
     * Relations zone
     */
    
    public function initialize() {

//         $this->hasMany('id', 'Posts', 'comment', array(
//        	'foreignKey' => array(
//        		'message' => 'Comentario nao pode ser apagado'
//        	)
//        ));
        
//        $this->hasOne('post', 'Posts', 'id', array(
//            'reusable' => false
//        ));
//        
//        $this->hasOne('user', 'Users', 'id', array(
//            'reusable' => false
//        ));
//        
//        $this->hasOne('rating','Ratings', 'id', array(
//            'reusable' => false
//        ));
        
    }
}
