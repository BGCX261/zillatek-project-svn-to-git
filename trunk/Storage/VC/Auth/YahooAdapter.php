<?php
/**
 * Description of BKH_Auth_YahooAdapter
 *
 * @author Cuong Vu
 */
class BKH_Auth_YahooAdapter implements Zend_Auth_Adapter_Interface
{

    protected $consumerKey = '';
    protected $consumerSecret = '';

    public function __construct()
    {
        $consumer = BKH_Config::getConfig();
        if (!isset($consumer['yahoo']['app']['apikey'])
                || !isset($consumer['yahoo']['app']['secretkey'])) {
            throw new BKH_Exceptions_InvalidDataException("Invalid Yahoo key or secret authentication");
        }
        $this->consumerKey = $consumer['yahoo']['app']['apikey'];
        $this->consumerSecret = $consumer['yahoo']['app']['secretkey'];
    }

    public function authenticate()
    {
        $yahooOpenId = new BKH_OpenID_Yahoo();
        $myYahooInfo = json_decode($yahooOpenId->getUserProfile(), true);
       
        if ($myYahooInfo && isset($myYahooInfo['profile'])) {
            $myYahooProfile = $myYahooInfo['profile'];
            //var_dump($myYahooProfile); die;
            
            $identity = new stdClass();
            $identity->user_type = "yahoo";

            //Check user exists in database.
            $yahooTable = BKH_Db_TableAdapter_Locator::get("YahooUser");
            $userTable = BKH_Db_TableAdapter_Locator::get("User");
            $email = "";
            if (isset( $myYahooProfile->emails[1])){
                $email = $myYahooProfile['emails'][1]['handle'];
            }else{
                $email = $myYahooProfile['emails'][0]['handle'];
            }

            $userInfoInDb = $yahooTable->findYahooUserByYahooId($myYahooProfile['guid']);

            if (!$userInfoInDb) { //If not exist in db
                //Insert to DB
                $insertUserData = array();
                $insertUserData['display_name'] =  $myYahooProfile['nickname'];
                $insertUserData['type'] = "yahoo";
                $newUserId = $userTable->insertUser($insertUserData);
                
                if ($newUserId) {
                    //Insert user to Yahoo Table
                    $insertUserFBData = array();
                    $insertUserFBData['id'] = $newUserId;
                    $insertUserFBData['yahoo_id'] = $myYahooProfile['guid'];
                    //$insertUserFBData['display_name'] = $myYahooProfile['nickname'];
                    $insertUserFBData['email'] = $email;
                    
                    $newYahooUserId = $yahooTable->insertUser($insertUserFBData);

                    $biUserTable = new BKH_Db_TableAdapter_BI_BiUser();
                    $biUserTable->insertBiUser($newUserId);
                    if (!$newYahooUserId) {
                        $log = BKH_Log::getLog();
                        $log->logMessage("Could not insert yahoo user to USER table.", Zend_Log::ERR);
                    }

                    $identity->user_name = $myYahooProfile['nickname'];
                    $identity->email = $email;
                    $identity->user_id = $newUserId;
                } else {
                    $log = BKH_Log::getLog();
                    $log->logMessage("Could not insert yahoo user to USER table.", Zend_Log::ERR);
                    throw new BKH_Exception("Could not insert Yahoo user to database");
                }
            } else {
                //TODO: Update information to DB again
                $identity->user_name = $myYahooProfile['nickname'];
                $identity->email = $email;
                $identity->user_id = $myYahooProfile['guid'];
            }
            
            return new Zend_Auth_Result(Zend_Auth_Result::SUCCESS, $identity, array());
        }else{
            throw new BKH_Exception("Could not retrive your information, please check again");
        }

        return new Zend_Auth_Result(Zend_Auth_Result::FAILURE, $this->consumerKey);
    }
}