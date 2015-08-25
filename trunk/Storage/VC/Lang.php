<?php

class VC_Lang extends Zend_Controller_Plugin_Abstract {

    public function preDispatch(Zend_Controller_Request_Abstract $request)
    {
       
        //set lang var to session
        $nsLang = new Zend_Session_Namespace("Language");
        $lang = "vi";

        if ($request->getParam("lang") != "") {
            $lang = $request->getParam("lang");
        } else {
            if ($nsLang->language != "") {
                $lang = $nsLang->language;
            }
        }

        $nsLang->language = $lang; //Set back to session
        $options = array(
            'disableNotices' => true,
            'logUntranslated' => false
        );

        $commonLang = new Zend_Translate("tmx", APP_PATH . "/languages/common.tmx", $lang, $options);

        $controller = $request->getControllerName();
        $langPath = APP_PATH . "/languages/" . $controller .".tmx";
        
        if (file_exists($langPath)) {
            $commonLang->addTranslation($langPath, $lang);
        }
        $registry = Zend_Registry::getInstance();
        $registry->set("translate", $commonLang);
        return $lang;
    }

    public static function loadLang($langFiles)
    {
        $langFiles = array($langFiles);
        if (sizeof($langFiles) > 0) {
            $nsLang = new Zend_Session_Namespace("Language");
            $lang = $nsLang->language;
            $translate = Zend_Registry::get("translate");
            $languagePath = APP_PATH . "/languages";
            foreach ($langFiles as $file) {
                $langLoadFile = $languagePath . "/" . $file .".tmx";
                if (file_exists($langLoadFile)) {
                    $translate->addTranslation($langLoadFile, $lang);
                }
            }
            $registry = Zend_Registry::getInstance();
            $registry->set("translate", $translate);
            return $translate;
        }
        die("Could not load language file");
    }
}
