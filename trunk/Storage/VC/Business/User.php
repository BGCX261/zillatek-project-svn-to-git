<?php

/**
 * Description of User
 *
 * @author Vu Manh Cuong
 */
class VC_Business_User
{

    public function sendActivationCode($email)
    {
        if (!$email) {
            throw new VC_Exception("Email không hợp lệ, bạn hãy thử lại.");
        }
        $result = array();
        $userTbl = new VC_DbTable_User();
        $emailExist = $userTbl->fetchRow("email = '". addslashes($email) . "'");
        if (!$emailExist) {
            $result['status'] = "failed";
            $result['message'] = "Email bạn cung cấp không có trong hệ thống, hãy nhập lại";
            return $result;
        }

        //Send mail active
        $mailUser = new VC_Mail_User();
        $mailUser->sendMailActivation($email);
    }

    public static function getUniqueGuid()
    {
        $userTbl = new VC_DbTable_User();
        while ($guid = VC_Utils_String::generateCode(10)) {
            $isExist = $userTbl->fetchRow("guid = '" . $guid . "'");
            if (!$isExist) {
                break;
            }
        }
        return strtoupper($guid);
    }

}
