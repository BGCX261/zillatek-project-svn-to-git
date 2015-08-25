<?php

/**
 * Description of User
 *
 * @author Vu Manh Cuong
 */
class VC_DbTable_Store_Topic extends VC_DB
{

    protected $_name = 'store_topic';
    protected $_primary = "id";
   
    public function findByTopicGroupId($topicGroupId, $getDeleted = 0)
    {
        if (! $topicGroupId){
            throw new Exception("topicGroupId not valid");
        }
        $query = $this->select()->where("topic_group_id = ?", $topicGroupId);
        $query->where("is_deleted = ?", $getDeleted);
        //echo $this->getAdapter()->getProfiler()->getLastQueryProfile()->getQuery();
        return $this->fetchAll($query)->toArray();
    }

    public function deleteTopicByTopicGroup($topicGroupId)
    {
        $allTopic = $this->fetchAll("topic_group_id = ". $topicGroupId);
        if ($allTopic) {
            foreach ($allTopic as $topic) {
                //Delete all article of this topic
                $articleTbl = new VC_DbTable_Store_Article();
                $articleTbl->delete("topic_id = " . $topic->id);
            }

            $this->delete("topic_group_id = ". $topicGroupId);
        }
    }

    public function deleteByTopicId($topicId)
    {
        $articleTbl = new VC_DbTable_Store_Article();
        $articleTbl->delete("topic_id = " . $topicId);
        $this->delete("id = ". $topicId);
    }
}
