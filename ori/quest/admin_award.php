<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>無標題文件</title>
<style type="text/css">
<!--
#form1 table tr td {
	text-align: center;
	font-size:14px;
}
-->
</style>
<script>
function del(id) { 
	if (confirm("確定要刪除?")){
		location.href = "admin_award_del.php?id="+id; 	
	}

}
</script>
</head>

<body>
<?
require_once("conn.php");
$y = date("Y");
$sql = "SELECT * FROM award WHERE year='$y' ORDER BY `level` ASC ";
$r = mysql_query($sql) or die($sql);
?>




<p><? echo $y; ?>年抽獎篩選方式</p>
<?

	if(@$_GET["msg"])
		echo "等級".$_GET["msg"]."已存在<br>";
?>
<form id="form1" name="form1" method="post" action="admin_award_ins.php">
<table width="300" height="56" border="1">
  <tr>
    <td width="44">等級</td>
    <td width="79">最低分數</td>
    <td width="50">人數</td>
    <td width="46">修改</td>
    <td width="47">刪除</td>
  </tr>
<?
	while($a=mysql_fetch_array($r)){
		echo "<tr>";
		echo "<td>".$a['level']."</td>";
		echo "<td>".$a['score']."</td>";
		echo "<td>".$a['num']."</td>";
		echo "<td><a href=\"admin_award_edit.php?id=".$a['level']."\">修改</a></td>
			  <td><a href=# onclick=\"del(".$a['level'].")\" >刪除</a></td>";
		echo "</tr>";
	}
?>
  <tr>
    <td><label>
      <input name="level" type="text" id="level" size="5" maxlength="3" />
    </label></td>
    <td><input name="score" type="text" id="score" size="5" maxlength="3" /></td>
    <td><input name="num" type="text" id="num" size="5" maxlength="3" /></td>
    <td colspan="2"><label>
      <input type="submit" name="button" id="button" value="新增" />
    </label></td>
  </tr>
</table>
</form>

<p>&nbsp;</p>
</body>
</html>