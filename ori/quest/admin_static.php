<?
include('conn.php');
$y=date("Y");
$sql= "SELECT * FROM user WHERE year='$y'";
$all = mysql_num_rows(mysql_query($sql));

$sql= "SELECT * FROM user WHERE endtime IS NULL  && year='$y'";
$n = mysql_num_rows(mysql_query($sql));

$p = ($all-$n)/$all*100;
$p = round($p,2);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>無標題文件</title>
</head>

<body>
<div style="float:left; width:580px; margin:20px;"> 
<iframe src="chart.php" frameborder="0" width="600" height="400"></iframe>
</div>
<div style="float:left; width:500px; margin:20px;"> 
<iframe src="chart1.php" frameborder="0" width="600" height="400"></iframe>
</div>
<div style="float:left; width:580px; margin:20px;"> 
<iframe src="chart2.php" frameborder="0" width="600" height="400"></iframe>
</div>

<div style="float:left; width:500px; margin:20px;"> 
  <table width="300" border="1">
    <tr>
      <td width="114">作答人數</td>
      <td width="170"><? echo $all; ?></td>
    </tr>
    <tr>
      <td>無效人數</td>
      <td><? echo $n; ?></td>
    </tr>
    <tr>
      <td>有效比率</td>
      <td><? echo $p."%"; ?></td>
    </tr>
  </table>
</div>
</body>
</html>