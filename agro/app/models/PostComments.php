<?php
class PostComments extends \Phalcon\Mvc\Model
{
    //Change the name of the table this is model is binded to 
    //from default (model name)
    public function getSource()
    {
        return "post_comments";
    }

    /**
     * @var integer
     */
    public $id;

    /**
     * @var integer
     */
    public $post;

    /**
     * @var integer
     */
    public $comment;

    public function initialize()
    {
        $this->belongsTo("post", "Posts", "id");
        $this->belongsTo("comment", "Comments", "id");
    }

}
