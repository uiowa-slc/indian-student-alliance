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
		//Check known IP ranges
		//ATTWIFI:
		//64.134.*
		// Campus East of the Iowa River:
		// 172.17.0.0/17 (172.17.0.1 – 172.17.127.254)
		// 172.23.0.0/17 (172.23.0.1 - 172.23.127.254)

		// Campus West of the Iowa River and the Research Park:
		// 172.17.128.0/17 (172.17.128.1 – 172.17.255.254)
		// 172.23.128.0/17 (172.23.128.1 - 172.23.255.254)		

		// Public IP addresses:  Globally (or Internet) routable IP addresses are assigned by the Internet Address Numbering Authority (IANA). IP address ranges registered by the University of Iowa include:

		// 128.255.0.0 – 128.255.255.255
		// 129.255.0.0 – 129.255.255.255
		$ipChecks = array(
			'172.17.',
			'172.23.',
			'172.17.128.',
			'172.17.128.',
			'64.134.',
			'128.255.',
			'129.255.'
		);

		$userIp = $_SERVER['REMOTE_ADDR'];

		foreach($ipChecks as $ipCheck){
			if (strncmp($userIp, $ipCheck, strlen($ipCheck)) === 0){
				print_r($ipCheck.' was matched.');
				return true;
			}
		}

		return FreeGeoipService::inIowaCity();


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