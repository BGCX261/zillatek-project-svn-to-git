<?php

/*
 * WP_Log_Manage : Manage log message.
 *
 *
 */

class VC_Log_Manage
{

    private $project_id;
    private $project_name;
    private $recipient_email;
    private $send_email;
    private $dir_path;
    private $file_path;

    /**
     * Constructor method
     * This method read config file and set parameters
     */
    public function __construct($project_id)
    {
        if (!$project_id)
            exit("Invalid project ID");

        $this->project_id = $project_id;
        //Create or read logfile
        $this->createLogFile();

        //Load Zend config object
        $cf_ct = file_get_contents(realpath(realpath(dirname(__FILE__))) . '/config.xml');
        $xml = simplexml_load_string($cf_ct, 'SimpleXMLElement', LIBXML_NOCDATA);

        $config = $xml->{$project_id};
        unset($xml);

        if (isset($config->email))
            $this->recipient_email = $config->email;
        if (isset($config->project_name))
            $this->project_name = $config->project_name;
        if (isset($config->send_email))
            $this->send_email = $config->send_email;
    }

    private function createLogFile()
    {

        $file_path = ROOT_PATH . "/tmp/logs/" . $this->project_id;
        if (!is_dir($file_path)) {
            if (!mkdir($file_path))
                exit("Can not create log folder");
        }

        $this->dir_path = $file_path;

        $file_path .= "/log-" . date("Y-m-d") . ".log";

        $handle = fopen($file_path, "a");
        if (file_exists($file_path)) {
            $this->file_path = $file_path;
        }
        fclose($handle);
    }

    public function info($message, $extParam = array())
    {
        $this->writeLog($message, "INFO", false, $extParam);
    }

    public function error($message, $extParam = array())
    {
        $this->writeLog($message, "ERROR", true, $extParam);
    }

    public function warning($message, $extParam = array())
    {
        $this->writeLog($message, "WARN", true, $extParam);
    }

    /**
     * writeLog method
     * This function write log message into file
     * If Log file doesn't exists, it will be created
     * @param $msg_type: Type of message (fron Zend) such as:
     * 1. EMERG   = 0;  // Emergency: system is unusable
      2. ALERT   = 1;  // Alert: action must be taken immediately
      3. CRIT    = 2;  // Critical: critical conditions
      4. ERR     = 3;  // Error: error conditions
      5. WARN    = 4;  // Warning: warning conditions
      6. NOTICE  = 5;  // Notice: normal but significant condition
      7. INFO    = 6;  // Informational: informational messages
      8. DEBUG   = 7;  // Debug: debug messages
     * @param $message: Message string
     * @param $is_send_mail: Send mail to warn this message (error)
     * @param $ext_param: an Array with some indexs:
     *     file: message of file name
     *     line: message in Line of above file name
     *     user: User do this action
     */
    public function writeLog($message, $msg_type = "ERROR", $is_send_mail = FALSE, $ext_param = Array())
    {
        //$num_line = $lines = count(file($file));
        $msg_str = "[time: " . date("Y-m-d H:i:j") . "][type: {$msg_type}][msg: {$message}]";

        if (isset($ext_param['file']))
            $msg_str .= "[file: " . $ext_param['file'] . "]";
        if (isset($ext_param['line']))
            $msg_str .= "[line: " . $ext_param['line'] . "]";
        if (isset($ext_param['user']))
            $msg_str .= "[user: " . $ext_param['user'] . "]";
        if (isset($ext_param['ip']))
            $msg_str .= "[IP: " . $ext_param['ip'] . "]";
        if (isset($ext_param['act_type:']))
            $msg_str .= "[act_type: " . $ext_param['ac_type'] . "]";
        if (isset($ext_param['action:']))
            $msg_str .= "[action: " . $ext_param['action'] . "]";

        $msg_str .= "\n";

        $handle = fopen($this->file_path, "a");
        fwrite($handle, $msg_str);
        fclose($handle);

        //count(file($this->file_path));
        //echo "<pre>"; var_dump(file($this->file_path));


        if ($is_send_mail && $this->recipient_email) {
            $this->sendMail($message, $msg_type);
        }
    }

    private function sendMail($message, $msg_type = "ERROR")
    {
        include_once "Zend/Loader.php";
        Zend_Loader::loadClass("Zend_Mail");
        $mail = new Zend_Mail();
        $mail->setBodyText($message);
        $mail->setFrom($this->send_email);
        $mail->addTo($this->recipient_email);
        $mail->setSubject("A message type " . $msg_type . " from Log of " . $this->project_name);
        @$mail->send();
    }

    /**
      Search log line by condition.
      If one of condition does match, this line will be capture
      If suply keyword, we will search only by keyword.
      Else, if suply other condition, we will search by condition,
      Else, get all line of file.
     */
    public function searchLogInFile($file, $cond = Array())
    {
        $file_path = $this->dir_path . "/" . $file;

        if (isset($cond['f_date']))
            unset($cond['f_date']);
        if (isset($cond['to_date']))
            unset($cond['to_date']);

        if ($file && file_exists($file_path)) {
            preg_match("/^log-(.*)\.log$/", $file, $match);
            $res[$match[1]] = "";

            //Read each line and search
            $data = file($file_path);
            if (sizeof($data) > 0) {
                foreach ($data as $line_data) {
                    if ($cond) {
                        if (isset($cond['keyword']) && $cond['keyword']) {
                            if (strpos($line_data, $cond['keyword'])) {
                                $res[$match[1]] .= "<br/>" . $line_data;
                            }
                        } else {
                            $is_match = false;
                            foreach ($cond as $key => $val) {
                                preg_match("#\[" . $key . "(.*)" . $val . "#", $line_data, $sm);
                                if ($sm && sizeof($sm) > 0) {
                                    $is_match = true;
                                    break; //If have at least one condition match, we will get this line
                                }
                            }
                            if ($is_match) {
                                $res[$match[1]] .= "<br/>" . $line_data;
                            }
                        }
                    } else {
                        $res[$match[1]] .= "<br/>" . $line_data;
                    }
                }
            }
            return $res;
        }
        return Array();
    }

    /**
     * Read log file:
     * Search from date to date.
     * Search with
     * Enter description here ...
     * @param unknown_type $date
     */
    public function readLog($cond = Array())
    {

        $f_date = date("Y-m-d");
        if (isset($cond["f_date"]))
            $f_date = $cond["f_date"];

        //read all log file
        $dir = dir($this->dir_path);
        $list_log = Array();

        while (false !== ($entry = $dir->read())) {
            if (strlen($entry) > 5) {
                preg_match("/^log-(.*)\.log$/", $entry, $match);
                $to_date = (isset($cond['to_date'])) ? (strtotime($match[1]) <= strtotime($cond['to_date'])) : true;
                if (strtotime($match[1]) >= strtotime($f_date) && $to_date) {
                    //$list_log[] = $entry;
                    //Search log file line
                    $list_log[] = $this->searchLogInFile($entry, $cond);
                }
            }
        }
        echo "<pre>";
        var_dump($list_log);

        //Ok, now we will read file to compare with condition
    }

    private function getAllDirOfFolder($path)
    {
        $handle = opendir($path);
        $list_dir = Array();
        while (false !== ($file = readdir($handle))) {
            $file = (int) $file;
            if ($file > 0 && $file < 10)
                $file = "0" . $file;

            if ($file && is_dir($path . "/" . $file)) {
                $list_dir[] = $file;
            }
        }
        return $list_dir;
    }

    public function getAllLogDir()
    {
        
    }

}