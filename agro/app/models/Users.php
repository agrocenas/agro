<?php

use Phalcon\Mvc\Model\Validator\Email as EmailValidator;
use Phalcon\Mvc\Model\Validator\Uniqueness as UniquenessValidator;

class Users extends Phalcon\Mvc\Model
{
    public function validation()
    {
        $this->validate(new EmailValidator(array(
            'field' => 'email'
        )));
        $this->validate(new UniquenessValidator(array(
            'field' => 'email',
            'message' => 'E-mail já registado'
        )));
        $this->validate(new UniquenessValidator(array(
            'field' => 'username',
            'message' => 'Username já registado'
        )));
        if ($this->validationHasFailed() == true) {
            return false;
        }
    }
}
