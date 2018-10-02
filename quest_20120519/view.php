<? 	require_once("Connections/connection.php"); ?>
<?
	/* select database */	
	mysql_select_db($database_connection);			
	mysql_query("SET NAMES UTF8");
	/* Query the general questions */
	$queryL="
		SELECT literature.*, login_status.submitted
		FROM literature
		LEFT JOIN login_status on login_status.sId=literature.sId
		ORDER BY start DESC
	";	
	$recordL=mysql_query($queryL) or die(mysql_error()."can't get literature table!");
	$totalRowsL=mysql_num_rows($recordL);
	
	$querySEM="
		SELECT sci_eng_mar.*, login_status.submitted
		FROM sci_eng_mar
		LEFT JOIN login_status on login_status.sId=sci_eng_mar.sId
		ORDER BY start DESC
	";	
	$recordSEM=mysql_query($querySEM) or die(mysql_error()."can't get sci_eng_mar table!");
	$totalRowsSEM=mysql_num_rows($recordSEM);
	
	$querySM="
		SELECT social_management.*, login_status.submitted
		FROM social_management
		LEFT JOIN login_status on login_status.sId=social_management.sId
		ORDER BY start DESC
	";	
	$recordSM=mysql_query($querySM) or die(mysql_error()."can't get social_management table!");
	$totalRowsSM=mysql_num_rows($recordSM);
	
	header("refresh:60");
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>檢視問卷結果</title>
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
#literature{
	padding:5px;
	font-size:20px;	
	background-color:#D2FFD2;
}
#sci_eng_mar{
	padding:5px;
	font-size:20px;	
	background-color:#DFEFFF;
}
#social_management{
	padding:5px;
	font-size:20px;	
	background-color:#FFFFB3;
}

</style>
</head>

<body>
<div class="header">
	圖書館「中山誰最"庫"」問卷系統檢視結果
</div>
<table align="center" width="1100" border="0" cellpadding="10">
<tr>
<td align="left"><? echo "總共有<font color='red'>".($totalRowsL+$totalRowsSEM+$totalRowsSM)."</font>人參加此活動"; ?></td>
</tr>
<tr>
	<td align="center" bgcolor="#F7F7F7">
    <div id="literature">文學院<? echo " (".$totalRowsL.")" ?></div>
	<?
        //文學院
        echo"<table border='1' cellspacing='0' cellpadding='2' style:'table-layout:fixed;'>";
		echo"
			<tr>
				<td width='50' align='center'>序</td>			
				<td width='80' align='center'>學號</td>
				<td width='75' align='center'>姓名</td>
				<td width='200' align='center'>系所</td>
				<td width='100' align='center'>email</td>
				<td width='100' align='center'>電話</td>
				<td width='50' align='center'>分數</td>
				<td width='50' align='center'>錯誤</td>
				<td width='85' align='center'>開始</td>
				<td width='85' align='center'>結束</td>
				<td width='50' align='center'>繳交</td>
			</tr>			
		";
		for($i=0;$i<$totalRowsL;$i++){
			$row_recordL=mysql_fetch_assoc($recordL)or die(mysql_error." can't fetch literature date");
			echo"<tr>";			
			echo"<td align='center'>".($i+1)."</td>";
			echo"<td align='left'>".$row_recordL['sId']."</td>";
			echo"<td align='left'>".$row_recordL['name']."</td>";
			echo"<td align='left'>".$row_recordL['department']."</td>";
			echo"<td align='left' style='WORD-BREAK:BREAK-ALL;'>".$row_recordL['email']."</td>";
			echo"<td align='left'>".$row_recordL['phone']."</td>";
			echo"<td align='center' style='background-color:#FFD2D2'>".$row_recordL['score']."</td>";
			echo"<td align='center'><a href='viewResult?cat=2&sId=".$row_recordL['sId']."'>檢視</a></td>";
			echo"<td align='left'>".$row_recordL['start']."</td>";
			echo"<td align='left'>".$row_recordL['end']."</td>";
			echo"<td align='center'>".$row_recordL['submitted']."</td>";
			echo"</tr>";
		}		
		echo"</table>";    
    ?>
	</td>    
