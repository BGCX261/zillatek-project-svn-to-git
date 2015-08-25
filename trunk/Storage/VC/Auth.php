<?php

/*
 * Authorize class
 * Written by Manh Cuong
 */

class VC_Auth extends Zend_Controller_Plugin_Abstract
{

    private $_auth;
    private $_acl;
    private $_no_check_auth;
    private $_no_check_acl;
    private $_no_check_admin;

    public function __construct($auth, $acl)
    {
        $this->_auth = $auth;
        $this->_acl = $acl;
        $config = new Zend_Config_Xml(APP_PATH . '/configs/auth_config.xml');

        $no_auth = $config->noauth;
        $this->_no_check_auth = array('module' => $no_auth->module,
            'controller' => $no_auth->controller,
            'action' => $no_auth->action);

        $no_acl = $config->noacl;
        $this->_no_check_acl = array('module' => $no_acl->module,
            'controller' => $no_acl->controller,
            'action' => $no_acl->action);

        $noadmin = $config->noadmin;
        $this->_no_check_admin = array('module' => $noadmin->module,
            'controller' => $noadmin->controller,
            'action' => $noadmin->action);
    }

    public function preDispatch(Zend_Controller_Request_Abstract $request)
    {
        //Get module user accessing
        $req_resource = $request->module;

        if ($this->_auth->hasIdentity()) {
            $role = $this->_auth->getIdentity()->role;
        } else {
            $role = 'guest';
        }

        //Get controller, action, module user accessing
        $controller = $request->controller;
        $action = $request->action;
        $module = $request->module;
        $resource = $module; //Set resource is module, because in ACL, I set resource is module

        if (!$this->_acl->has($resource)) { //If resource is not set in ACL
            $resource = null;
        }

        if (!$this->_acl->isAllowed($role, $resource, $action)) {//If user not have access
            if (!$this->_auth->hasIdentity()) { //and not login
                if ($req_resource == 'admin') { //If he try to access to admin area
                    //set no check admin area
                    $module = $this->_no_check_admin['module'];
                    $controller = $this->_no_check_admin['controller'];
                    $action = $this->_no_check_admin['action'];
                } else {
                    $module = $this->_no_check_auth['module'];
                    $controller = $this->_no_check_auth['controller'];
                    $action = $this->_no_check_auth['action'];
                }
            } else {
                $module = $this->_no_check_acl['module'];
                $controller = $this->_no_check_acl['controller'];
                $action = $this->_no_check_acl['action'];
            }
        }

        //@$view->assign("username_label",$this->_auth->getIdentity()->username);
        //Force user access coresponding area
        $request->setModuleName($module);
        $request->setControllerName($controller);
        $request->setActionName($action);
    }

}