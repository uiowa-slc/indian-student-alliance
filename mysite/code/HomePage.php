<?php
class HomePage extends Page {

	public static $db = array(

	);

	public static $has_one = array(

	);

	public static $has_many = array(
	);

	public function getCMSFields(){
		$f = parent::getCMSFields();
		$f->removeByName("Content");
		$f->removeByName("InheritSidebarItems");
		$f->removeByName("SidebarLabel");
		$f->removeByName("SidebarItem");

		$gridFieldConfig = GridFieldConfig_RecordEditor::create();
		$gridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder'));

    $gridFieldConfig2 = GridFieldConfig_RecordEditor::create();
		$gridFieldConfig2->addComponent(new GridFieldSortableRows('SortOrder'));
    /* Remove  some abilities if you aren't an admin. */
    if(!Permission::check('ADMIN')){
      $gridFieldConfig->removeComponentsByType('GridFieldAddNewButton');
      $gridFieldConfig->removeComponentsByType('GridFieldDeleteAction');

    }

    $gridField = new GridField("HomePageHeroFeature", "Home Page Hero Features (Only the first two are shown)", HomePageHeroFeature::get(), $gridFieldConfig);
  	$gridField2 = new GridField("HomePageFeature", "Home Page Features (Only the first three are shown)", HomePageFeature::get(), $gridFieldConfig2);

		$f->addFieldToTab("Root.Main", $gridField); // add the grid field to a tab in the CMS	*/
    $f->addFieldToTab("Root.Main", $gridField2); // add the grid field to a tab in the CMS	*/
		return $f;
	}
}
class HomePage_Controller extends Page_Controller {

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
	public static $allowed_actions = array (
	);

	public function init() {
		parent::init();

	}
	
	public function LatestEvent() {
		$calendar = Calendar::get()->first(); 
		$LatestDateEvent = $calendar->UpcomingEvents()->first(); 
		if ($LatestDateEvent) {
			$LatestEvent = $LatestDateEvent->Event();
			return $LatestEvent;
		}
	}
	
	public function HomePageFeatures() {
		$features = HomePageFeature::get();

		return $features;

	}

	public function HomePageHeroFeatures() {
		$features = HomePageHeroFeature::get();

		return $features;

	}
	public function Slides(){
    $slides = $this->RSSDisplay(5, 'http://api.flickr.com/services/feeds/photoset.gne?set=72157629255283264&nsid=9717880@N03&lang=en-us');

    foreach($slides as $slide){
      $slide->Description->setValue(str_replace("imubuddy posted a photo:", "", $slide->Description->getValue()));

    }

    return $slides;


  }

}