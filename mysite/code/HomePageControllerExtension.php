<?php

class HomePageControllerExtension extends Extension {

	public function LatestEvent() {
		$calendar = Calendar::get()->first(); 
		$LatestDateEvent = $calendar->UpcomingEvents()->first(); 
		if ($LatestDateEvent) {
			$LatestEvent = $LatestDateEvent->Event();
			return $LatestEvent;
		}
	}
	
	public function Slides(){
    $slides = $this->RSSDisplay(5, 'http://api.flickr.com/services/feeds/photoset.gne?set=72157629255283264&nsid=9717880@N03&lang=en-us');

    foreach($slides as $slide){
      $slide->Description->setValue(str_replace("imubuddy posted a photo:", "", $slide->Description->getValue()));

    }

    return $slides;

  }

}