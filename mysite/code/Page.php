<?php
class Page extends SiteTree {

	private static $db = array(

	);

	private static $has_one = array(

	);

	private static $many_many = array(

	);

	private static $plural_name = "Pages";

}

class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array(
		'PollForm'
	);

	public function Polls(){
		return Poll::get();
	}

	public function IsInIowaCity(){

		print_r($_SERVER['REMOTE_ADDR']);
		// return FreeGeoipService::inIowaCity();
	}

	public function CurrentCity(){
		return FreeGeoipService::get_city();
	}

	public function init() {
		parent::init();
		// Session::clear_all();
		// Debug::show(Session::get_all());
		Requirements::block('framework/thirdparty/jquery/jquery.js');
		Requirements::block('event_calendar/javascript/calendar.js');

	}

}