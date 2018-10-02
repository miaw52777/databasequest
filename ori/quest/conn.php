<?php
/*

 */
include ("GetSQLValueString.php");
if(!function_exists('json_encode'))
{
	include('JSON.php');
	function json_encode($val)
	{
		$json = new Services_JSON();
		return $json->encode($val);
	}

	function json_decode($val)
	{
		$json = new Services_JSON();
		return $json->decode($val);
	}
}
  
/*
此文件為後端文件 使用者不應直接拜訪此頁面
*/
$sql_hostname = "140.117.120.78";
//$sql_hostname = "140.117.182.94";
$sql_database = "databasequest";
$sql_username_ncs = "dbquest";
$sql_password_ncs = "~QuesT123";
//$sql_database = "questionnaire";
//$sql_username_ncs = "root";
//$sql_password_ncs = "libsys";
$sql_db = mysql_connect($sql_hostname, $sql_username_ncs, $sql_password_ncs) or trigger_error(mysql_error(),E_USER_ERROR);
mysql_query("SET NAMES 'utf8'"); 
mysql_query("SET CHARACTER_SET_CLIENT=utf8"); 
mysql_query("SET CHARACTER_SET_RESULTS=utf8");
mysql_select_db($sql_database, $sql_db );
$sql_hostname = "";
$sql_database = "";
$sql_username_ncs = "";
$sql_password_ncs = "";
?>
