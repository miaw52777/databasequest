<? require_once("Connections/connection.php"); ?>
<?
	/* select database */
	mysql_select_db($database_connection,$connection);	
	mysql_query("SET NAMES UTF8");
	$counter=0;
	
	$queryL="
		SELECT literature.sId, literature.name, literature.email, literature.department, literature.phone, literature.score, login_status.cat
		FROM literature
		LEFT JOIN login_status ON literature.sId=login_status.sId
		WHERE score >= 70
	";
	$recordL=mysql_query($queryL)or die(mysql_error()." can't do queryL");
	if($row_recordL=mysql_fetch_assoc($recordL)or die(mysql_error()." can't fetch row")){
		$totalRowsL=mysql_num_rows($recordL);
		$record[$counter]['sId']=$row_recordL['sId'];
		$record[$counter]['name']=$row_recordL['name'];
		$record[$counter]['email']=$row_recordL['email'];
		$record[$counter]['department']=$row_recordL['department'];
		$record[$counter]['phone']=$row_recordL['phone'];
		$record[$counter]['score']=$row_recordL['score'];	
		$record[$counter]['cat']=$row_recordL['cat'];
		$counter++;
		for($i=1;$i<$totalRowsL;$i++){
			$row_recordL=mysql_fetch_assoc($recordL) or die(mysql_error()." can't fetch row");
			$record[$counter]['sId']=$row_recordL['sId'];
			$record[$counter]['name']=$row_recordL['name'];
			$record[$counter]['email']=$row_recordL['email'];
			$record[$counter]['department']=$row_recordL['department'];
			$record[$counter]['phone']=$row_recordL['phone'];
			$record[$counter]['score']=$row_recordL['score'];	
			$record[$counter]['cat']=$row_recordL['cat'];			
			$counter++;
		}
	}
	//echo "cat 2=".$counter."<br>";
	
	$querySM="
		SELECT social_management.sId, social_management.name, social_management.email, social_management.department, social_management.phone , social_management.score, login_status.cat
		FROM social_management
		LEFT JOIN login_status ON social_management.sId=login_status.sId
		WHERE score >= 70	
	";
	$recordSM=mysql_query($querySM)or die(mysql_error()." can't do queryL");
	if($row_recordSM=mysql_fetch_assoc($recordSM)or die(mysql_error()." can't fetch row")){
		$totalRowsSM=mysql_num_rows($recordSM);		
		$record[$counter]['sId']=$row_recordSM['sId'];
		$record[$counter]['name']=$row_recordSM['name'];
		$record[$counter]['email']=$row_recordSM['email'];
		$record[$counter]['department']=$row_recordSM['department'];
		$record[$counter]['phone']=$row_recordSM['phone'];
		$record[$counter]['score']=$row_recordSM['score'];	
		$record[$counter]['cat']=$row_recordSM['cat'];		
		$counter++;
		for($i=1;$i<$totalRowsSM;$i++){
			$row_recordSM=mysql_fetch_assoc($recordSM) or die(mysql_error()." can't fetch row");			
			$record[$counter]['sId']=$row_recordSM['sId'];
			$record[$counter]['name']=$row_recordSM['name'];
			$record[$counter]['email']=$row_recordSM['email'];
			$record[$counter]['department']=$row_recordSM['department'];
			$record[$counter]['phone']=$row_recordSM['phone'];
			$record[$counter]['score']=$row_recordSM['score'];	
			$record[$counter]['cat']=$row_recordSM['cat'];
			$counter++;			
		}
	}
	//echo "cat 3=".$counter."<br>";
	
	$querySEM="
		SELECT sci_eng_mar.sId, sci_eng_mar.name, sci_eng_mar.email, sci_eng_mar.department, sci_eng_mar.phone , sci_eng_mar.score, login_status.cat
		FROM sci_eng_mar
		LEFT JOIN login_status ON sci_eng_mar.sId=login_status.sId
		WHERE score >= 70	
	";
	$recordSEM=mysql_query($querySEM)or die(mysql_error()." can't do queryL");
	if($row_recordSEM=mysql_fetch_assoc($recordSEM)or die(mysql_error()." can't fetch row")){
		$totalRowsSEM=mysql_num_rows($recordSEM);
		$record[$counter]['sId']=$row_recordSEM['sId'];
		$record[$counter]['name']=$row_recordSEM['name'];
		$record[$counter]['email']=$row_recordSEM['email'];
		$record[$counter]['department']=$row_recordSEM['department'];
		$record[$counter]['phone']=$row_recordSEM['phone'];
		$record[$counter]['score']=$row_recordSEM['score'];	
		$record[$counter]['cat']=$row_recordSEM['cat'];
		$counter++;
		for($i=1;$i<$totalRowsSEM;$i++){
			$row_recordSEM=mysql_fetch_assoc($recordSEM) or die(mysql_error()." can't fetch row");
			$record[$counter]['sId']=$row_recordSEM['sId'];
			$record[$counter]['name']=$row_recordSEM['name'];
			$record[$counter]['email']=$row_recordSEM['email'];
			$record[$counter]['department']=$row_recordSEM['department'];
			$record[$counter]['phone']=$row_recordSEM['phone'];
			$record[$counter]['score']=$row_recordSEM['score'];	
			$record[$counter]['cat']=$row_recordSEM['cat'];
			$counter++;
		}
	}
	
	for($i=0;$i<$counter;$i++)$sequence[$i]=$i;
	
	/*randomize sequence*/
	for($i=0;$i<$counter;$i++){
		$rand=rand()%($counter);
		$buff=$sequence[$i];
		$sequence[$i]=$sequence[$rand];
		$sequence[$rand]=$buff;
	}
