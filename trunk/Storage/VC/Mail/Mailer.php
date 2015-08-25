<?php

/**
 * Description of Mailer
 *
 * @author Vu Manh Cuong
 */
abstract class VC_Mail_Mailer extends Zend_Mail
{

    //private static $initialized;
    protected $assigns = array();
    protected $scriptPath = null;

    public function __construct()
    {
        /*if (!self::$initialized) {
            $mailConfig = VC_Config::getConfig('mail');
            //var_dump($mailConfig); die;
            $host = $mailConfig['server'];
            unset($mailConfig['server']);
            $transport = new Zend_Mail_Transport_Smtp($host, $mailConfig);
            Zend_Mail::setDefaultTransport($transport);
            self::$initialized = true;
        }*/
        parent::__construct("utf-8");
    }

    protected function render($mailName)
    {
        $view = new Zend_View();
        if (!$this->scriptPath) {
            $this->scriptPath = ROOT_PATH . "/templates/mail";
        }
        $view->setBasePath($this->scriptPath);
        $view->assign($this->assigns);

        return $view->render( $mailName . ".phtml");
    }

    protected final function assign($name, $value)
    {
        $this->assigns[$name] = $value;
    }

    public function sendMail($mailName)
    {
        $html = $this->render($mailName);        
        $this->setBodyHtml($html);
        $this->send();
    }
}
