<?php
include ('admsecure.php');
include('conn.php');

if(isset($_POST['user']) && isset($_POST['pass'])){	
	$sql = "SELECT * FROM admin ";
	$adminuser = mysql_fetch_array(mysql_query($sql));
	
	if($_POST['user'] == $adminuser['user']  &&  $_POST['pass'] == $adminuser['pass']){
		$_SESSION['loginuid'] = '1';
		echo json_encode(array('success' => true));
	}else echo json_encode(array('success' => false));
	exit;
}

include('getip.php');
$insertSQL = sprintf("INSERT INTO adminvisitlog (ipstamp) VALUES (%s)",  
					GetSQLValueString(get_real_ip(),'text'));
mysql_query($insertSQL);
if(is_login()){
	header("Location: closet.php");
	exit;
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Adminnnnnnnnn</title>
<script type="text/javascript" src='jquery-1.4.2.js'></script>
<script type="text/javascript">
$(document).ready(function(){
$('#btn_submit').click(function(){
$.ajax({
	   type:'post',
	   dataType:'json',
	   data:{
			user : $("#inp_user").val(),
			pass : $("#inp_pass").val()
		},
		success:function(){
			location.href = './admin.php';
		}
	   });

});
});
</script>
</head>

<body>
<table id='login'>
<tr><td>帳號</td><td><input type="text" id="inp_user"/></td></tr>
<tr><td>密碼</td><td><input type="password" id="inp_pass"/></td></tr>
<tr><td colspan="2" style='text-align:center' ><input type="button" value="---=== 登入 ===---" id="btn_submit"/></td></tr>
</table>

</body>
</html>