<?
require_once("conn.php");
$y = date("Y");
$sql = "DELETE FROM awardlist WHERE year='$y'";
mysql_query($sql) or die($sql);
header("location:admin_lottery_list.php");
?>