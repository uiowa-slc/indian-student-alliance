<?php



class CalendarEventExtension extends DataExtension {

    static $has_one = array(
        'Image' => 'Image',
    );
    
    public function getCMSFields() {
      $this->extend('updateCMSFields', $fields);
      
      return $fields;
      
    }


    public function updateCMSFields(FieldList $fields) {
    
      $fields->addFieldToTab("Root.Main", new UploadField('Image', 'Main Image'), 'Content');

    }



}