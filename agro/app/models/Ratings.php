<?php

class Ratings extends Phalcon\Mvc\Model {

    
    /**
     * Entity Id
     * @var integer
     */
    public $id;
    
    /**
     * Relation to user who has posted
     * @var string
     */
    public $title;
    
    /**
     * Post date
     * @var string
     */
    public $description;
}
