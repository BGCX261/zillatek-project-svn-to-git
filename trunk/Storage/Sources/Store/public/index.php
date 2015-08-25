<?php
$base_url = ((isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] == "on") ? "https" : "http");
$base_url .= "://".$_SERVER['HTTP_HOST'];
$base_url .= (($_SERVER['SERVER_PORT']!=80) ? ":".$_SERVER['SERVER_PORT'] : "");
$base_url .= str_replace(basename($_SERVER['SCRIPT_NAME']),"",$_SERVER['SCRIPT_NAME']);
define("BASE_URL", $base_url);

require_once dirname(__FILE__) . '/../application/application.php';

// Run
$application->run();

