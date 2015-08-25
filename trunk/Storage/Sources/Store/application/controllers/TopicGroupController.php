<?php

class TopicGroupController extends Store_Controller
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
    }

    public function insertAction()
    {
        $this->_helper->viewRenderer->setNoRender();
        $this->_helper->getHelper('layout')->disableLayout();

        $message = "";
        if ($this->_getParam("submit")) {
            if ($this->_getParam("name")) {
                $topicGroupTbl = new VC_DbTable_Store_TopicGroup();
                $data = array();
                $data['user_id'] = $this->userId;
                $data['name'] = $this->_getParam("name");
                $topicGroupId = $topicGroupTbl->insert($data);
                $this->_helper->flashMessenger->addMessage(array('insert' => "Bạn đã nhập thành công."));
            } else {
                $this->_helper->flashMessenger->addMessage(array('insert' => "Bạn phải nhập tên của  nhóm chủ đề."));
            }
        }
        $this->_redirect("topic-group/index/");
    }

    public function editAction()
    {
        $this->_helper->viewRenderer->setNoRender();
        $this->_helper->getHelper('layout')->disableLayout();

        $topicGroupId = $this->_getParam("id");
        $topicName = $this->_getParam("name");

        $message = "";
        if ($topicGroupId && $topicName) {
            //Check belong this user
            $topicGroupTbl = new VC_DbTable_Store_TopicGroup();
            $getTopicGroup = $topicGroupTbl->fetchRow("id = " . $topicGroupId . " AND user_id = " . $this->userId);

            if ($getTopicGroup) {
                $data = array('name' => $topicName);
                $topicGroupTbl->update($data, "id = " . $topicGroupId);
                $this->_helper->flashMessenger->addMessage(array('manage' => "Bạn đã cập nhật thành công."));
            } else {
                $this->_helper->flashMessenger->addMessage(array('manage' => "Thông tin nhóm chủ đề không hợp lệ."));
            }
        } else {
            $this->_helper->flashMessenger->addMessage(array('manage' => "Thông tin nhóm chủ đề không hợp lệ."));
        }
        echo $topicName;

        //$this->_redirect("topic/index");
    }

    public function deleteAction()
    {
        $this->_helper->viewRenderer->setNoRender();
        $this->_helper->getHelper('layout')->disableLayout();
        $topicGroupId = $this->_getParam("id");
        $message = "";
        if ($topicGroupId) {
            //Check belong this user
            $topicGroupTbl = new VC_DbTable_Store_TopicGroup();
            $getTopic = $topicGroupTbl->fetchRow("id = " . $topicGroupId . " AND user_id = " . $this->userId);

            if ($getTopic) {
                $topicGroupTbl->delete("id = " . $topicGroupId);
                //Delete all topic of this
                $topicTbl = new VC_DbTable_Store_Topic();
                $topicTbl->deleteTopicByTopicGroup($topicGroupId);
                $this->_helper->flashMessenger->addMessage(array('manage' => "Bạn đã xóa thành công."));
            } else {
                $this->_helper->flashMessenger->addMessage(array('manage' => "Thông tin nhóm chủ đề không hợp lệ."));
            }
        } else {
            $this->_helper->flashMessenger->addMessage(array('manage' => "Thông tin nhóm chủ đề không hợp lệ."));
        }
        $this->_redirect("topic-group/index");
    }
}
