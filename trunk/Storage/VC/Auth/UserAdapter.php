<?php

/**
 * Description of Adapter
 *
 * @author Cuong Vu
 */
class VC_Auth_UserAdapter implements Zend_Auth_Adapter_Interface
{
    protected $username;
    protected $password;
    
    public function __construct($params = array())
    {
        if (! isset ($params['username']) || ! isset($params['password'])){
            throw new BKH_Exceptions_InvalidDataException("Invalid username and password authentication");
        }
        $this->username = $params['username'];
        $this->password = $params['password'];
    }

    public function authenticate()
    {
        $userTable = new VC_DbTable_User();
        $userInfo = $userTable->findUserByUsernameOrEmail($this->username);
        if ($userInfo) {
            $identity = new stdClass();           
            $identity->username = $userInfo->username;
            $identity->email = $userInfo->email;
            $identity->userId = $userInfo->id;
            $identity->role = $userInfo->role;
            $identity->fullname = $userInfo->fullname;
            return new Zend_Auth_Result(Zend_Auth_Result::SUCCESS, $identity, array());
        }
        
        return new Zend_Auth_Result(Zend_Auth_Result::FAILURE, $this->username);
    }
}