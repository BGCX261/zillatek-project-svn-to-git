<?php

abstract class VC_DB extends Zend_Db_Table
{

    function __construct($config = null)
    {
        $dbAdapter = self::getDefaultAdapter();
        if ($dbAdapter) {
            $dbAdapter->query("SET NAMES 'utf8'");
        }
        return parent::__construct($config);
    }

    public function findById($id)
    {
        $query = $this->select()->where("id = ?", $id);
        return $this->fetchRow($query);
    }

    public function findByUserId($userId, $getDeleted = 0)
    {
        if (! $userId){
            throw new Exception("User ID not valid");
        }
        $query = $this->select()->where("user_id = ?", $userId);
        $query->where("is_deleted = ?", $getDeleted);
        return $this->fetchRow($query);
    }

    public function insertData($data)
    {
        return $this->insert($data);
    }

    public function checkRecordExist($field, $value)
    {
        $row = $this->fetchRow($field . " = '" . $value . "'");
        if ($row) {
            return true;
        }
        return false;
    }

    /*
     * Check record exist with multi cond
     * Array("email"=>"myemail@...", "abc"=>"cde"..)
     */

    public function checkRecordExistMultiCond($data, $return_row = false)
    {
        $select = $this->select();
        foreach ($data as $field => $value) {
            $select->where($field . " = ?", $value);
        }

        $row = $this->fetchRow($select);
        if ($row) {
            if ($return_row) {
                //$pri = $this->_primary;
                return $row; //->{$pri[1]};
            }
            return true;
        }
        return false;
    }

    public function getRowByCondition($cond)
    {
        $select = $this->select();
        if (is_array($cond) && sizeof($cond) > 0) {
            foreach ($cond as $field => $value) {
                if (strpos($value, "!=") > 0) {
                    $select->where($field . $value);
                } else {
                    $select->where($field . " = ?", $value);
                }
            }

            return $this->fetchRow($select);
        }
        return null;
    }

    public function getAllRecord($cond)
    {
        $select = $this->select();
        if (is_array($cond)) {
            foreach ($cond as $field => $value) {
                if (strpos($value, ">") || strpos($value, "<") || strpos($value, "!=")) {
                    $select->where($value);
                } else {
                    $select->where($field . " = ?", $value);
                }
            }
        } else {
            $select->where($cond);
        }
        return $this->fetchAll($select);
    }

}