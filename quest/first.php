<?php
include('secure.php');
include('conn.php');
$sql = "SELECT * FROM user WHERE id='$UID'";
$user = mysql_fetch_array(mysql_query($sql));

if(@$_POST["email"]){

	
	$email = $_POST["email"];
	$phone = $_POST["phone"];
	$sql = "UPDATE user SET email='$email', phone='$phone' WHERE id='$UID'";
	mysql_query($sql) or die("error: ".$sql);
	header("location:selectQuest.php");
	

}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>無標題文件</title>
<style type="text/css">
<!--
#form1 p {
	text-align: center;
}
-->
</style>
</head>

<body>
<form id="form1" name="form1" method="post" action="first.php">
  <p><?  echo @$msg; ?></p>
  <p>請輸入你的聯絡資訊</p>
  <table width="370" border="0" align="center">
    <tr>
      <td width="76">email</td>
      <td width="284"><label>
        <input name="email" type="text" id="email" value="<? echo $user["email"]; ?>" size="40" />
      </label></td>
    </tr>
    <tr>
      <td>聯絡電話</td>
      <td><input type="text" name="phone" id="phone" /></td>
    </tr>
  </table>
  <p>
    <label>
      <input type="submit" name="button" id="button" value="送出" />
    </label>
  </p>
</form>
</body>
</html>