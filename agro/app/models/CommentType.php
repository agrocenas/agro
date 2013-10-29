<?php

class CommentType extends Phalcon\Mvc\Model {

    public function getSource() {
     return "comment_type";
    }


    /**
     * Comment type id
     * @var integer
     */
    public $id;
 
    
    /**
     * Comment type title
     * @var string
     */
    public $title;
    
    /**
     * Comment type description 
     * @var string
     */
    public $description;
    
}
