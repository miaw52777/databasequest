<?

function getDepartId()
{
	// get department information : id and name	
	include('conn.php');
	$sql = "SELECT depart_id from user Group by depart_id";
	$result = mysql_query($sql,$sql_db) or die(mysql_error());	

	$departId = array();
	$i=0;
	while($temp = mysql_fetch_assoc($result) ){
		$departId[$i]['id'] = $temp['depart_id'];			
		$departId[$i]['name'] = getIdentname($temp['depart_id']);	
		$i++;	
	}		
	return $departId;
}
function getIdentname($dep_id)
{
	include('conn.php');
	$sql = "SELECT id,name from college";
	$result = mysql_query($sql,$sql_db) or die(mysql_error());
		
	while($temp = mysql_fetch_assoc($result) ){
		if($temp['id'] == $dep_id)	
			return $temp['name'];	
	}		
	return "教職員";
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

	
	while($temp = mysql_fetch_assoc($result) ){
		$userAns['SelectedRecord'] = $temp['SelectedRecord'];	
		$userAns['textarea'] = $temp['textarea'];			
		$userAns['otherop'] = $temp['otherop'];	
		staticSelectedAns($userAns);	
	}		
	//var_dump($userAns);
	return $userAns;
}

//***********************************************************************************//
function GetOption(&$quest){
	include('conn.php');
	$insertSQL = sprintf("SELECT optId,options,is_col,is_otherop FROM answer WHERE quest_id = %s",
						 GetSqlValueString($quest['id'],'long')
						 );
	$result = mysql_query($insertSQL) or die(mysql_error());
	$j=0;
	while($temp = mysql_fetch_assoc($result)){
		$quest['answer'][$j]['optId'] = $temp['optId'];
		$quest['answer'][$j]['options'] = $temp['options'];			
		$quest['answer'][$j]['is_col'] = $temp['is_col'];	
		$quest['answer'][$j]['is_otherop'] = $temp['is_otherop'];
		$quest['answer'][$j]['num'] = 0;			
		$quest['answer'][$j]['col_num'] = array();
		$quest['answer'][$j]['otherop'] = "";
		++$j;
	}		
}
function GetUserProblem($cat){
	include('conn.php');
	$question = array();
	$insertSQL = sprintf("SELECT id,question,is_multiple FROM problem WHERE cat = %s AND visible = '1' ",
						 GetSQLValueString($cat,'long')
						 );
	$result = mysql_query($insertSQL) or die(mysql_error());
	$questpool = array();
	$i=0;
	while($temp = mysql_fetch_assoc($result) ){
		$questpool[$i]['id'] = $temp['id'];
		$questpool[$i]['question'] = $temp['question'];			
		$questpool[$i]['is_multiple'] = $temp['is_multiple'];	
		$questpool[$i]['textarea'] = "";			
		$i++;
	}		
	$question = $questpool;
	foreach($question as &$quest){
		GetOption($quest);		
	}
	return $question;
}
function GetTopic(){
	include('conn.php');
	$insertSQL = sprintf("SELECT id from topic WHERE visible = '1' ");
	$result = mysql_query($insertSQL,$sql_db) or die(mysql_error());	

	$topic = array();
	$i=0;
	while($temp = mysql_fetch_assoc($result) ){
		$topic[$i]['id'] = $temp['id'];
		$i++;
	}			
	return $topic;
}
function constructProblem()
{
	$topic = GetTopic();	
	
	// topics
	for($i=0;$i<count($topic);$i++)
	{
		if($i == 0) $question = GetUserProblem($topic[$i]['id']);		
		else $question = array_merge($question,GetUserProblem($topic[$i]['id']));
	}	

	for($i=0;$i<count($question);$i++) //count($question)
	{		
		if($question[$i]['is_multiple'] == 4)
		{			
			$k = 0;			
			for($j=0;$j<count($question[$i]['answer']);$j++)
			{				
				if($question[$i]['answer'][$j]['is_col'] == 1)
				{						
					$k++;
				}				
			}			
			for($j=0;$j<count($question[$i]['answer']);$j++)
			{
				for($l=0;$l<$k;$l++)
				{ 
					$question[$i]['answer'][$j]['col_num'][$l]['num'] = 0;				
					$question[$i]['answer'][$j]['col_num'][$l]['options'] = $question[$i]['answer'][$l]['options'];		
				}
			}
		}
	}	
	//print_r ($question[0]);
	
	return $question;
}
function staticSelectedAns($problem,$userAns)
{	
	$problem = analysisUserSelRecord($problem,$userAns);	
	
	$problem = analysisOtherop($problem,$userAns);	
	$problem = analysisTextarea($problem,$userAns);	
	return $problem;
}
function analysisUserSelRecord($problem,$userAns)
{
	// 去除 [  , ] , "    
	$pattern = array('/"/',"/\[/","/\]/");
	$replace = array('','',',');
	$userSeletedRecord = preg_replace($pattern,$replace,$userAns['SelectedRecord']);		
	
	$Array_UserSeletedRecord = spliti(',',$userSeletedRecord,'-1');
	
	// deal with userselectedrecord
	for($i=0;$i<count($Array_UserSeletedRecord);$i++) 
	{
		$tmp = split('_',$Array_UserSeletedRecord[$i],'-1');
		
		if(count($tmp) >3)
		{
			// 方格			
			$pattern = "/q_(\d+)a_r(\d+)_(\d+)/";
			preg_match($pattern,$Array_UserSeletedRecord[$i],$match);					
			$index = getProblemIndex($match[1],$problem);
			if($index != -1)
			{
				$problem[$index]['answer'][$match[2]]['col_num'][$match[3]]['num']++;			
			}					
		}
		else
		{
			//  單、複選
			$pattern = "/q_(\d+)a_(\d+)/";
			preg_match($pattern,$Array_UserSeletedRecord[$i],$match);						
			$index = getProblemIndex($match[1],$problem);
			if($index != -1)
			{
				$problem[$index]['answer'][$match[2]]['num'] ++;
			}
		}	
	}	
	return $problem;
}
function analysisOtherop($problem,$userAns)
{
	$Array_Otherop = spliti(',',$userAns['otherop'],'-1');
	// deal with other options
	for($i=0;$i<count($Array_Otherop);$i++) 
	{		
		$tmp = split('_',$Array_Otherop[$i],'-1');	
		// 方格
		$pattern = "/q_(\d+)a_r(\d+)@([^>]*)/";
		if(preg_match($pattern,$Array_Otherop[$i],$match))
		{
			
			$index = getProblemIndex($match[1],$problem);
			if($index != -1)
			{
				$problem[$index]['answer'][$match[2]]['otherop'] .= $match[3]."<hr>";			
			}			
		}
		else
		{
			$pattern = "/q_(\d+)a_(\d+)@([^>]*)/";
			preg_match($pattern,$Array_Otherop[$i],$match);
			$index = getProblemIndex($match[1],$problem);
			if($index != -1)
			{
				
				$problem[$index]['answer'][$match[2]]['otherop'] .= $match[3]."<hr>";
			}			
		}			
	}
	return $problem;
}
function analysisTextarea($problem,$userAns)
{
	$Array_Textarea = spliti(',',$userAns['textarea'],'-1');
	//deal with text area
	for($i=0;$i<count($Array_Textarea);$i++) 
	{			
		// 文字
		// deal with userselectedrecord
		$pattern = "/q_(\d+)a_options@([^>]*)/";
		preg_match($pattern,$Array_Textarea[$i],$match);
		$index = getProblemIndex($match[1],$problem);
		if($index != -1)
		{
			$problem[$index]['textarea'] .= $match[2]."<hr>";
		}			
					
	}
	return $problem;
}
function print_problem($problem)
{
	for($i=0;$i<count($problem);$i++)
	{
		echo "Problem id: ".$problem[$i]['id']."<br>";
		echo "Problem question: ".$problem[$i]['question']."<br>";
		echo "Problem type: ".$problem[$i]['is_multiple']."<br>";		
		echo "Problem textarea: ".$problem[$i]['textarea']."<br>";
		echo "Problem answer: <br>";
		for($j=0;$j<count($problem[$i]['answer']);$j++)
		{
			echo "*************************<br>";
			echo "\tanswer id: ".$problem[$i]['answer'][$j]['optId']."<br>";
			echo "\tanswer options: ".$problem[$i]['answer'][$j]['options']."<br>";
			echo "\tanswer is_col: ".$problem[$i]['answer'][$j]['is_col']."<br>";
			echo "\tanswer num: ".$problem[$i]['answer'][$j]['num']."<br>";
			if($problem[$i]['is_multiple'] != 3) echo "\tanswer otherop: ".$problem[$i]['answer'][$j]['otherop']."<br>";
			for($k=0;$k<count($problem[$i]['answer'][$j]['col_num']);$k++)
			{
				echo "\t\tanswer col_num ".$k.": ".$problem[$i]['answer'][$j]['col_num'][$k]['num']."<br>";
			}			
		}
		echo "--------------------------------------------------------------------------------------------<br><br>";
	}
	
}
function getProblemIndex($qid,$problem)
{
	for($i=0;$i<count($problem);$i++)
	{		
		if($problem[$i]['id'] == $qid)
			return $i;
	}
	return -1;
}

