<?php

class UserController extends Store_Controller
{

    public function logoutAction()
    {
        Zend_Auth::getInstance()->clearIdentity();
        $this->_helper->redirector('index'); // back to login page
    }

    public function indexAction()
    {

    }

    public function activeAction()
    {
        $message = "";
        $valid = false;
        
        $activeCode = $this->_getParam('code');
        if ($activeCode) {
            $userTbl = new VC_DbTable_User();
            //Get user information
            $userInfo = $userTbl->fetchRow("guid = '" . $activeCode. "'");
            if ($userInfo) {
                if ($userInfo->is_active == 0) {
                    $where = "guid = '" . $activeCode . "'";
                    $status = $userTbl->update(array('is_active' => 1), $where);
                    if ($status) {
                        $message = "Bạn đã kích hoạt tài khoản thành công, hãy đăng nhập để sử dụng hệ thống.";
                        $this->_helper->flashMessenger->addMessage($message);
                        $this->_redirect("/login/index");
                    } else {

                    }
                } else {
                    $message = "Tài khoản này đã được kích hoạt trước đó rồi";
                }
            } else {
                $message = "Tài khoản này không tồn tại trong hệ thống,";
                $message .= "<br/>Hãy liên lạc với ban quản trị để xử lý vấn đề này.";
            }
        } else {
            $message = "Thông tin kích hoạt không hợp lệ.";
        }
        
        $messageArr = $this->_helper->flashMessenger->getMessages();
        if (sizeof($messageArr) > 0) {
            $message = $messageArr[0];
        }
        $this->view->valid = $valid;
        $this->view->message = $message;
    }

    public function resendActiveAction()
    {
        $email = $this->_getParam('email');
        if ($email) {
            $userBiz = new VC_Business_User();
            $result = $userBiz->sendActivationCode($email);
            
            if ($result['status'] == 'failed') {
                $this->view->message = $result['message'];
                $this->view->openResend = true;
                return $this->render('active');
            }
        } else {
            $this->_redirect("user/active/uid/");
        }
    }
}