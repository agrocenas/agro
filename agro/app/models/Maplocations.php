<?php

class Maplocations extends Phalcon\Mvc\Model
{

        
    /**
     * @var integer
     */
	public $id;

        
    /**
     * @var string
     */
	public $name;

        
    /**
     * @var string
     */
	public $address;

     
    /**
     * @var float
     */
	public $lat;

        
    /**
     * @var float
     */
	public $lng;
        
     
    /**
     * @var string
     */
     public $type;
        
}
