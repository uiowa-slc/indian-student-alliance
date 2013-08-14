<?php



class BlogFieldExtension extends DataExtension {

    static $has_one = array(
        'Image' => 'Image',
    );
    
    public function getCMSFields() {
      $this->extend('updateCMSFields', $fields);
      
      return $fields;
    }


    public function updateCMSFields(FieldList $fields) {
      $fields->addFieldToTab("Root.Main", new UploadField('Image', 'Main Image'), 'Content');
      $fields->removeByName("Author");
	  
      if($this->owner->ClassName == "BlogEntry"){
        $fields->removeByName("Date");
      }else {

        $fields->renameField("Date", "Published Date");
      }

  }



}