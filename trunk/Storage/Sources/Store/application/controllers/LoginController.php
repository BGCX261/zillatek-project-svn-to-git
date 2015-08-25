<?php

class LoginController extends Store_Controller
{

    public function getForm()
    {
        return new Default_Form_Login(array(
            'action' => '/login/process',
            'method' => 'post',
        ));
    }

    public function preDispatch()
    {
        if (Zend_Auth::getInstance()->hasIdentity()) {
            if ('logout' != $this->getRequest()->getActionName()) {
                $this->_helper->redirector('index', 'index');
            }
        } else {
            if ('logout' == $this->getRequest()->getActionName()) {
                $this->_helper->redirector('index');
            }
        }
    }
    
    public function indexAction()
    {
        $messageArr = $this->_helper->flashMessenger->getMessages();
        $message = "";
        if (sizeof ($messageArr) > 0){
            $message = $messageArr[0];
        }
        $this->view->message = $message;
        $this->view->form = $this->getForm();
    }

    public function processAction()
    {
        $request = $this->getRequest();

        // Check if we have a POST request
        if (!$request->isPost()) {
            return $this->_helper->redirector('index');
        }

        // Get our form and validate it
        $form = $this->getForm();
        if (!$form->isValid($request->getPost())) {   // Invalid entries
            $this->view->form = $form;
            return $this->render('index'); // re-render the login form
        }

        $authAdapter = new VC_Auth_UserAdapter($form->getValues());
        $auth    = Zend_Auth::getInstance();
        $result  = $auth->authenticate($authAdapter);

        if (!$result || !$result->isValid()) {
            $userTbl = new VC_DbTable_User();
            //Get user information
            $userInfo = $userTbl->fetchRow("email = '" . addslashes($this->_getParam("username")). "'");
            var_dump($userInfo);
            if ($userInfo && $userInfo->is_active == 0) {
                $this->_helper->flashMessenger->addMessage("Account not be actived, please active it");
                $this->_redirect("user/active/?uid=". $userInfo->id);
            } else {
                $this->view->form = $form;
                $this->view->message = $this->translate->_("Invalid username or password");
                return $this->render('index'); // re-render the login form
            }
        }
        
        // We're authenticated! Redirect to the home page
        $this->_helper->redirector('index', 'index');
    }

    public function logoutAction()
    {
        Zend_Auth::getInstance()->clearIdentity();
        $this->_helper->redirector('index'); // back to login page
    }

}
