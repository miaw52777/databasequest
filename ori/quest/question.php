<? require_once("Connections/connection.php"); ?>
<?
	/* Start session and check whether the user has filled out the personal information form */
	session_start();
	if(!$_SESSION['isLogin']){
		header("refresh:0; url='index.php'");
	}
	/* save the starting time to session "start" variable */
	date_default_timezone_set ("Asia/Taipei"); 
	$_SESSION['start']=date("Y-m-d H:i:s");		
	
	/* define variable */
	$questSeq[11]; //save the sequence of question that is randomized
	$question[11]; //save the questions
	$hint[11];	//save the hints
	$options[11][4]; //save the options
	$buff; //buffer for randoming the question and answer
	$optBuff;
	$correctAnswer[11]; //contain the correct answer after randomize
	$optionId[11][4];
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
	$totalRows=mysql_num_rows($record)/4;
	
	/* Query the questionnaire for general questions */		
	//query data 
	for($i=0;$i<$totalRows;$i++){
		for($j=0;$j<4;$j++){
			$row_record=mysql_fetch_assoc($record);
			if($j==0){
				$questSeq[$i]=$row_record['qId']; //put question seq to array
				$question[$questSeq[$i]]=$row_record['question']; //put question to array that map to $questSeq
				$hint[$questSeq[$i]]=$row_record['hint']; //put hint to array that map to $questSeq
				$correctAnswer[$questSeq[$i]]=$row_record['answer']; //put correct answer before randomize to an array that map to $questSeq
			}
			$options[$questSeq[$i]][$j]=$row_record['options'];
			$optionId[$questSeq[$i]][$j]=$row_record['optId'];
		}		
	}
	//Query the questionnaire questions based on the chosen college 		
	//$sQuery : specified query for particular department
	if($_SESSION['cat']==2){
		// Query for 文學院
		$sQuery="
			SELECT *
			FROM problem 
			LEFT JOIN answer on problem.qId=answer.qId
			WHERE problem.cat='2'
			ORDER BY problem.qId, answer.optId ASC			
		";	
	}
	else if($_SESSION['cat']==3){
	// Query for 社管
		$sQuery="
			SELECT *
			FROM problem 
			LEFT JOIN answer on problem.qId=answer.qId
			WHERE problem.cat='3'		
			ORDER BY problem.qId, answer.optId ASC			
		";	
	}	
	else if($_SESSION['cat']==4){
	// Query for 理工海
		$sQuery="
			SELECT *
			FROM problem 
			LEFT JOIN answer on problem.qId=answer.qId
			WHERE problem.cat='4'		
			ORDER BY problem.qId, answer.optId ASC			
		";	
	}
	//echo $sQuery;
	//echo $_SESSION['cat'].", test";
	$record=mysql_query($sQuery) or die(mysql_error());
	$sQueryTotal=mysql_num_rows($record)/4;
	//echo "sQueryTotal=".$sQueryTotal."<br>";
	//query data 
	for($i=$totalRows;$i<($sQueryTotal+$totalRows);$i++){
		//all of the answers are multiple choices(4) with single answer
		for($j=0;$j<4;$j++){
			$row_record=mysql_fetch_assoc($record);
			if($j==0){
				$questSeq[$i]=$row_record['qId'];
				$question[$questSeq[$i]]=$row_record['question'];
				$hint[$questSeq[$i]]=$row_record['hint']; //put hint to array that map to $questSeq
				$correctAnswer[$questSeq[$i]]=$row_record['answer']; //put correct answer to array that map to $questSeq
			}
			$options[$questSeq[$i]][$j]=$row_record['options'];
			$optionId[$questSeq[$i]][$j]=$row_record['optId'];
		}		
	}	
		
	/* randomize sequence */
	for($i=0;$i<($sQueryTotal+$totalRows);$i++){
		$rand=rand()%($sQueryTotal+$totalRows);
		$buff=$questSeq[$i];
		$questSeq[$i]=$questSeq[$rand];
		$questSeq[$rand]=$buff;		
	}	
	/* save question sequence to session */
	for($i=0;$i<10;$i++){
		if($i==0)$qs=$questSeq[$i];
		else $qs=$qs.",".$questSeq[$i];
	}
	$_SESSION['questionSeq']=$qs;
	
	/* randomize general options' sequence */
	for($i=0;$i<10;$i++){
		$befRandom[$i]=$correctAnswer[$questSeq[$i]];
		for($j=0;$j<4;$j++){			
			$rand=(rand()*(rand()%7))%4;
			if(($j+1)==$correctAnswer[$questSeq[$i]]){
				$correctAnswer[$questSeq[$i]]=($rand+1);	//+1 to adjust the number to fit the "answer number" (without +1 is for array numbering)
			}			
			else if(($rand+1)==$correctAnswer[$questSeq[$i]]){
				$correctAnswer[$questSeq[$i]]=($j+1);
			}
			//echo "rand=".($rand+1).",j=".($j+1).",correctAns[".$i."]aftRand=".$correctAnswer[$questSeq[$i]]."<br>";
			$buff=$options[$questSeq[$i]][$j];
			$optBuff=$optionId[$questSeq[$i]][$j];
			$options[$questSeq[$i]][$j]=$options[$questSeq[$i]][$rand];
			$optionId[$questSeq[$i]][$j]=$optionId[$questSeq[$i]][$rand];
			$options[$questSeq[$i]][$rand]=$buff;
			$optionId[$questSeq[$i]][$rand]=$optBuff;
		}					
	}	
	for($i=0;$i<10;$i++){
		if($i==0){
			$ans=$correctAnswer[$questSeq[$i]];
		}else{
			$ans=$ans.",".$correctAnswer[$questSeq[$i]];		
		}
		for($j=0;$j<4;$j++){
			if($i==0 && $j==0)$os=$optionId[$questSeq[$i]][$j];
			else if($i!=0 && $j==0)$os=$os.";".$optionId[$questSeq[$i]][$j];
			else $os=$os.",".$optionId[$questSeq[$i]][$j];			
		}
	}
	//echo $os; //os is option sequence
	//save options sequence to session
	$_SESSION['answerSeq']=$os;
	
	//save correct answer to session
	$_SESSION['correctAnswer']=$ans;
	//echo $_SESSION['correctAnswer'];
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>98年中山大學圖資處圖書館周系列活動(1)-中山誰最"庫"?!動動手指拿大獎!</title>
<style type="text/css">
	.questionArea{
		background-color:#F0F0F0;
		border:solid 1px #999999;
		padding:10px;
		margin-bottom:10px;
		color:#000066;
	}
	.optionAreaWrap{
		padding:5px;
		margin:5px;
		background-color:#FAFAFA;
		border:solid 3px #FFFFFF;
		display:block;
	}
	.optionArea{
		margin: 3px 0px 3px 15px;
		color:#000000;
	}
	.hintArea{
		color:#808000;
		padding:5px;
		margin:5px;
		font-size:11px;
	}
