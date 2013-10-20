<?php

class Suppliers extends Phalcon\Mvc\Model {

    /**
     * Entity Id
     *  @var integer
     */
    public $id;

    /**
     * Supplier Name
     * @var string
     */
    public $name;

    /**
     * Supplier telephone
     * @var string
     */
    public $telephone;

    /**
     * Supplier Address
     * @var string
     */
    public $address;

    /**
     * Supplier city
     * @var string
     */
    public $city;

    
    /**
     * Relations
     */
    
    public function initialize() {
        $this->hasOne('user', 'Users', 'id', array(
            'reusable' => false
        ));
    }
}