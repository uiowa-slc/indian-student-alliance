<?php
/**
 * Free geo ip service implementation for SilverStripe
 * 
 * @author Tim Klein <tim at dodat dot co dot nz>
 * https://github.com/dodat/
 * Usage:
 * add this to your mysite/_config.php
 * Geoip::$default_country_code = FreeGeoipService::get_country_code();
 *
 * Please note that the free lookup service is restricted to 1000 requests per hour,
 * run your own if you need more
 * 
 * set static $lookup_url to the url of your service
 **/

class FreeGeoipService {
	
	private static $session_key = "VisitorCity";
	
	private static $default_country_code = "US";
	
	private static $lookup_url = "http://freegeoip.net/";
	
	public static function get_city() {
		// if($code = self::get_city_from_session()) {
		// 	return $code;
		// }
		if(isset($_SERVER['REMOTE_ADDR'])) {
			$ip = $_SERVER['REMOTE_ADDR'];
			//TODO GET REAL CLIENT IP ADDR:
			//$ip = '222.83.191.160';
			//$ip = '2620:0:e50:2007:b1d4:f997:653e:3084';
			$url = self::$lookup_url."json/{$ip}";
			if($response = @file_get_contents($url)) {
				$data = json_decode($response);
				$city = $data->city;
			}
		}
		print_r($data);
		self::set_city_to_session($city);
		return $city;
	}

	public static function inIowaCity(){
		$city = FreeGeoipService::get_city();
		if($city == 'Iowa City'){
			return true;
		}
		return false;
	}
	
	private static function set_city_to_session($code) {
		Session::set(self::$session_key, $code);
	}
	
	private static function get_city_from_session() {
		if(!isset($_SESSION)) {
			Session::start();
		}
		return !isset($_GET['flush']) ? Session::get(self::$session_key) : false;
	}
	
}