<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>無標題文件</title>
</head>
<script>
function del() { 
	if (confirm("確定要清除今年的抽獎紀錄?")){
		location.href = "admin_lottery_del.php"; 	
	}

}
</script>
<body>
<?
include("conn.php");
$y=date("Y");
?>
<p><a href="admin_lottery_ins.php">開始抽獎</a> <a href="#" onclick="del()">清除抽獎紀錄</a></p>
<table width="650" border="1">
  <tr>
    <td width="10%">等級</td>
    <td width="19%">姓名</td>
    <td width="10%">分數</td>
    <td width="41%">email</td>
    <td width="20%">電話</td>
  </tr>
  <?
  $sql = "SELECT * FROM awardlist WHERE year='$y' ORDER BY `level` ASC";
  $r=mysql_query($sql) or die($sql);
  while($a=mysql_fetch_array($r)){
	$usersql = "SELECT * FROM user WHERE id='".$a['user_id']."'";
	$user = mysql_fetch_array(mysql_query($usersql));
	
  	echo "<tr>
    		<td>".$a['level']."</td>
    		<td>".$user['name']."</td>
    		<td>".$user['score']."</td>
			<td>".$user['email']."</td>
    		<td>".$user['phone']."</td>
  		</tr>";
  }
  
  ?>
  
</table>
<p>&nbsp;</p>
</body>
</html>