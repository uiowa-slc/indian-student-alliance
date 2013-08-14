<?php

	class HomePageHeroFeature extends DataObject {

		public static $db = array(
			"Title" => "Varchar(155)",
			"Content" => "HTMLText",
			"SortOrder"=>"Int",
			"ExternalLink" => "Text",
			"UseExternalLink" => "Boolean"

		);

		public static $has_one = array (
			"AssociatedPage" => "SiteTree",
			"Image" => "Image"
		);

		public static $default_sort = "SortOrder";

		function getCMSFields() {
			$fields = new FieldList();

			$fields->push( new TextField( 'Title', 'Title' ));

			$fields->push( new UploadField("Image", "Image"));
			$fields->push( new TreeDropdownField("AssociatedPageID", "Link to this page", "SiteTree"));
			$fields->push( new CheckboxField( 'UseExternalLink', 'Use the external link instead:' ));
			$fields->push( new TextField( 'ExternalLink', 'External Link' ));
			$fields->push( new HTMLEditorField( 'Content', 'Content' ));


			return $fields;
		}

	}