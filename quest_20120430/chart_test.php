<?
include('conn.php');
include('statistic_function.php');
$y=date("Y");

$depart = getDepartId();
$stu = array();

$flag = true;
for($i=0;$i<count($depart);$i++)
{
	if($depart[$i]['id'] == "K"  || $depart[$i]['id'] == "A")
	{
		if($flag)
		{
			$tmp = $i;
			$stu[$tmp] = countDepartId($depart[$i]['id'],$y);
			$flag = false;
		}	
		else
		{
			$stu[$tmp] += countDepartId($depart[$i]['id'],$y);
		}	
	}
	else
	{
		$stu[$i] = countDepartId($depart[$i]['id'],$y);
	}
}

$sum = array_sum($stu);

$max = max($stu);

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
  <head>
   <title> Vertical bar chart </title>
   <style type="text/css">
<!--
.qq {
	text-align: center;
	
}
-->
  </style>
  </head>
  <body>
   <? drawCircChart('院別',$depart,$stu) ?>
   <? drawtable('院別',$depart,$stu) ?> 
  </body>
</html>