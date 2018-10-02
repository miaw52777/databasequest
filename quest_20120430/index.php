<?php
	$start = '2011-12-05'; 
	$start = strtotime($start); // 將日期轉為Unix時間戳記
	$now = date("Y-m-d H:i:s");
	$now = strtotime($now);
	
	if($now < $start)
		header("location:../01.html");

	include('secure.php');
	if(is_login())$_SESSION['loginuid']='logout';

	$y = date("Y");
	//帳號認證
	@$login_name = $_POST['sid'];
	@$login_password = $_POST['password'];

	$user = NSYSULDAPAuth($login_name, $login_password);
	function NSYSULDAPAuth($login_name, $login_password) { 
		$client = new SoapClient("https://sso.nsysu.edu.tw/ldapService.do?wsdl"); 
		$handle = $client->getAttr(array("in0" => $login_name, "in1" => $login_password, "in2"=>"employeeNumber;givenName;carLicense;title;svuserdept;hr1ouName;hr2ouName;hrdepName;ext;mail"));
		return ($handle->out != "") ? explode(";",$handle->out) : "";
	}

	//判斷身分和學院
	@$ident = substr($user[4],0,1);
	@$depart = substr($user[4],1,1);
	
	if($ident=="B")
		$ident=1;
	else if($ident=="M" || $ident=="N")
		$ident=2;
	else if($ident=="P" || $ident=="D")
		$ident=3;
	else
		$ident=4;
	//
	if( @$_POST['sid']!=""){
		if($user[0]!=""){
			include('conn.php');
			include('getip.php');
			$ID = isset($_POST['id'])? $_POST['id'] : '0';
			
			$insertSQL = sprintf("SELECT id,name,ident_id,depart_id,email,phone FROM user WHERE sId = %s && year='$y'", 
								 GetSqlValueString($_POST['sid'],'text'));
			
			$result = mysql_query($insertSQL);	
					
					//如果該學號不存在 insert 且給予登入成功訊息  並跳到填寫個人資料畫面 exit
					if(!($arr = mysql_fetch_array($result))){
						
						//$phone = $_POST['phone'];
						$insertSQL = sprintf("INSERT INTO user (year,name,sId,depart_id,email,ipstamp,ident_id,depart) VALUES ('%s','%s','%s','%s','%s','%s','%s','%s')",$y,$user[1],$user[0],$depart,$user[9],get_real_ip(),$ident,$user[6]);
						
						mysql_query($insertSQL,$sql_db) or die($insertSQL." ".mysql_error());		
						$_SESSION['loginuid'] = mysql_insert_id();
					//該帳號存在 直接填問卷
					}else{
						//$phone = $_POST['phone'];
						$insertSQL = sprintf("UPDATE user SET name='%s', sId='%s', depart_id='%s', ipstamp='%s',ident_id='%s',depart='%s'  WHERE id='%s'",$user[1],$user[0],$depart,get_real_ip(),$ident,$user[6],$arr['id']);
						mysql_query($insertSQL,$sql_db) or die($insertSQL." ".mysql_error());	
						$_SESSION['loginuid'] = $arr['id'] ;					
					}
					header("location:selectQuest.php");

		}else{
			$msg = "帳號密碼錯誤";
		}
	}
	
	
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>電子資源意見調查</title>

<link rel="stylesheet" type="text/css" href="../style.css" media="screen" />
<style type="text/css">
<!--
.style6 {
	color: #666666;
	font-size: 12px;
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
            	<td width="38%" height="98">&nbsp;</td>
            	<td width="14%"><a href="../index.html"><img src="../images/backindex.jpg" width="85" height="75" border="0"/></a></td>
          	  </tr>
        	</table>
        <div class="entry">
        <form action="index.php" method="post">
   		  <div align="center">
   		    <table width="556" border="0" cellpadding="7" cellspacing="0">
              <tr>
                <td colspan="3" align="right"><div align="left"><img src="../images/sign.jpg" width="551" height="197" /></div></td>
              </tr>
              <tr>
                <td align="right"><div align="right"><img src="../images/img6.jpg" width="25" height="26" /></div></td>
                <td align="right"><div align="left">學生(學號), 教職員(員工編號)：</div></td>
                <td align="left"><input name="sid" type="text" id="sid" style="width:180px; height:20px;" size="20" /></td>
              </tr>
              <tr>
                <td width="27" align="right">&nbsp;</td>
                <td colspan="2" align="left"><span class="style6">Student ID / Alien Resident Certificate Numbers / Residence Permit / Passport Number for exchange students </span></td>
              </tr>
              <tr>
                <td width="27" align="right"><div align="right"><img src="../images/img6.jpg" width="25" height="26" /></div></td>
                <td width="303" align="right"><div align="left">學生(選課密碼), 教職員(SSO密碼)：</div></td>
                <td width="180" align="left"><label>
                  <input name="password" type="password" id="password" style="width:180px; height:20px;" size="20" />
                </label>
			  <tr>
                <td width="27" align="right">&nbsp;</td>
                <td colspan="2" align="left"><span class="style6">Course Selection Password / SSO password </span></td>
              <tr>
                <td colspan="3" align="center"><? echo @$msg; ?>
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