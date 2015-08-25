<?php

/**
 * Description of User
 *
 * @author Vu Manh Cuong
 */
class VC_Mail_User extends VC_Mail_Mailer
{

    private $siteName = "";
    private $siteLink = "";

    public function  __construct()
    {
        parent::__construct();
        $this->siteName = VC_Config::getInstance()->vcSiteName();
        $this->siteLink = VC_Config::getInstance()->vcSiteLink();
    }

    public function mailPrepare($userMail)
    {
        $result = array();
        //Get user informaton
        $userTbl = new VC_DbTable_User();
        $userInfo = $userTbl->fetchRow("email = '" . addslashes($userMail) ."'");

        if ($userInfo) {
            $config = VC_Config::getConfig();
            $fromMail = "contact@xinhmoingay.com";
            $fromName = "Storage Administrator";
            if (isset($config['mail']['from_email'])) {
                $fromMail = $config['mail']['from_email'];
                $fromName = $config['mail']['from_name'];
            } else {
                $log = Zend_Registry::get("VCLog");
                $log->error("Could not read from email at " . __FILE__);
            }

            $this->setFrom($fromMail, $fromName);
            $this->addTo($userInfo->email, $userInfo->fullname);

            $this->assign('full_name', $userInfo->fullname);
            $this->assign("site_name", $this->siteName);
            $this->assign("site_link", $this->siteLink);
            
            $result['status'] = "ok";
            $result['user_info'] = $userInfo;
        } else {
            $result['status'] = "failed";
            $result['message'] = "Email không tồn tại trong hệ thống, bạn hãy nhập lại.";
        }

        return $result;
    }

    public function sendMailActivation($userMail)
    {
        $result = $this->mailPrepare($userMail);
        if ($result['status'] == "ok") {
            $userInfo = $result['user_info'];
            $this->setSubject('Kích hoạt tài khoản');
            $this->assign("active_link", VC_Config::getInstance()->vcBaseurlsUser() . "/user/active/?code=" . $userInfo->guid);

            $this->sendMail("account_activation");
        }
        return $result;
    }

    public function sendResetPasswordMail($userEmail)
    {
        $result = $this->mailPrepare($userId);
        if ($result['status'] == "ok") {
            $userInfo = $result['user_info'];
            $this->setSubject('Quên mật khẩu đăng nhập');
            $resetLink = VC_Config::getInstance()->vcBaseurlsUser() . "/user/reset-password/?code=" . $userInfo->guid;
            $this->assign("reset_password_link", $resetLink);

            $newPassword = VC_Utils_String::generateCode(6);
            $userInfo->password_tmp = $newPassword;
            $userInfo->save();
            
            $this->assign('new_password', $newPassword);
            unset($result['user_info']);
            unset($userInfo);
            $this->sendMail("password_reset");
        }

        return $result;
    }
}
