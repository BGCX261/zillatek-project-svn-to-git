<?php

/**
 * Description of User
 *
 * @author Vu Manh Cuong
 */
class VC_DbTable_User extends Zend_Db_Table
{

    protected $_name = 'user';
    protected $_primary = "id";
    
    /**
     * @param int $id
     * @return array
     */
    public function findUserById($id)
    {
        $query = $this->select()->where("id = ?", $id);
        return $this->fetchRow($query);
    }

    public function findUserByUsernameOrEmail($email)
    {
        $query = $this->select()->where("email = '". addslashes($email) . "' AND is_active = 1");
        return $this->fetchRow($query);
    }

    public function insertUser($userData)
    {        
        return $this->insert($userData);
    }
}
