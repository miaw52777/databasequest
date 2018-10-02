<?php
include ('admsecure.php');
include('conn.php');
include('getip.php');
$insertSQL = sprintf("INSERT INTO adminvisitlog (ipstamp) VALUES (%s)",  
					GetSQLValueString(get_real_ip(),'text'));
mysql_query($insertSQL);
if(!is_login()){
	header("Location: admin.php");
	exit;
}
if(isset($_POST['action'])){
switch($_POST['action']){
case 'logout':
	$_SESSION['loginuid'] = 'logout';
	echo json_encode(array('success' => true));
	exit;
case 'query_problem_list':
	include('conn.php');
	$insertSQL = sprintf("SELECT Id,question FROM problem");
	$result = mysql_query($insertSQL);
	$i=0;
	$out = array();
	while($tmp = mysql_fetch_array($result) ){
		$out[$i] = $tmp;	
		++$i;
	}
	echo json_encode(array('success' => true , "data" => $out));
	exit;
	
default:
	
break;
	
}
	
}

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>無標題文件</title>
<script type="text/javascript" src='jquery-1.4.2.js'></script>
<script type="text/javascript" src='jquery.json-2.2.min.js'></script>
<script type="text/javascript">
$(document).ready(function(){
$('#btn_logout').click(function(){
$.ajax({
	   type:'post',
	   dataType:'json',
	   data:{
			action : 'logout'
		},
		success:function(){
			location.href = './admin.php';
		}
	   });

});
$('div#div_admin_menu a').click(function(even){
	even.preventDefault();
	$.ajax({
		   url : $(this).attr('href'),
		   cache : false,
		   success:function(res){
		   		$('#div_admin_body').html(res);
		   }
		   
		   });
										 
});
});
</script>

</head>
<body>
<span id="btn_logout">&gt;&gt;&gt;登出&lt;&lt;&lt;</span><br />
<div id="div_admin_menu">
<table width="550" border="1" bordercolor="#000099">
<tbody>
<tr>
<td align="center" bgcolor="#F0FFFF" width="100">
	<span><a href='admin_topics.php'>主題設定</a></span> 
</td>
<td align="center" bgcolor="#F0FFFF" width="100">
	<span><a href='admin_problem.php'>題目設定</a></span> 
</td>
<td align="center" bgcolor="#F0FFFF" width="100">  
	<span><a href='admin_board.php'>答題狀況</a></span>
</td>
<td align="center" bgcolor="#F0FFFF" width="100">
	<span><a href='admin_static.php'>統計圖表</a></span>
</td>
<td align="center" bgcolor="#F0FFFF" width="100">
	<span><a href='pw.php'>修改密碼</a></span>
</td>
</tr>
</tbody>
</table>
</div>
<div id="div_admin_body">


</div>


</body>
</html>