<?php
class VC_Acl extends Zend_Acl
{
	public function __construct(Zend_Auth $auth)
	{
		//Read ACL config file (acl_config.xml)
		$config = new Zend_Config_Xml(APP_PATH.'/configs/acl_config.xml');
		$all_res = $config->resources->resource;
		foreach($all_res as $res ) {
			//echo "<pre>"; var_dump($res);
			$this->add(new Zend_Acl_Resource($res));
		}

		//Get roles
		$all_role = $config->roles->role;
		foreach($all_role as $role ) {
			//echo "<pre>"; var_dump($role);
			if($role->inherit)
			$this->addRole(new Zend_Acl_Role($role->name), $role->inherit);
			else
			$this->addRole(new Zend_Acl_Role($role->name));
		}

		// Guest may only view content
		$all_role_res = $config->allow_access->role_resource;
		$count = 0;
		foreach($all_role_res as $role_res ) {
			$this->allow($role_res->role, $role_res->resource);
			$count++;
		}
	}
}