//****************************************************** display statistic result API*******************************/
function show_problem($problem)
{
	for($i=0;$i<count($problem);$i++)
	{			
		$qid = $i+1;
		echo $qid.'. '.$problem[$i]['question'].'<br>';
		if($problem[$i]['is_multiple'] == 1 || $problem[$i]['is_multiple'] == 2)
		{ 
			//單選、複選
			drawCircChart($problem[$i]['answer'],$i);
			drawtable($problem[$i]['answer'],$i);
			drawOther($problem[$i]['answer']);
		}
		else if($problem[$i]['is_multiple'] == 3)
		{
			//文字題
			echo '<table border="1" width="800">';			
			$textarea = $problem[$i]['textarea'];
		    if($textarea)
			{	
			   echo "<tr><td>";
			   echo $textarea;
			   echo "</tr></td>";
			}
			echo '</td></tr></table>';
		}
		else
		{			
			drawGridtable($problem[$i]['answer'],$i);
			drawOther($problem[$i]['answer']);
		}	
		echo '<br>';
	}
}
function drawCircChart($answer,$qid)
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
		
		for($i=0;$i<count($answer);$i++)
		{
			if($i<count($answer)-1)
			{
				echo "['".$answer[$i]['options']."', ".$answer[$i]['num']."],";
			}
			else
			{
				echo "['".$answer[$i]['options']."', ".$answer[$i]['num']."]";
			}	
		}
			
        echo ']);';

        echo 'var options = {
          title: \' \'
        };

        var chart = new google.visualization.PieChart(document.getElementById("chart_div'.$qid.'"));
        chart.draw(data, options);
      }
    </script>';
	
	
}
// send answer array
function drawtable($answer,$qid)
{
	$sum = 0;
	$total = count($answer)+2;
	echo '<table border="1" width = "800">
     <tr align="center">		
       <td>選項</td>
	   <td>人數</td>';   
	 echo '</tr>';
	
	for($i=0;$i<count($answer);$i++)
	{		
		echo '<tr align="center">';
		echo "<td>".$answer[$i]['options']."</td>";
		echo "<td  width = '10%' >".$answer[$i]['num']."</td>";
		$sum += $answer[$i]['num'];		
		echo '</tr>';
	}		
		
   
   echo '<tr align="center">';
   echo "<td>總計</td>";
   echo "<td>".$sum."</td>";
   echo '</tr>';
   
   echo '<tr>			
			<td colspan="2" align="center"><a id="chart_div'.$qid.'"></a></td>
		</tr>';   
   echo '</table>';   
   
}
function drawGridtable($answer,$qid)
{
	
	$total = count($answer)+2;
	echo '<table border="1" width = "800">';
	
    echo '<tr align="center">';
	echo '<td></td>';
	$colnum = 0;
	for($i=0;$i<count($answer);$i++)
	{
		if($answer[$i]['is_col'])
		{
			echo '<td>'.$answer[$i]['options'].'</td>';	   
			$colnum++;
		}	
	} 
	echo '<td>總計</td>';
	echo '<td>統計圖</td>';
	 echo '</tr>';
	$count_other = 0;
	for($i=0;$i<count($answer)-$colnum;$i++)
	{		
		echo '<tr align="center">';
		echo "<td>".$answer[$i+$colnum]['options']."</td>";
		$sum = 0;
		
		for($j=0;$j<count($answer[$i+$colnum]['col_num']);$j++)
		{
			echo "<td>".$answer[$i+$colnum]['col_num'][$j]['num']."</td>";
			$sum += $answer[$i+$colnum]['col_num'][$j]['num'];				
		}	
		echo "<td>".$sum."</td>"; 
		$qid .= 'r'.$i;
		drawCircChart($answer[$i+$colnum]['col_num'],$qid);
		echo '<td colspan="2" align="center"><a id="chart_div'.$qid.'"></a></td>';
		echo '</tr>';
	}	
   echo '</table>';    
}
function drawOther($answer)
{
	for($i=0;$i<count($answer);$i++)
	{
		if($answer[$i]['is_otherop'] && $answer[$i]['otherop'])
		{
			echo '<table border="1" width="800">
				 <tr>
					<td rowspan="2" width="30%">'.$answer[$i]['options'].'</td>
				</tr>';
		   	
		   echo "<tr><td>";
		   echo $answer[$i]['otherop'];
		   echo "</tr></td>";
			
			echo '</td></tr></table>';
		}
	}	
}
?>