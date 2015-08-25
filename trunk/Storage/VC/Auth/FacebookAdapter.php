<?php
require_once ROOT_PATH . '/lib/vendor/Facebook/facebook.php';
/**
 * Description of Adapter
 *
 * @author Cuong Vu
 */
class VC_Auth_FacebookAdapter implements Zend_Auth_Adapter_Interface
{
    protected $consumerKey = '';
    protected $consumerSecret = '';
    
    public function __construct($consumer = array())
    {
        if (! isset ($consumer['key']) || ! isset($consumer['secret'])){
            throw new VC_Exception("Invalid key or secret authentication");
        }
        $this->consumerKey = $consumer['key'];
        $this->consumerSecret = $consumer['secret'];
    }

    public function authenticate()
    {
         $facebook = new Facebook(array(
          'appId'  =>  $this->consumerKey,
          'secret' =>  $this->consumerSecret,
          'cookie' => true,
        ));

        $session = $facebook->getSession();

        if($session){
            $myFacebookInfo = $facebook->api('/me');
            if($myFacebookInfo && isset ($myFacebookInfo['id'])){

                $identity = new stdClass();
                $identity->user_type = "facebook";
                //Check user exists in database.
                $facebookTable = VC_Db_TableAdapter_Locator::get("FacebookUser");
                $userTable = VC_Db_TableAdapter_Locator::get("User");

                $userInfoInDb = $facebookTable->findFacebookUserByFacebookId($myFacebookInfo['id']);

                if(! $userInfoInDb){ //If not exist in db
                    
                    //Insert to DB
                    $insertUserData = array();
                    $insertUserData['display_name'] = $myFacebookInfo['name'];
                    $insertUserData['type'] = "facebook";
                    $newUserId = $userTable->insertUser($insertUserData);

                    if ($newUserId){
                        //Insert user to Facebook Table
                        $insertUserFBData = array();
                        $insertUserFBData['id'] = $newUserId;
                        $insertUserFBData['facebook_id'] = $myFacebookInfo['id'];
                        //$insertUserFBData['display_name'] = $myFacebookInfo['name'];
                        $insertUserFBData['email'] = $myFacebookInfo['email'];
                        $newFacebookUserId = $facebookTable->insertUser($insertUserFBData);

                        $biUserTable = new VC_Db_TableAdapter_BI_BiUser();
                        $biUserTable->insertBiUser($newUserId);

                        if(! $newFacebookUserId){
                            $log = VC_Log::getLog();
                            $log->logMessage("Could not insert facebook user to USER table.", Zend_Log::ERR);
                        }
                        
                        $identity->user_name = $myFacebookInfo['name'];
                        $identity->email = $myFacebookInfo['email'];
                        $identity->user_id = $newUserId;
                        
                    }else{
                        $log = VC_Log::getLog();
                        $log->logMessage("Could not insert facebook user to USER table.", Zend_Log::ERR);
                        throw new VC_Exception("Could not insert Facebook user to database");
                    }
                }else{
                    //TODO: Update information to DB again
                    $identity->user_name = $myFacebookInfo['name'];
                    $identity->email = $myFacebookInfo['email'];
                    $identity->user_id = $userInfoInDb['id'];
                }
                return new Zend_Auth_Result(Zend_Auth_Result::SUCCESS, $identity, array());
            }
        }
        
        return new Zend_Auth_Result(Zend_Auth_Result::FAILURE, $this->consumerKey);
    }
}