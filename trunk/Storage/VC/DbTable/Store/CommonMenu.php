<?php

/**
 * Description of User
 *
 * @author Vu Manh Cuong
 */
class VC_DbTable_Store_CommonMenu extends VC_DB
{

    protected $_name = 'store_common_menu';
    protected $_primary = "id";
    
    /**
     * @param int $id
     * @return array
     */

    public function getAll()
    {       
        $query = $this->select();
        $query->where("is_deleted = ?", 0);
        $query->order("order ASC");
        return $this->fetchAll($query)->toArray();
    }

    public function insert($data)
    {
        return $this->insert($data);
    }
}
