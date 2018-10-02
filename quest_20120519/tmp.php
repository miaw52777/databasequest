<?

function getDepartId()
{
	// get department information : id and name	
	include('conn.php');
	$sql = "SELECT id,name from college";
	$result = mysql_query($sql,$sql_db) or die(mysql_error());	

	$departId = array();
	$i=0;
	while($temp = mysql_fetch_assoc($result) ){
		$departId[$i]['id'] = $temp['id'];	
		$departId[$i]['name'] = $temp['name'];			
		$i++;
	}		
	return $departId;
}
function countDepartId($id,$y)
{
	include('conn.php');
	$sql= "SELECT * FROM user WHERE depart_id like '".$id."' && year='$y'";
	$num = mysql_num_rows(mysql_query($sql));
	return $num;
}

function getUserSelectInfo()
{
	include('conn.php');
	$sql = "SELECT SelectedRecord,textarea,otherop from user where endtime IS NOT NULL";
	$result = mysql_query($sql,$sql_db) or die(mysql_error());	

	//$userAns = array();
	$i=0;
	$userAns['SelectedRecord'] = "";
	while($temp = mysql_fetch_assoc($result) ){
		$userAns['SelectedRecord'] .= $temp['SelectedRecord'];	
		$userAns['textarea'] .= $temp['textarea'];			
		$userAns['otherop'] .= $temp['otherop'];	
		$i++;
	}		
	//var_dump($userAns);
	return $userAns;
}
function is_inarray($str,$array)
{
	for($i=0;$i<count($array);$i++)
	{
		if($str == $array[$i]['idstr'])
		{
			return true;
		}	
	}
	return false;
}
function statiscSelectedAns($userAns)
{
	//echo count($userAns)."<br>";
	//echo $userAns['SelectedRecord']."<br>";
	
	// 去除 [  , ] , "    
	$pattern = array('/"/',"/\[/","/\]/");
	$replace = array('','',',');
	$userSeletedRecord = preg_replace($pattern,$replace,$userAns['SelectedRecord']);
	//echo $userSeletedRecord."<br>";
	
	$Array_UserSeletedRecord = spliti(',',$userSeletedRecord,'-1');
	echo (count($Array_UserSeletedRecord)-1)."<br>";	
	$problem = array();
	$problem_index = 0;
	for($i=0;$i<count($Array_UserSeletedRecord)-1;$i++)
	{
		//  problem[0] = quest_id , problem[1] = optId
		
		$pattern = "/q_(\d+)a_(\d+)/";
		preg_match($pattern,$Array_UserSeletedRecord[$i],$match);
		if(is_inarray($match[0],$problem))
			echo '1   ';
		else
			echo '0   ';
		
		echo "idstr".$match[0]."<br>";
		$problem[$problem_index]['idstr'] = $match[0];
		$problem[$problem_index]['qid'] = $match[1];
		$problem[$problem_index]['optId'] = $match[2];
		
		if($match == null)
		{	
			// 方格
			$pattern = "/q_(\d+)a_r(\d+)_(\d+)/";
			preg_match($pattern,$Array_UserSeletedRecord[$i],$match);			
			$problem[$problem_index]['rowid'] = $match[2];
			$problem[$problem_index]['optId'] = $match[3];
		}		
		
		
		$problem_index++;
				
	}
	
	echo "<br><br><br><br>";
	print_r($problem);		
	
/*

	echo split($userAns[$i]['SelectedRecord']);
	var_dump($ArrayuserAns);
	for($j=0;$j<ArrayuserAns.length;$j++)
	{
		preg_match("/q_(\d+)a_(\d+)/",,$res);
		var_dump($res);
	}

	var_dump($res);*/
	
	
}

function drawCircChart($title,$rowtag,$rownum)
{   // 畫圓餅圖
	echo '<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = new google.visualization.DataTable();
        data.addColumn("string", "Task");
        data.addColumn("number", "Hours per Day");
        data.addRows([';
		
		for($i=0;$i<count($rownum);$i++)
		{
			if($i<count($rownum)-1)
			{
				echo "['".$rowtag[$i]['name']."', ".$rownum[$i]."],";
			}
			else
			{
				echo "['".$rowtag[$i]['name']."', ".$rownum[$i]."]";
			}	
		}
			
        echo ']);';

        echo 'var options = {
          title: \''.$title.'\'
        };

        var chart = new google.visualization.PieChart(document.getElementById("chart_div"));
        chart.draw(data, options);
      }
    </script>';
	
	echo '<div id="chart_div" style="width: 900px; height: 500px;"></div>';
}

function drawtable($title,$rowtag,$rownum)
{
	$numberofrow = count($rownum) + 2;
	echo '<table width="520" border="1" class="qq">
     <tr>
       <td colspan="'.$numberofrow.'" style="font-weight:bold; color: #900;">'.$title.'統計</td>
     </tr>
     <tr>
		
       <td width="80">'.$title.'</td>';
	   
		for($i=0;$i<count($rowtag);$i++)
		{
			if($rowtag[$i]['id'] != 'K') 
				echo "<td width='100'>".$rowtag[$i]['name']."</td>";
		}
		
    echo '<td width="80">總計</td>
     </tr>
     <tr>
       <td>人數</td>';
	    $sum = 0;
			for($i=0;$i<count($rownum);$i++)
			{
				echo "<td>".$rownum[$i]."</td>";
				$sum += $rownum[$i];
			}
		      
      echo '<td>'.$sum.'</td>
     </tr>
   </table>';
}
?>