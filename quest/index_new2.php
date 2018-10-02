<?php
include('secure.php');
if(is_login())$_SESSION['loginuid']='logout';

$y = date("Y");
//帳號認證
$login_name = $_POST['sid'];
$login_password = $_POST['password'];

$user = NSYSULDAPAuth($login_name, $login_password);
function NSYSULDAPAuth($login_name, $login_password) { 
    $client = new SoapClient("https://sso.nsysu.edu.tw/ldapService.do?wsdl"); 
    $handle = $client->getAttr(array("in0" => $login_name, "in1" => $login_password, "in2"=>"employeeNumber;givenName;carLicense;title;svuserdept;hr1ouName;hr2ouName;hrdepName;ext;mail"));
    return ($handle->out != "") ? explode(";",$handle->out) : "";
}

echo $user[0]."<br>".$user[1]."<br>".$user[2]."<br>".$user[3]."<br>".$user[4]."<br>".$user[5]."<br>".$user[6]."<br>".$user[7]."<br>".$user[8]."<br>".$user[9];
/*
if( $_POST['sid']!=""){

if($_POST['phone']==""){
	$msg = "尚未輸入連絡電話<br>";

}else if($user[0]!=""){
	include('conn.php');
	include('getip.php');
	$ID = isset($_POST['id'])? $_POST['id'] : '0';
	
	$insertSQL = sprintf("SELECT id,name,ident_id,depart_id,email,phone FROM user WHERE sId = %s && year='$y'", 
						 GetSqlValueString($_POST['sid'],'text'));
	$result = mysql_query($insertSQL,$sql_db) or die(mysql_error());	
			
			//如果該學號不存在 insert 且給予登入成功訊息 exit
			if(!($arr = mysql_fetch_assoc($result))){
				
				$phone = $_POST['phone'];
				$insertSQL = sprintf("INSERT INTO user (year,name,sId,depart_id,email,phone,RP,ipstamp) VALUES ('%s','%s','%s','%s','%s','%s','%s','%s')",$y,$user[1],$user[0],$user[6],$user[9],$phone,crc32($_POST['sid'].md5(rand().time())),get_real_ip());
				mysql_query($insertSQL,$sql_db) or die($insertSQL." ".mysql_error());		
				$_SESSION['loginuid'] = mysql_insert_id();
				header("location:selectQuest.php");
			
			}else{
				$phone = $_POST['phone'];
				$insertSQL = sprintf("UPDATE user SET name='%s', sId='%s', depart_id='%s', email='%s', phone='%s', ipstamp='%s', starttime='%s' WHERE id='%s'",$user[1],$user[0],$user[6],$user[9],$phone,get_real_ip(),date("Y-m-d H:i:s"),$arr['id']);
				mysql_query($insertSQL,$sql_db) or die($insertSQL." ".mysql_error());	
				$_SESSION['loginuid'] = $arr['id'] ;
				header("location:selectQuest.php");
			}

}else{
	$msg = "帳號密碼錯誤";
}
}
*/
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>中山誰最庫!?</title>

<link rel="stylesheet" type="text/css" href="../style.css" media="screen" />
<style type="text/css">
<!--
.style4 {
	font-size: 10.5px;
	margin-top: 5px;	
}
-->
</style>
</head>

<body>
<div id="header"></div>
<div id="page">
	<div id="content">
    	<div class="post">
        	<table width="100%" border="0">
          	  <tr>
            	<td width="38%" height="98"><img src="../images/answer.jpg" width="246" height="96" /></td>
            	<td width="34%">&nbsp;</td>
            	<td width="14%"><a href="../01.html"><img src="../images/03.jpg" width="85" height="75" border="0"/></a></td>
            	<td width="14%"><a href="../02.html"><img src="../images/02.jpg" width="85" height="75" border="0"/></a></td>
          	  </tr>
        	</table>
        <div class="entry">
        <form action="index_new.php" method="post">
    		<div align="center">
    		  <table width="551" border="0" cellpadding="7" cellspacing="0">
		      <tr>
                <td colspan="3" align="right"><div align="left"><img src="../images/sign.jpg" width="551" height="197" /></div></td>
              </tr>
              <tr>
              	<td width="50" align="right"><div align="right"><img src="../images/img6.jpg" width="25" height="26" /></div></td>
              	<td width="68" align="right"><div align="left">學號</div></td>
              	<td width="415" align="left"><input name="sid" type="text" id="sid" style="width:180px; height:20px;" size="20" /></td>
		      </tr>
              <tr>
              	<td width="50" align="right"><div align="right"><img src="../images/img6.jpg" width="25" height="26" /></div></td>
                <td width="68" align="right"><div align="left">密碼</div></td>
                <td width="415" align="left"><label>
                  <input name="password" type="password" id="password" style="width:180px; height:20px;" size="20" />
                </label></td>
              </tr>
              <tr>
                <td width="50" align="right"><div align="right"><img src="../images/img6.jpg" width="25" height="26" /></div></td>
                <td width="68" align="right"><div align="left">連絡電話</div></td>
                <td width="415" align="left"><input type="text" name="phone" id="phone" size="14" style="width:180px; height:20px;" /><font size="2"> 
		        (※ 僅作為得獎通知使用)</font></td>
              </tr>
		      <tr>
		        <td colspan="3" align="center">
                <? echo @$msg; ?>
                <label>
		          <input name="送出" type="submit" id="btn_start" value="開始填答"/>
		        </label></td>
		      </tr>
		    </table>
			</div>
		</form>
		</div>
		</div>
	</div>
	<div style="clear: both;">&nbsp;</div>
</div>
<div id="footer">
	<p>&nbsp;</p>
</div>
</body>
</html>