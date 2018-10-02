<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>身分統計資訊</title>
</head>
<body>
<form action="" method="Post">請選擇欲統計之身分:<br>
	<select multiple="multiple" size="5" name="ident[]">
			<? $identInfo = getIdentInfo(0); ?>
	</select>
	<input type="Submit" value="確定"></input>
</form>
<hr>
</body>
</html>
<?
include('statistic_function.php');

	$identid = $_POST['ident'];		
	showProblem($identid,$identInfo);

function getIdentInfo()
{	
	include('conn.php');
	// get department information
	$querySQL = "SELECT id,name from ident ORDER BY `id` ASC";
	$result = mysql_query($querySQL) or die(mysql_error());
	$count = 0;
	while($tmp = mysql_fetch_assoc($result))
	{		
		$identInfo[$count++]['name'] = $tmp['name'];
		echo '<option value="'.$tmp['id'].'">'.$tmp['name'].'</option>';			
	}
	return $identInfo;
}

function showProblem($identid,$identInfo)
{	
	include('conn.php');
	$where_str = "";
	$count = count($identid);
	if($identid)
	{
		echo "<br> 身分 : <table width='600' border='1' bgcolor='#FFFFCC'><tr><td><font size='3' color='#003300'>";
		for($i=0;$i<$count;$i++)
		{
			$where_str = $where_str."ident_id like '".$identid[$i]."'";
		
			if($count-1 != $i) $where_str =  $where_str." || ";			
			
			//echo $identid[$i]."<br>";
			$num = $identid[$i];
			echo $identInfo[$num-1]['name']."<br>";		
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