</tr>
<tr>
<td height="1"></td>
</tr>
<tr>
	<td align="center" bgcolor="#F7F7F7">
    <div id="social_management">社科院、管理學院<? echo " (".$totalRowsSM.")" ?></div>
	<?
        //社科院、管理學院
        echo"<table border='1' cellspacing='0' cellpadding='2' style:'table-layout:fixed;'>";
		echo"
			<tr>
				<td width='50' align='center'>序</td>			
				<td width='80' align='center'>學號</td>
				<td width='75' align='center'>姓名</td>
				<td width='200' align='center'>系所</td>
				<td width='100' align='center'>email</td>
				<td width='100' align='center'>電話</td>
				<td width='50' align='center'>分數</td>
				<td width='50' align='center'>錯誤</td>
				<td width='85' align='center'>開始</td>
				<td width='85' align='center'>結束</td>
				<td width='50' align='center'>繳交</td>
			</tr>			
		";
		for($i=0;$i<$totalRowsSM;$i++){
			$row_recordSM=mysql_fetch_assoc($recordSM)or die(mysql_error." can't fetch literature date");
			echo"<tr>";			
			echo"<td align='center'>".($i+1)."</td>";
			echo"<td align='left'>".$row_recordSM['sId']."</td>";
			echo"<td align='left'>".$row_recordSM['name']."</td>";
			echo"<td align='left'>".$row_recordSM['department']."</td>";
			echo"<td align='left' style='WORD-BREAK:BREAK-ALL;'>".$row_recordSM['email']."</td>";
			echo"<td align='left'>".$row_recordSM['phone']."</td>";
			echo"<td align='center' style='background-color:#FFD2D2'>".$row_recordSM['score']."</td>";
			echo"<td align='center'><a href='viewResult?cat=3&sId=".$row_recordSM['sId']."'>檢視</a></td>";
			echo"<td align='left'>".$row_recordSM['start']."</td>";
			echo"<td align='left'>".$row_recordSM['end']."</td>";
			echo"<td align='center'>".$row_recordSM['submitted']."</td>";
			echo"</tr>";
		}		
		echo"</table>";    
    ?>       
	</td>    
</tr>
<tr>
<td height="1"></td>
</tr>
<tr>
	<td align="center" bgcolor="#F7F7F7">
    <div id="sci_eng_mar">理學院、工學院、海科院<? echo " (".$totalRowsSEM.")" ?></div>
	<?
        //理學院、工學院、海科院
        echo"<table border='1' cellspacing='0' cellpadding='2' style:'table-layout:fixed;'>";
		echo"
			<tr>
				<td width='50' align='center'>序</td>			
				<td width='80' align='center'>學號</td>
				<td width='75' align='center'>姓名</td>
				<td width='200' align='center'>系所</td>
				<td width='100' align='center'>email</td>
				<td width='100' align='center'>電話</td>
				<td width='50' align='center'>分數</td>
				<td width='50' align='center'>錯誤</td>
				<td width='85' align='center'>開始</td>
				<td width='85' align='center'>結束</td>
				<td width='50' align='center'>繳交</td>
			</tr>			
		";
		for($i=0;$i<$totalRowsSEM;$i++){
			$row_recordSEM=mysql_fetch_assoc($recordSEM)or die(mysql_error." can't fetch literature date");
			echo"<tr>";			
			echo"<td align='center'>".($i+1)."</td>";
			echo"<td align='left'>".$row_recordSEM['sId']."</td>";
			echo"<td align='left'>".$row_recordSEM['name']."</td>";
			echo"<td align='left'>".$row_recordSEM['department']."</td>";
			echo"<td align='left' style='WORD-BREAK:BREAK-ALL;'>".$row_recordSEM['email']."</td>";
			echo"<td align='left'>".$row_recordSEM['phone']."</td>";
			echo"<td align='center' style='background-color:#FFD2D2'>".$row_recordSEM['score']."</td>";
			echo"<td align='center'><a href='viewResult?cat=4&sId=".$row_recordSEM['sId']."'>檢視</a></td>";
			echo"<td align='left'>".$row_recordSEM['start']."</td>";
			echo"<td align='left'>".$row_recordSEM['end']."</td>";
			echo"<td align='center'>".$row_recordSEM['submitted']."</td>";
			echo"</tr>";
		}		
		echo"</table>";    
    ?>
	</td>    
</tr>
</table>
</body>
</html>
