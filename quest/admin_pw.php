<?
include('conn.php');
$sql = "SELECT * FROM admin ";
$admin = mysql_fetch_array(mysql_query($sql));
if(@$_POST['oldpw']!="" && $_POST['oldpw']==$admin['pass']){
	if($_POST['pw1'] == $_POST['pw2']){
		$sqlupdate = "UPDATE admin SET pass='".$_POST['pw1']."' WHERE user = '".$admin['user']."'";
		mysql_query($sqlupdate) or die($sqlupdate);
		$msg = "修改密碼成功";
	}else{
		$msg = "新密碼兩次輸入不同!";
	}
}else if(@$_POST['oldpw']!=""){
	$msg = "舊密碼輸入錯誤!";
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
<script type="text/javascript">
<!--
function MM_validateForm() { //v4.0
  if (document.getElementById){
    var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
    for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=document.getElementById(args[i]);
      if (val) { nm=val.name; if ((val=val.value)!="") {
        if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
          if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
        } else if (test!='R') { num = parseFloat(val);
          if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
          if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
            min=test.substring(8,p); max=test.substring(p+1);
            if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
      } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' is required.\n'; }
    } if (errors) alert('請輸入所有欄位');
    document.MM_returnValue = (errors == '');
} }
//-->
</script>
</head>

<body>
<form action="admin_pw.php" method="post" name="form1" id="form1" onsubmit="MM_validateForm('oldpw','','R','pw1','','R','pw2','','R');return document.MM_returnValue">
  <p><? echo @$msg; ?></p>
  <table width="414" height="85" border="0" align="center">
    <tr>
      <td width="132">輸入原密碼</td>
      <td width="272"><input type="password" name="oldpw" id="oldpw" /></td>
    </tr>
    <tr>
      <td>輸入新密碼</td>
      <td><input type="password" name="pw1" id="pw1" /></td>
    </tr>
    <tr>
      <td>再次輸入新密碼</td>
      <td><input type="password" name="pw2" id="pw2" /></td>
    </tr>
  </table>
  <p>
    <label>
      <input type="submit" name="button" id="button" value="送出" />
    </label>
  </p>
  <p>&nbsp;</p>
</form>
</body>
</html>