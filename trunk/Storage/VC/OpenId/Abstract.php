<?php

/**
 * Description of Abstract
 *
 * @author Vu Manh Cuong
 */
abstract class VC_OpenId_Abstract
{
    protected $configParams = array();
    //protected $guidKey = ''; // yahoo: xoauth_yahoo_guid
    
    public function  __construct($config) {
        $this->configParams = $config;
    }
   
    public function getConfig()
    {
        if (sizeof($this->configParams) == 0){
            throw new Exception("Invalid OpenID parameters");
        }

        return $this->configParams;
    }

    public function getRequestToken()
    {
        $oauthConsumer = new Zend_Oauth_Consumer($this->configParams);
        $token = $oauthConsumer->getRequestToken();
        $_SESSION['REQUEST_TOKEN'] = serialize($token);
        $oauthConsumer->redirect();
    }

    public function getAccessToken($responseParams)
    {
        if (!empty($responseParams) && isset($_SESSION['REQUEST_TOKEN'])) {
            $oauthConsumer = new Zend_Oauth_Consumer($this->configParams);
            $token = $oauthConsumer->getAccessToken(
                         $responseParams,
                         unserialize($_SESSION['REQUEST_TOKEN'])
                     );
            $_SESSION['ACCESS_TOKEN'] = serialize($token);
            $_SESSION['REQUEST_TOKEN'] = null;

            return true;
        } else {
            return false; //exit('Invalid callback request. Oops. Sorry.');
        }
    }

    public function getUserProfile()
    {
        $token = unserialize($_SESSION['ACCESS_TOKEN']);
        $guid = $token->getParam($this->configParams['guid_key']);
        /* @var $client Zend_Oauth_Client */
        $client = $token->getHttpClient($this->configParams);
        $client->setUri('http://social.yahooapis.com/v1/user/' . $guid . '/profile');
        $client->setParameterGet('format', 'json');
        $response = $client->request('GET');
        //$this->getResponse()->setHeader('Content-Type', 'text/xml');
        return $response->getBody();       
    }
}
