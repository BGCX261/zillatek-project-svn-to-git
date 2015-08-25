<?php
class VC_Form extends Zend_Form
{
	public $elementDecorators = array(
        'ViewHelper',
        //'Errors', //Neu de thi se show error ra sau moi element
		array(array('data' => 'HtmlTag'), array('tag' => 'div', 'class' => 'element')),
		array('Label', array('tag' => 'div')),
		array(array('row' => 'HtmlTag'), array('tag' => 'div')),
		array('Description', array('tag'  => 'p', 'class' => 'description')),
	);

	public $buttonDecorators = array(
        'ViewHelper',
		array(array('data' => 'HtmlTag'), array('tag' => 'div', 'class' => 'element')),
		array(array('label' => 'HtmlTag'), array('tag' => 'div', 'placement' => 'prepend')),
		array(array('row' => 'HtmlTag'), array('tag' => 'div')),
	);
	
	public $translate;
	
    public function __construct()
    {
    	$this->translate = Zend_Registry::get('translate');
    	parent::__construct();
    } 
    
	public function loadDefaultDecorators()
	{
		$this->setDecorators(array(
            'FormElements',
			array('HtmlTag', array('tag' => 'div', 'class'=>'element_form')),
            'Form',
		));
	}
}
?>