//	echo "Sequence=";
//	for($i=0;$i<$counter;$i++){
//		echo $sequence[$i].",";
//	}
	
	//echo "cat 4=".$counter."<br>";

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>隨機抽獎</title>
<style type="text/css">	
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.header{
	padding:10px;
	font-size:24px;
	color:#FFFFFF;
	text-align:center;
	background-color:#53A9FF;			
	margin-bottom:20px;
}

</style>
</head>

<body>
<div class="header">圖書館「中山誰最"庫"」問卷系統隨機抽獎</div>

<table width="900" border="1" cellpadding="5" cellspacing="0" align="center">
  <tr style="border:none;">
  	<td colspan="7" align="center" style="border:none;">
    	<input type="button" onclick="window.location='randomPick.php'" value="隨機抽獎" style="width:700px; height:50px;" />
    </td>
  </tr>
  <tr>
    <td width="40" align="center" bgcolor="#C8E3FF">序</td>
    <td align="center" bgcolor="#C8E3FF">學號</td>
    <td align="center" bgcolor="#C8E3FF">姓名</td>
    <td align="center" bgcolor="#C8E3FF">系所</td>
    <td align="center" bgcolor="#C8E3FF">電話</td>
    <td align="center" bgcolor="#C8E3FF">Email</td>
    <td align="center" bgcolor="#C8E3FF">分數</td>
  </tr>
<?
	for($i=0;$i<$counter;$i++){
		echo'
		  <tr>
			<td align="center">'.($i+1).'&nbsp;</td>
			<td>'.$record[$sequence[$i]]['sId'].'&nbsp;</td>
			<td>'.$record[$sequence[$i]]['name'].'&nbsp;</td>
			<td>'.$record[$sequence[$i]]['department'].'&nbsp;</td>
			<td>'.$record[$sequence[$i]]['phone'].'&nbsp;</td>
			<td>'.$record[$sequence[$i]]['email'].'&nbsp;</td>
			<td align="right">'.$record[$sequence[$i]]['score'].'&nbsp;</td>
		  </tr>
		';	
	}

?>
</table>


</body>
</html>
