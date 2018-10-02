<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>系所統計資訊</title>
</head>
<body>
<form action="" method="Post">請選擇欲統計之系所:<br>
	<select multiple="multiple" size="15" name="dep[]">
			<? getdepartInfo(0); ?>
	</select>
	<input type="Submit" value="確定"></input>
</form>
<hr>
</body>
</html>
<?
include('statistic_function.php');

	$depid = $_POST['dep'];		
	showProblem($depid);

function getdepartInfo()
{	
	include('conn.php');
	// get department information
	$querySQL = "SELECT depart,depart_id from user Group by depart ORDER BY  `depart_id` ASC,depart ASC";
	$result = mysql_query($querySQL) or die(mysql_error());
	$count = 0;
	while($tmp = mysql_fetch_assoc($result))
	{
		$departInfo[$count] = $tmp['depart'];
		if($count != 0 && $tmp['depart_id'] != $last) 
		{
			echo "<option>--------------------------------------------</option>";
		}
		if($tmp['depart']) echo '<option value="'.$tmp['depart'].'">'.$tmp['depart'].'</option>';
		else echo '<option value="'.$tmp['depart'].'">教師或職員</option>';		
		$last = $tmp['depart_id'];
		$count++;
	}
}

function showProblem($depname)
{	
	include('conn.php');
	$where_str = "";
	$count = count($depname);
	if($depname)
	{
		echo "<br> 系所名稱 : <table width='600' border='1' bgcolor='#FFFFCC'><tr><td><font size='3' color='#003300'>";
		for($i=0;$i<$count;$i++)
		{
			$where_str = $where_str."depart like '".$depname[$i]."'";
		
			if($count-1 != $i) $where_str =  $where_str." || ";
			
			if($depname[$i]) echo $depname[$i]."<br>";
			else  echo " 教師或職員<br>";
			
		}
		echo " </font></td></tr></table><br>";
		$problem = constructProblem();
		$sql = "SELECT SelectedRecord,textarea,otherop from user where endtime IS NOT NULL AND ".$where_str;	

		$result = mysql_query($sql,$sql_db) or die(mysql_error());	

		while($temp = mysql_fetch_assoc($result) ){
			$userAns['SelectedRecord'] = $temp['SelectedRecord'];	
			$userAns['textarea'] = $temp['textarea'];			
			$userAns['otherop'] = $temp['otherop'];

			$problem = staticSelectedAns($problem,$userAns);	
		}		
		show_problem($problem);
	}
}	

?>


