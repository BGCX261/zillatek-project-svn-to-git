<?php

class RegisterController extends Store_Controller
{
    
    public function getAuthAdapter(array $params)
    {
        $authAdapter = Zend_Registry::get('dbAdapters');
        $authAdapter->setTableName('user');
        $authAdapter->setIdentityColumn('username');
        $authAdapter->setCredentialColumn('password');
        $authAdapter->setIdentity($params['username']);
        $authAdapter->setCredential(sha1($params['password']));
        return $authAdapter;
    }

    public function indexAction()
    {

        $reg_success = false;
        $request = $this->getRequest();
        $form = new Default_Form_Register(array(
                    'action' => '/register/index',
                    'method' => 'post',
                ));


        $errors = Array();
        // Check if we have a POST request
        if ($request->isPost()) {
            $email = $request->getPost("email");
            $username = $email;
           
            $form_validate = $form->isValid($request->getPost());

            if ($form_validate) {

                $user_tbl = new VC_DbTable_User();
                $insertData = Array();
                $insertData['username'] = $username;
                $insertData['password_salt'] = VC_Utils_String::generateCode(6);
                $insertData['password'] = sha1($request->getPost("password") . $insertData['password_salt']);
                $insertData['email'] = $email;
                $insertData['fullname'] = $request->getPost("fullname");
                $insertData['role'] = "member";
                $insertData['created_date'] = date("Y-m-d");
                $guid = VC_Business_User::getUniqueGuid();
                $insertData['guid'] = $guid;
                $newUserId = $user_tbl->insert($insertData);

                //Send mail active
                $mailUser = new VC_Mail_User();
                $mailUser->sendMailActivation($email);
                
                $flashMessenger = $this->_helper->getHelper('FlashMessenger');
                $flashMessenger->addMessage($this->translate->_("Bạn đã đăng ký thành công, hãy kiểm tra email của bạn và kích hoạt tài khoản"));

                $this->_redirect("user/active/uid/{$newUserId}");
                //$this->_helper->redirector('active/uid/{$newUserId}', 'user');
            } else {
                //$uname_valid_obj->addErrorMessage("CUONG");
                //$form->getElement('password')->addErrorMessage('CUONGLIEU');
            }
        }
        $this->view->form = $form;
    }

    public function ajaxValidAction()
    {
        $this->_helper->viewRenderer->setNoRender();
        $this->_helper->getHelper('layout')->disableLayout();
        
        $form = new Default_Form_Register();
        $form->isValidPartial($_POST);
        $msg = $form->getMessages();
        header('Content-type: application/json');
        echo Zend_Json::encode($msg);
    }
    
}
