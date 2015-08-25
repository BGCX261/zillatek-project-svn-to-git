<?php
include "Manage.php";

$mn = new WP_Log_Manage("test");
$exp = Array(
	"line"=>133,
	"file"=>"abc.php",
	"user"=>"cuong",
	"act_type"=>"Account",
	"action" => "register",
	"ip" => "192.168.0.1",
	
);
$mn->writeLog("An error occur........", "ERROR", False, $exp);
$mn->readLog(Array("f_date" => "2010-07-12", "to_date" => "2010-07-15", "user" => "cuong", "msg"=>"occur"));
preg_match("#user(.*)cuong#", "[time: 2010-07-13 21:37:13][type: ERROR][msg: An error occur........][file: abc.php][line: 133][user: cuong][IP: 192.168.0.1]", $sm);
