<?php



class CalendarEventExtension extends CalendarEvent {

   static $has_one = array(
        'MainImage' => 'Image',
    );
    
    public function getCMSFields() {
      $this->extend('updateCMSFields', $fields);
      return $fields;
     
    }


    public function updateCMSFields(FieldList $fields) {
    
      $fields->addFieldToTab("Root.Main", new UploadField('MainImage','Main Image'), 'Content');

    }



}