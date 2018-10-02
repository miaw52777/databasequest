<?
require_once("conn.php");
$id = $_GET["id"];
$y = date("Y");
$sql = "DELETE FROM award WHERE level='$id' && year='$y'";
mysql_query($sql) or die($sql);
header("location:admin_award.php");
?>