<?php

class StaffPageExtension extends DataExtension {

  private static $db = array(

    );
  private static $has_one = array(

       
  );

  public function updateCMSFields(FieldList $fields) {
    $fields->removeByName('Teams');
    $fields->removeByName('StaffTeam');
  }

}
