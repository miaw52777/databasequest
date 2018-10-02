<?php
function get_real_ip(){   
	if (@$_SERVER["HTTP_X_FORWARDED_FOR"]) {
		$ip = $_SERVER["HTTP_X_FORWARDED_FOR"];
	} else {
		if (@$_SERVER["HTTP_CLIENT_IP"]) {
            $ip = $_SERVER["HTTP_CLIENT_IP"];
		} else {
           $ip = $_SERVER["REMOTE_ADDR"];
		}
	}
	return $ip;   
}   
?>