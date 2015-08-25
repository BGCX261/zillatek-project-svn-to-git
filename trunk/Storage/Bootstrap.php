<?php

class Bootstrap extends Zend_Application_Bootstrap_Bootstrap
{
    const TRANSLATE_CACHE_REGISTRY_KEY = "Zend_Cache-Translate";

    protected function _initAutoload()
    {
        $autoloader = new Zend_Application_Module_Autoloader(array(
                    'namespace' => 'Default_',
                    'basePath' => dirname(__FILE__),
                ));
              
        $autoLoader = $this->getApplication()->getAutoloader();
        $autoLoader->setFallbackAutoloader(true);
    }

    protected function _initResource()
    {
          $resourceLoader = new Zend_Loader_Autoloader_Resource(array(
              'basePath'  => APP_PATH,
              'namespace' => 'Default_',
          ));
          $resourceLoader->addResourceType('acl', 'acls/', 'Acl')
                         ->addResourceType('form', 'forms/', 'Form')
                         ->addResourceType('model', 'models/', 'Model');
     }

    protected function _initLayoutHelper()
    {
        $this->bootstrap('frontController');
        $layout = Zend_Controller_Action_HelperBroker::addHelper(
                        new VC_Helper_LayoutLoader());
    }
    
    protected function _initAuth()
    {
        $auth = Zend_Auth::getInstance();
        Zend_Registry::set('auth', $auth);

        $vc_acl = new VC_Acl($auth);

        $vc_auth = new VC_Auth($auth, $vc_acl);

        $front = Zend_Controller_Front::getInstance();
        $front->registerPlugin($vc_auth);
        $registry = Zend_Registry::getInstance();
        $registry->set("vc_auth", $vc_auth);
    }

    protected function _initDbProfiler()
    {
        $this->_bootstrap('db');

        /* @var $db Zend_Db_Adapter_Abstract */
        $db = $this->getResource('db');
        $db->setProfiler(new Zend_Db_Profiler_Firebug());
        $db->getProfiler()->setEnabled(true);

    }
    
    protected function _initLog()
    {
        $log = new VC_Log_Manage("storage");
        Zend_Registry::set('VCLog', $log);        
    }

    protected function _initLanguage()
    {
        $vc_lang = new VC_Lang();
        $front = Zend_Controller_Front::getInstance();
        $front->registerPlugin($vc_lang);
    }

    protected function _initCache()
    {
        $configs = $this->getApplication()->getOptions();
        if (!isset($configs['cache']) || !is_array($configs['cache']))
            return;

        foreach ($configs['cache'] as $cacheConfig) {
            $cache = Zend_Cache::factory($cacheConfig['frontend']['name'],
                    $cacheConfig['backend']['name'],
                    $cacheConfig['frontend'],
                    $cacheConfig['backend']);
            Zend_Registry::getInstance()->set($cacheConfig['registry_key'], $cache);
        }
    }

    protected function _initTranslateCache()
    {
        //$this->_bootstrap('cache');

        if (Zend_Registry::getInstance()->isRegistered(self::TRANSLATE_CACHE_REGISTRY_KEY)) {
            $translateCache = Zend_Registry::getInstance()->get(self::TRANSLATE_CACHE_REGISTRY_KEY);
            Zend_Translate::setCache($translateCache);
        }
    }
}