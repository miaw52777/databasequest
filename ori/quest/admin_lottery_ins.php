<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?
include("conn.php");
$y=date("Y");
$sql = "SELECT * FROM awardlist WHERE year='$y'";
$check = mysql_fetch_array(mysql_query($sql));

if($check[0]==""){
	$sql = "SELECT * FROM award WHERE year='$y' ORDER BY `level` ASC ";
	$r = mysql_query($sql) or die($sql);
	//echo $sql."<br>";
	while($a=mysql_fetch_array($r)){
		
		$lottery_sql = "SELECT * FROM user 
		                WHERE score>='".$a['score']."' && year='$y' 
						ORDER BY rand( ) ";
		
		$result = mysql_query($lottery_sql) or die($lottery_sql);
		//echo $lottery_sql."<br>";
		$i=0; //中獎人數
		while($l=mysql_fetch_array($result)){
			//echo $a['level']." ".$l['name']." ".$l['score']."<br>";
			$checksql = "SELECT * FROM awardlist WHERE user_id='".$l['id']."' && year='$y'";
			$c = mysql_fetch_array(mysql_query($checksql));
			if($c[0]==""){
				$ins_sql = "INSERT INTO awardlist( year, user_id, level) VALUES('$y','".$l['id']."','".$a['level']."' )";
				mysql_query($ins_sql) or die($ins_sql);
				$i++;
			}
			
			if($i==$a['num'])
				break;
		}
		//echo "<br>";
	}
	header("location:admin_lottery_list.php");
}else{
	echo "已經抽過獎了";
}
?>