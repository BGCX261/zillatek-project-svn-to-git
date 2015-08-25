<?php

class VC_Config
{
    /**
     * @var array
     */
    private static $config;

    /**
     * Load configuration
     * @param $files array
     * @param $configDir string
     * @param $cacheDir string
     * @param $environment string
     * @return array
     * @example
     *   $config = VC_Config::load(array('db', 'urls', 'agendize'));
     */
    public static function load($files, $configDir = null, $cacheDir = null, $environment = null)
    {
        if ($configDir == null) {
            if (isset($_SERVER['CONFIG_DIR'])) {
                $configDir = $_SERVER['CONFIG_DIR'];
            } elseif (defined('ROOT_PATH')) {
                $configDir = ROOT_PATH . '/configs';
            } else {
                $configDir = realpath(dirname(__FILE__) . '/../../../../config') ;
            }
        }

        if ($cacheDir == null) {
            if (isset($_SERVER['TMP_DIR'])) {
                $cacheDir = $_SERVER['TMP_DIR'] . '/cache';
            } elseif (defined('ROOT_PATH')) {
                $cacheDir = ROOT_PATH . '/tmp/cache';
            } else {
                $cacheDir = realpath(dirname(__FILE__) . '/../../../../tmp/cache') ;
            }
        }

        if ($environment == null) {
            if (isset($_SERVER['APPLICATION_ENV'])) {
                $environment = $_SERVER['APPLICATION_ENV'];
            } elseif (defined('APPLICATION_ENV')) {
                $environment = APPLICATION_ENV;
            } else {
                $environment = 'development';
            }
        }

        self::$config = self::loadConfig($files, $configDir, $cacheDir, $environment);
        return self::$config;
    }

    public static function loadConfig($configNames, $configDir, $cacheDir, $environment)
    {
        $cacheKey = md5(implode('|', $configNames) . '|' . $environment);
        $cacheFile = $cacheDir . '/' . $cacheKey . '.config.php';

        $configFiles = array();
        foreach ($configNames as $configName) {
            $configFiles[] = $configDir . '/' . $configName . '.ini';
        }
        foreach ($configNames as $configName) {
            $envConfigFile = $configDir . '/' . $configName . '.' . $environment . '.ini';
            if (is_file($envConfigFile)) {
                $configFiles[] = $envConfigFile;
            }
        }

        if (self::isCacheExpired($cacheFile, $configFiles)) {
            $config = self::loadConfigFiles($configFiles);
            // FIXME:
//            self::writeCacheFile($cacheFile, $config);
            return $config->toArray();
        } else {
            return include($cacheFile);
        }
    }

    public static function getConfig($index = null)
    {
        if ($index && isset(self::$config[$index])) {
            return self::$config[$index];
        }
        return self::$config;
    }

    private static function isCacheExpired($cacheFile, $configFiles)
    {
        // FIXME:
        return true;

        if (!file_exists($cacheFile))
            return true;

        $cachedTime = filemtime($cacheFile);
        foreach ($configFiles as $configFile) {
            if (filemtime($configFile) > $cachedTime)
                return true;
        }
        return false;
    }

    private static function loadConfigFiles($configFiles)
    {
        require_once 'Zend/Config/Ini.php';

        $mergedConfig = new Zend_Config(array(), true);
        
        foreach ($configFiles as $configFile) {
            $config = new Zend_Config_Ini($configFile);
            $mergedConfig->merge($config);
        }

        return $mergedConfig;
    }

    private static function writeCacheFile($cacheFile, $config)
    {
        require_once 'Zend/Config/Writer/Array.php';
        
        $writer = new Zend_Config_Writer_Array();
        $writer->write($cacheFile, $config);
    }
    
    static private $instance;
    
    /**
     * Singleton implementation
     * @return VC_Config
     */
    public static function getInstance()
    {
        if (!isset(self::$instance)) {
            self::$instance = new VC_Config();
        }

        return self::$instance;
    }
    
    public function __call($method, $params)
    {
        $result = preg_split('/([A-Z])/', $method, -1, PREG_SPLIT_DELIM_CAPTURE);
    	if (empty($result)) {
            throw new VC_Exceptions_AbstractException("Method not found $method");
    	}
    	
    	$indexs = array($result[0]);
        for ($index = 2; $index < count($result); $index = $index + 2) {
        	$indexs[] = strtolower($result[$index - 1] . $result[$index]);
        }

        $subConfig = self::$config;
        foreach ($indexs as $key) {
        	if (!is_array($subConfig)) {
        		continue;
        	}
        	$subConfig = $subConfig[$key];
        }
        return $subConfig;
    }
    
}
