<?
include('statistic_function.php');
include('conn.php');

$problem = constructProblem();
$sql = "SELECT SelectedRecord,textarea,otherop from user where endtime IS NOT NULL";
$result = mysql_query($sql,$sql_db) or die(mysql_error());	

while($temp = mysql_fetch_assoc($result) ){
	$userAns['SelectedRecord'] = $temp['SelectedRecord'];	
	$userAns['textarea'] = $temp['textarea'];			
	$userAns['otherop'] = $temp['otherop'];

	$problem = staticSelectedAns($problem,$userAns);	
}		
//	print_problem($problem);
	show_problem($problem);




?>