<? require_once("Connections/connection.php"); ?>
<? 
	$sId=$_GET['sId'];
	$cat=$_GET['cat'];		

	/* set table's name to insert according to session's cat */
	if($cat==2){
		$tableName="literature";			
	}else if($cat==3){
		$tableName="social_management";
	}else if($cat==4){
		$tableName="sci_eng_mar";			
	}
	
	$query="
		SELECT correctAns, questionSeq, answerSeq, ans1, ans2, ans3, ans4, ans5, ans6, ans7, ans8, ans9, ans10
		FROM ".$tableName."
		WHERE sId='".$sId."'
	";
	$record=mysql_query($query);
	$row_record=mysql_fetch_assoc($record)or die(mysql_error()." can't get the correctAns!");	
	//save the user's answer into array
	for($i=1;$i<=10;$i++){
		$userAns[$i]=$row_record['ans'.$i];
	}
	$ans=explode(',',$row_record['correctAns']);	
	//save question sequence from session to $qs variable before releasing the session.
	$qs=explode(',',$row_record['questionSeq']);
	//save answer sequence from session to $groupAS before releasing.
	$groupAS=explode(';',$row_record['answerSeq']); 	
	for($i=0;$i<count($groupAS);$i++){
		$ansSeq[$i]=explode(',',$groupAS[$i]);
	}
	$querySolution="
		SELECT qId, answer, solution
		FROM problem
		ORDER BY qId ASC
	";
	$solRecord=mysql_query($querySolution)or die(mysql_error()." Can't get the solution!");	
	$totalRows=mysql_num_rows($solRecord);
	for($i=1;$i<=$totalRows;$i++){
		$solRow=mysql_fetch_assoc($solRecord);
		$sol[$i]=$solRow['solution'];
	}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>檢視使用者答錯之題目</title>
<style type="text/css">
<!--
.style1 {color: #FFFF00}
-->
</style>
</head>
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
		color:#999999;
		padding:5px;
		margin:5px;
		font-size:11px;
	}
	.solution{
		margin:5px;
		padding:5px;
		background-color:#FF9;
		
	}
.style2 {font-weight: bold}
</style>

<body>
   	<?
		/* Query problems and options */
		$questQuery="
			SELECT problem.question, problem.hint, answer.options
			FROM problem
			LEFT JOIN answer on problem.qId=answer.qId
			ORDER BY problem.qId, answer.optId ASC
		";
		//define variables
		$question[21];
		$options[21][4];
		$hint[21];			
		$questRecord=mysql_query($questQuery) or die(mysql_error()." can't do query!");
		$totalRows=mysql_num_rows($questRecord);
		for($i=1;$i<=$totalRows;$i++){
			for($j=1;$j<=4;$j++){
				$questRowRecord=mysql_fetch_assoc($questRecord);
				if($j==1){
					$question[$i]=$questRowRecord['question'];
					$hint[$i]=$questRowRecord['hint'];
				}
				$options[$i][$j]=$questRowRecord['options'];
			}				
		}
	?>
    <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
    <tr>
    <td>&nbsp;</td>
    </tr>
    <tr>
    <td>
    <?
    	for($i=0;$i<10;$i++){
			//if the answer is wrong then show question, hint, options and solution
			if($userAns[$i+1]!=$ans[$i]){
				//print out questions and options								
				echo "<div class=\"questionArea\">";
				echo ($i+1).". ".$question[$qs[$i]]."<br>\n";				
				echo "<div class='hintArea'>hint: ".$hint[$qs[$i]]."</div>";
				echo "<div class='optionAreaWrap'>";
				for($j=0;$j<4;$j++){				
					echo "<div class=\"optionArea\">";
					if($userAns[$i+1]==($j+1)){
						echo "<input type=\"radio\" name=\"q".($i+1)."\" id=\"q".($i+1)."c".($j+1)."\" value='".($j+1)."' checked />";
						echo "<label for=\"q".($i+1)."c".($j+1)." \"><font color='red'>".$options[$qs[$i]][$ansSeq[$i][$j]]."(X)-答錯!</font></label>";
					}else{
						echo "<input type=\"radio\" name=\"q".($i+1)."\" id=\"q".($i+1)."c".($j+1)."\" value='".($j+1)."' disabled=\"disabled\" />";	
						echo "<label for=\"q".($i+1)."c".($j+1)." \">".$options[$qs[$i]][$ansSeq[$i][$j]]."</label>";
					}							
					
					echo "</div>";	
				}
				echo "</div>";
				echo "<div class='solution'><u>取得解答途徑：</u><br>".$sol[$qs[$i]]."</div>";
				echo "</div>";
			}
		}
	?>
    </td>
    </tr>

    </table>
</body>
</html>
</body>
</html>
