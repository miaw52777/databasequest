<?
require_once("conn.php");
$y = date("Y");
$level = $_POST["level"];
$score = $_POST["score"];
$num = $_POST["num"];

$check = "SELECT * FROM award WHERE level='$level' && year = '$y'";
$c=mysql_fetch_array(mysql_query($check));

if($c[0]==""){
	$sql = "INSERT INTO award (level,score,num,year) VALUES ('$level','$score','$num','$y')";
	mysql_query($sql) or die($sql);
	header("location:admin_award.php");
}else{
	header("location:admin_award.php?msg=$level");
}
?>