</style>
<script type="text/javascript">
	function chooseAction(action){
		if(action=="送出答案"){
			if(confirm("您確定要送出答案了嗎？")){
				document.questionnaire.action="submitQuest.php";	
				return true;
			}else{
				return false;	
			}
			
		}else{
			document.questionnaire.action="saveQuest.php";
			return true;
		}
	}
</script>
</head>
<body>
		<p align="center">
		<img border="0" src="img/title1.gif" width="602" height="262">
		</p>
<table width="800" border="0" align="center" cellpadding="10" cellspacing="0">
  <tr>
    <td><table width="800" border="0" cellspacing="0">
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td>   
    	<form id="questionnaire" name="questionnaire" method="post">        
    	<?
			//print out questions and options
			for($i=0;$i<10;$i++){				
				echo "<div class=\"questionArea\">";
				echo ($i+1).". ".$question[$questSeq[$i]]."<br>\n";				
				echo "<div class='hintArea'><b>HINT:</b> ".$hint[$questSeq[$i]]."</div>";
				echo "<div class='optionAreaWrap'>";
				for($j=0;$j<4;$j++){				
					echo "<div class=\"optionArea\"><input type=\"radio\" name=\"q".($i+1)."\" id=\"q".($i+1)."c".($j+1)."\" value='".($j+1)."' />"."<label for=\"q".($i+1)."c".($j+1)."\">".$options[$questSeq[$i]][$j]."</label></div>";		
				}
				echo "</div></div>";
			}
		?>
        <div style="margin-top:20px; text-align:center;">
			<input type="button" value="回上一頁" style="margin-left:10px;" onclick="if(confirm('您要回上一頁並重新填寫問卷嗎？'))window.location='index.php';" />        	
           	<input type="submit" onclick="return chooseAction(this.value);" value="暫存答案" style="margin-right:10px; margin-left:10px;" />
            <input type="submit" onclick="return chooseAction(this.value);" value="送出答案" style="margin-right:10px; margin-left:10px;" />
           	
        </div>
        </form>
    </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>

	
</body>
</html>
