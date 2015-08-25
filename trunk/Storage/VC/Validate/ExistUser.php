<?php
class VC_Validate_ExistUser extends Zend_Validate_Abstract
{
	const EXIST = 'exist';
	protected $_messageTemplates = array();

	public function isValid($value)
	{
		$translate = Zend_Registry::get('translate');
		$this->_messageTemplates[self::EXIST ] =  $translate->_('This email really exist, please choose another');
		
		$value = (string) $value;
		
		$user_tbl = new VC_DbTable_User();
		$row = $user_tbl->fetchRow($user_tbl->select("id")->where("email = ?", $value));
		
		if ($row && sizeof($row)) { //really exist
			$this->_error(self::EXIST);
			return false;
		}
		
		return true;
	}
}
?>