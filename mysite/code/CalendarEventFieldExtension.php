<?php

class CalendarEventFieldExtension extends DataExtension {

  private static $db = array(
        'EventLocation' => 'Text'
    );
 static $has_one = array(
        'MainImage' => 'Image',
        'Image' => 'Image',
       
    );
    
    public function getCMSFields() {
      $this->extend('updateCMSFields', $fields);
      return $fields;
     
    }


    public function updateCMSFields(FieldList $fields) {
      $fields->addFieldToTab("Root.Main", new TextField('EventLocation', 'Event Location'), 'Content');
      $fields->addFieldToTab("Root.Main", new UploadField('MainImage','Main Image'), 'Content');


    }

}
