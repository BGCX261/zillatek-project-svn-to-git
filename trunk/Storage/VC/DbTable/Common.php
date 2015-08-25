<?php

/**
 * Description of User
 *
 * @author Vu Manh Cuong
 */
class VC_DbTable_Common extends Zend_Db_Table
{

    protected $_name = "";
    protected $_primary = "";

    public function  __construct($name, $primary)
    {
        $this->_name = $name;
        $this->_primary = $primary;
        parent::__construct();
    }
}
