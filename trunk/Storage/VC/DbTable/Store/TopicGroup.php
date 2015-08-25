<?php

/**
 * Description of User
 *
 * @author Vu Manh Cuong
 */
class VC_DbTable_Store_TopicGroup extends VC_DB
{

    protected $_name = 'store_topic_group';
    protected $_primary = "id";
    
    /**
     * @param int $id
     * @return array
     */
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
        return $this->fetchAll($query)->toArray();
    }

}
