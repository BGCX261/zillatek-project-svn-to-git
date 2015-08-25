<?php

//include_once "OAuth.php";
//require_once ROOT_PATH . '/lib/Vendor/Google/common.inc.php';

/**
 * Description of Adapter
 *
 * @author Cuong Vu
 */
class BKH_Auth_GoogleAdapter implements Zend_Auth_Adapter_Interface
{

    protected $consumerKey = '';
    protected $consumerSecret = '';

    public function __construct($consumer = array())
    {
        if (!isset($consumer['key']) || !isset($consumer['secret'])) {
            throw new BKH_Exceptions_InvalidDataException("Invalid key or secret authentication");
        }
        $this->consumerKey = $consumer['key'];
        $this->consumerSecret = $consumer['secret'];
    }

    public function authenticate()
    {
        //$myGoogleInfo = $this->getUserInformation();
        $googleOpenId = new BKH_OpenID_Google();
        $myGoogleInfo = $googleOpenId->getUserProfile();

        if ($myGoogleInfo) {
            $xml = simplexml_load_string($myGoogleInfo, 'SimpleXMLElement', LIBXML_NOCDATA);
            unset($myGoogleInfo);
            //$xml = new SimpleXMLElement($content);
            if ($xml && isset($xml->id)
                    && isset($xml->author->name)
                    && isset($xml->author->email)) {

                $myGoogleInfo['name'] = (string) $xml->author->name;
                $myGoogleInfo['email'] = (string) $xml->author->email;
                $myGoogleInfo['id'] = (string) $xml->id;
                
                $identity = new stdClass();
                $identity->user_type = "google";
                //Check user exists in database.
                $googleTable = BKH_Db_TableAdapter_Locator::get("GoogleUser");
                $userTable = BKH_Db_TableAdapter_Locator::get("User");

                $userInfoInDb = $googleTable->findGoogleUserByGoogleId($myGoogleInfo['id']);

                if (!$userInfoInDb) { //If not exist in db
                    //Insert to DB
                    $insertUserData = array();
                    $insertUserData['display_name'] = $myGoogleInfo['name'];
                    $insertUserData['type'] = "google";
                    $newUserId = $userTable->insertUser($insertUserData);

                    if ($newUserId) {
                        //Insert user to Google Table
                        $insertUserFBData = array();
                        $insertUserFBData['id'] = $newUserId;
                        $insertUserFBData['google_id'] = $myGoogleInfo['id'];
                        //$insertUserFBData['display_name'] = $myGoogleInfo['name'];
                        $insertUserFBData['email'] = $myGoogleInfo['email'];
                        $newGoogleUserId = $googleTable->insertUser($insertUserFBData);

                        $biUserTable = new BKH_Db_TableAdapter_BI_BiUser();
                        $biUserTable->insertBiUser($newUserId);

                        if (!$newGoogleUserId) {
                            $log = BKH_Log::getLog();
                            $log->logMessage("Could not insert google user to USER table.", Zend_Log::ERR);
                        }

                        $identity->user_name = $myGoogleInfo['name'];
                        $identity->email = $myGoogleInfo['email'];
                        $identity->user_id = $newUserId;
                    } else {
                        $log = BKH_Log::getLog();
                        $log->logMessage("Could not insert google user to USER table.", Zend_Log::ERR);
                        throw new BKH_Exception("Could not insert Google user to database");
                    }
                } else {
                    //TODO: Update information to DB again
                    $identity->user_name = $myGoogleInfo['name'];
                    $identity->email = $myGoogleInfo['email'];
                    $identity->user_id = $userInfoInDb['id'];
                }
                return new Zend_Auth_Result(Zend_Auth_Result::SUCCESS, $identity, array());
            }
        }

        return new Zend_Auth_Result(Zend_Auth_Result::FAILURE, $this->consumerKey);
    }

}