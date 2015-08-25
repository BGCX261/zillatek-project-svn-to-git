<?php

class Default_Form_Register extends VC_Form
{

    public function init()
    {
        /* $email = $this->addElement('text', 'email', array(
          'filters'    => array('StringTrim', 'StringToLower'),
          'validators' => array(
          'EmailAddress',
          ),
          'required'   => true,
          'label'      => $this->translate->_("Email"),
          'decorators' => $this->elementDecorators,
          'description'=>"mustbe lower..."
          )); */

        $email = new Zend_Form_Element_Text("email");
        $email->setLabel('Email');
        $email->setDecorators($this->elementDecorators);
        $email->addValidator("EmailAddress");
        $email->addValidator("ExistUser", false, Array("email"));
        $email->addPrefixPath('VC_Validate', 'VC/Validate/', 'validate');
        $this->addElements(Array($email));

        /*$username = $this->addElement('text', 'username', array(
                    'filters' => array('StringTrim', 'StringToLower'),
                    'validators' => array(
                        'Alpha',
                        array('StringLength', false, array(3, 20)),
                    ),
                    'required' => true,
                    'label' => $this->translate->_("Username"),
                    'decorators' => $this->elementDecorators,
                ));
                */
        $token = $this->addElement('hidden', 'token',
                        array('disableLoadDefaultDecorators' => true)
        );

        $password = $this->addElement('password', 'password', array(
                    'filters' => array('StringTrim'),
                    'validators' => array(
                        array('StringLength', false, array(6, 20)),
                    ),
                    'required' => true,
                    'label' => $this->translate->_("Password"),
                    'decorators' => $this->elementDecorators,
                ));

        /* $re_password = $this->addElement('password', 'password_confirm', array(
          'filters'    => array('StringTrim'),
          'validators' => array(
          array('SL_ValidatorMatch', false, array("password")),
          ),
          'required'   => true,
          'label'      => $this->translate->_("Confirm password"),
          'decorators' => $this->elementDecorators,
          )); */

        $re_password = new Zend_Form_Element_Password("password_confirm");
        $re_password->setLabel('Confirm Password');
        $re_password->setDecorators($this->elementDecorators);
        $re_password->addValidator("PasswordConfirmation", false, Array("password"));
        $re_password->addPrefixPath('VC_Validate', 'VC/Validate/', 'validate');
        $this->addElements(Array($re_password));

        $username = $this->addElement('text', 'fullname', array(
                    'filters' => array('StringTrim'),
                    'validators' => array(
                        array('StringLength', false, array(3, 70)),
                    ),
                    'required' => true,
                    'label' => $this->translate->_("Full name"),
                    'decorators' => $this->elementDecorators,
                ));

        // Add a captcha
        $this->addElement('captcha', 'captcha', array(
            'label' => $this->translate->_("Please enter the 5 letters displayed below:"),
            'required' => true,
            'captcha' => array(
                'captcha' => 'Figlet',
                'wordLen' => 5,
                'timeout' => 300
            )
        ));

        $login = $this->addElement('submit', 'login', array(
                    'required' => false,
                    'ignore' => true,
                    'label' => $this->translate->_("Register"),
                    'decorators' => $this->buttonDecorators,
                ));
    }

}