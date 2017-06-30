<?php
class BoardHolder extends StaffHolderPage {

	private static $db = array(
	);
	private static $has_one = array(
		'CurrentBoard' => 'StaffHolderPage'
	);
	private static $allowed_children = array('StaffHolderPage');

	public function getCMSFields(){
		$f = parent::getCMSFields();
		$f->removeByName('Teams');
		$f->removeByName('StaffTeam');
		$f->addFieldToTab('Root.Main', DropdownField::create('CurrentBoardID', 'Choose the currently featured board:', StaffHolderPage::get()->filter(array('ClassName' => 'StaffHolderPage'))->map('ID','Title')), 'Content');

		return $f;

	}
	
	
}
	
class MeetingHolder_Controller extends StaffHolderPage_Controller {

}

?>