<?php

/**
 * Description of User
 *
 * @author Vu Manh Cuong
 */
class VC_DbTable_Store_Article extends VC_DB
{

    protected $_name = 'store_article';
    protected $_primary = "id";
  
    public function findByIdAndUserId($id, $userId)
    {
        $query = $this->select()->where("id = ?", $id);
        $query->where("user_id = ?", $userId);
        return $this->fetchRow($query);
    }
   

    public function findByMaxIdOfTopicAndUserId($topicId, $userId)
    {
        $query = $this->select();
        $query->from($this->_name, "MAX(`id`) as max_id");
        $query->where("user_id = ?", $userId);
        $query->where("topic_id = ?", $topicId);

        $res = $this->fetchRow($query);
        //echo $this->getAdapter()->getProfiler()->getLastQueryProfile()->getQuery();
        return $res;
    }
    
    public function findByTopicId($topicId, $from = 0, $numRecord = 20)
    {
        if (! $topicId){
            throw new Exception("topicId not valid");
        }
        $query = $this->select()->where("topic_id = ?", $topicId);
        $query->limit($numRecord, $from);
        $query->order("id desc");
        //echo $this->getAdapter()->getProfiler()->getLastQueryProfile()->getQuery();
        return $this->fetchAll($query)->toArray();
    }

    public function getTotalArticleByTopic($topicId)
    {
        if (! $topicId){
            throw new Exception("topicId not valid");
        }
        $query = $this->select();
        $query->from("store_article", "COUNT(`id`) as total");
        $query->where("topic_id = ?", $topicId);
        $result = $this->fetchRow($query);
        return $result->total;
    }
}
