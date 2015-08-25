<?php

/**
 * Description of MenuFactory
 *
 * @author Vu Manh Cuong
 */
class VC_Business_MenuFactory
{
    public function  __construct()
    {
        
    }
    private function menuGenerator($allTopicGroup, $commonMenu = array()){
        $menu = '<ul class="topnav">';

        if (! empty($allTopicGroup)){
            foreach ($allTopicGroup as $topicGroup){
                $menu .= '<li><a class = "topic_group" href="#">' . $topicGroup['name'] . '</a>';

                if ( isset ($topicGroup['topics']) && ! empty($topicGroup['topics'])){
                    $menu .= '<ul style="display: none;" class="subnav">';
                    foreach ($topicGroup['topics'] as $topic){
                        $menu .= '<li><a href="/article/view/tpid/'. $topic['id'] .'">' . $topic['name'] . '</a></li>';
                    }
                    $menu .= '</ul>';
                }
                $menu .= '</li>';
            }
        }

        if (! empty($commonMenu)) {
            $translate = Zend_Registry::get("translate");
            $menu .= '<li><a  class = "topic_group" href="#">' . $translate->_("Actions") . '</a>';
            $menu .= '<ul style="display: none;" class="subnav">';
            foreach ($commonMenu as $action) {
                $menu .= '<li><a href="' . $action['href'] . '">' . $action['name'] . '</a></li>';
            }
            $menu .= '</ul>';
            $menu .= '</li>';
        }
        
        $menu .= '</ul>';
        return $menu;
    }

    public function getGroupsAndTopicsOfUser($userId)
    {
        if ( (int) $userId == 0) {
            throw new VC_Exception("Invalid user information");
        }

        //TODO: Cache
        $topicGroupTbl = new VC_DbTable_Store_TopicGroup();
        $topicTbl = new VC_DbTable_Store_Topic();
        $allTopicGroupOfUser = $topicGroupTbl->findByUserId($userId);

        if ($allTopicGroupOfUser) {
            foreach ($allTopicGroupOfUser as $key => $topicGroup) {
                //Get all topic of group topic
                $allTopicGroupOfUser[$key]['topics'] = $topicTbl->findByTopicGroupId($topicGroup['id']);
                //if ($topicGroup['id'] == 2) var_dump($topicGroup['topics'] );
            }
        }
        return $allTopicGroupOfUser;
    }

    public function getMenuOfUser($userId)
    {
        $allTopicGroupOfUser = $this->getGroupsAndTopicsOfUser($userId);
        $commonMenuTbl = new VC_DbTable_Store_CommonMenu();
        $commonMenu = $commonMenuTbl->getAll();
        $menu = $this->menuGenerator($allTopicGroupOfUser, $commonMenu);
        return $menu;
    }

}
