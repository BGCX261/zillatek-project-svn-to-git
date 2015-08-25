<?php

class TopicController extends Store_Controller
{

    public function indexAction()
    {        
        $this->view->data = $this->_getAllParams();
        $topicGroupTbl = new VC_DbTable_Store_TopicGroup();
        $this->view->topicGroup = $topicGroupTbl->fetchAll("user_id = " . $this->userId);
        $message = $this->_helper->flashMessenger->getMessages();
        if ($message) {
            $this->view->message = $message[0];
        }
        $menuObj = new VC_Business_MenuFactory();
        $groupAndTopic = $menuObj->getGroupsAndTopicsOfUser($this->userId);
        //echo "<pre>"; var_dump($groupAndTopic); echo "</pre>"; die;
        $this->view->groupAndTopic = $groupAndTopic;
    }

    public function insertAction()
    {

        if ($this->_getParam("submit")) {
            if ($this->_getParam("name")) {
                $topicTbl = new VC_DbTable_Store_Topic();
                $data = array();
                $data['user_id'] = $this->userId;
                $data['name'] = $this->_getParam("name");
                $data['topic_group_id'] = $this->_getParam("topic_group_id");
                $topicId = $topicTbl->insert($data);
                $this->_helper->flashMessenger->addMessage(array('insert' => "Bạn đã nhập thành công."));
            } else {
                $this->_helper->flashMessenger->addMessage(array('insert' => "Bạn phải nhập tên của chủ đề."));
            }
        }
        $this->_redirect("topic/index");
    }

    public function deleteAction()
    {
        $this->_helper->viewRenderer->setNoRender();
        $this->_helper->getHelper('layout')->disableLayout();
        $topicId = $this->_getParam("id");
        $message = "";
        if ($topicId) {
            //Check belong this user
            $topicTbl = new VC_DbTable_Store_Topic();
            $getTopic = $topicTbl->fetchRow("id = " . $topicId . " AND user_id = " . $this->userId);

            if ($getTopic) {
                $topicTbl->deleteByTopicId($topicId);
                $this->_helper->flashMessenger->addMessage(array('manage' => "Bạn đã xóa thành công."));
            } else {
                $this->_helper->flashMessenger->addMessage(array('manage' => "Thông tin chủ đề không hợp lệ."));
            }
        } else {
            $this->_helper->flashMessenger->addMessage(array('manage' => "Thông tin chủ đề không hợp lệ."));
        }
        $this->_redirect("topic/index");
    }

    public function editAction()
    {
        $this->_helper->viewRenderer->setNoRender();
        $this->_helper->getHelper('layout')->disableLayout();
        
        $topicId = $this->_getParam("id");
        $topicName = $this->_getParam("name");
        
        $message = "";
        if ($topicId && $topicName) {
            //Check belong this user
            $topicTbl = new VC_DbTable_Store_Topic();
            $getTopic = $topicTbl->fetchRow("id = " . $topicId . " AND user_id = " . $this->userId);

            if ($getTopic) {
                $data = array('name' => $topicName);
                $topicTbl->update($data, "id = " . $topicId);
                $this->_helper->flashMessenger->addMessage(array('manage' => "Bạn đã cập nhật thành công."));
            } else {
                $this->_helper->flashMessenger->addMessage(array('manage' => "Thông tin chủ đề không hợp lệ."));
            }
        } else {
            $this->_helper->flashMessenger->addMessage(array('manage' => "Thông tin chủ đề không hợp lệ."));
        }
        echo $topicName;
        
        //$this->_redirect("topic/index");
    }

}
