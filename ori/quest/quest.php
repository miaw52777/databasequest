<? require_once("Connections/connection.php"); ?>
<?
	/* select database */	
	mysql_select_db($database_connection);			
	mysql_query("SET NAMES UTF8");
	
	/* Query the general questions */
	$query="
		SELECT *
		FROM problem
		LEFT JOIN answer on problem.qId=answer.qId
		WHERE problem.cat='1'
		ORDER BY problem.qId, answer.optId ASC
	";	
	$record=mysql_query($query) or die(mysql_error());
	$totalRows=mysql_num_rows($record);

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<table>
<?
	//loop for questions
	for($i=0;$i<$totalRows;$i++){	
		//loop for options
		for($j=0;$j<4;$j++){
			$row_record=mysql_fetch_assoc($record);
			if($j==0){				
				echo "<tr><td>";
				echo $row_record['question']."<br>";
				echo "hint:".$row_record['hint']."<br>";					
			}
			echo $row_record['options']."<br/>";
		}
		echo "</td></tr>";
	}
?>
</table>

</body>
</html>