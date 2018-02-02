<?php

class PollPage extends Page {

	private static $has_one = array(
		'MainImage' => 'Image',
		'Poll' => 'Poll'
	);

	private static $allowed_children = false;


	public function getCMSFields(){
		$f = parent::getCMSFields();
		$f->removeByName('BackgroundImage');
		$f->addFieldToTab('Root.Main', UploadField::create('MainImage', 'Main logo image'), 'Content');
		$f->addFieldToTab('Root.Main',
			DropdownField::create('PollID', singleton('Poll')->i18n_singular_name(), Poll::get()->map())->setEmptyString('(No poll selected)'),
			'Content'
		);

		$f->addFieldToTab('Root.Main', LiteralField::create('PollsAdminLink', '<a href="admin/polls" target="_blank">Manage polls here &rarr;</a><br />'), 'Content');
		$f->addFieldToTab('Root.Main', LiteralField::create('PollResultsLink', '<a href="'.$this->Link('pollresults').'" target="_blank">View poll results &rarr;</a>'), 'Content');
		return $f;

	}
}

class PollPage_Controller extends Page_Controller {
	private static $allowed_actions = array(
		'pollresults'
	);

	private static $url_handlers = array(
		'pollresults' => 'pollResults'
	);

	public function pollResults(){
		if( ! Member::currentUserID() ) {
			return Security::permissionFailure($this);
		}
		$poll = $this->obj('Poll');
		$results = $poll->getResults();
		$data = new ArrayData(array('Results' => $results));
		return $this->customise($data)->renderWith(array('PollPage_results'));
	}
}