<? require_once("Connections/connection.php"); ?>
<? 
	session_start();
	$ans=explode(',',$_SESSION['correctAnswer']);	

	/* set default timezone */
	date_default_timezone_set ("Asia/Taipei"); 

	/* set table's name to insert according to session's cat */
	if($_SESSION['cat']==2){
		$tableName="literature";			
	}else if($_SESSION['cat']==3){
		$tableName="social_management";
	}else if($_SESSION['cat']==4){
		$tableName="sci_eng_mar";			
	}
	
	/* calculate score */
	$score=0;
	for($i=1;$i<=10;$i++){
		if($ans[($i-1)]==$_POST['q'.$i])$score++;
		if($i==10)$score=$score*10;
	}
	
	/* check if the user has submitted or saved a questionnaire before */
	$record=mysql_query("SELECT * FROM login_status WHERE sId='".$_SESSION['sId']."'");
	//if the record is not exist then insert new record to its login_status and department
	if(!($row_record=mysql_fetch_assoc($record))){			
		$insert="
			INSERT INTO ".$tableName."(status, name, sId, college, department, email, phone, ans1, ans2, ans3, ans4, ans5, ans6, ans7, ans8, ans9, ans10, score, correctAns, questionSeq, answerSeq, start, end)
			VALUES('".$_SESSION['status']."','".$_SESSION['name']."','".$_SESSION['sId']."','".$_SESSION['college']."','".$_SESSION['department']."','".$_SESSION['email']."','".$_SESSION['phone']."',
				   '".$_POST['q1']."','".$_POST['q2']."','".$_POST['q3']."','".$_POST['q4']."','".$_POST['q5']."','".$_POST['q6']."','".$_POST['q7']."',
				   '".$_POST['q8']."','".$_POST['q9']."','".$_POST['q10']."','".$score."','".$_SESSION['correctAnswer']."','".$_SESSION['questionSeq']."','".$_SESSION['answerSeq']."','".$_SESSION['start']."','".date("Y-m-d H:i:s")."');
		";
		//echo $insert;
		mysql_query($insert)or die(mysql_error()." can't insert into table!");					
		//insert into its login status
		$insertStatus="
			INSERT INTO login_status(sId,submitted,cat)
			VALUES ('".$_SESSION['sId']."','1','".$_SESSION['cat']."');
		";
		mysql_query($insertStatus) or die(mysql_error()." can't insert into login status!");		
	}
	//if the record already existed in the login_status table, then update its department table's value
	else{
		//update its department's value
		$update="
			UPDATE ".$tableName."
			SET status='".$_SESSION['status']."', name='".$_SESSION['name']."', sId='".$_SESSION['sId']."', college='".$_SESSION['college']."', department='".$_SESSION['department']."',
			email='".$_SESSION['email']."', phone='".$_SESSION['name']."', ans1='".$_POST['q1']."', ans2='".$_POST['q2']."', ans3='".$_POST['q3']."', ans4='".$_POST['q4']."', ans5='".$_POST['q5']."',
			ans6='".$_POST['q6']."', ans7='".$_POST['q7']."', ans8='".$_POST['q8']."', ans9='".$_POST['q9']."', ans10='".$_POST['q10']."', score='".$score."', end='".$_SESSION['end']."'
			WHERE sId='".$_SESSION['sId']."';
		";		
		mysql_query($update) or die(mysql_error()." can't update table!");			
		//update login status, set the submitted value to be 1
		$updateLogin="
			UPDATE login_status
			SET submitted='1'
			WHERE sId='".$_SESSION['sId']."';
		";
		mysql_query($updateLogin)or die(mysql_error()." can't update login status!");		
	}
	//echo "correct answer=".$_SESSION['correctAnswer']."<br/>";
	
	//save question sequence from session before releasing.
	$qs=explode(',',$_SESSION['questionSeq']);
	//save answer sequence form session before releasing.
	$groupAS=explode(';',$_SESSION['answerSeq']); 	
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
	session_unset();
	session_destroy();
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>上傳問卷</title>
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
			if($_POST['q'.($i+1)]!=$ans[$i]){
				//print out questions and options								
				echo "<div class=\"questionArea\">";
				echo ($i+1).". ".$question[$qs[$i]]."<br>\n";				
				echo "<div class='hintArea'>hint: ".$hint[$qs[$i]]."</div>";
				echo "<div class='optionAreaWrap'>";
				for($j=0;$j<4;$j++){				
					echo "<div class=\"optionArea\">";
					if($_POST['q'.($i+1)]==($j+1)){
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
    <tr>
    	<td bgcolor="#0099FF" height="30" align="center">
        	<font color="white" size="14px;">若無法參與課程說明會，也可瀏覽<a href="http://www.libcc.nsysu.edu.tw/course/view.php?id=109">課程講義</a>自我學習唷！</font>
        </td>
    </tr>
    </table>
	<script type="text/javascript">
		alert("恭喜您已完成填寫此問卷!本問卷抽獎結果將在某月某日公布於XXX");
	</script>
</body>
</html>
