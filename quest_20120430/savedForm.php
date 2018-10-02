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

	/* select database */	
	mysql_select_db($database_connection);			
	mysql_query("SET NAMES UTF8");
	
	/* Query the saved questions and answers SEQUENCE*/
	//if the user is from college-category 2, then query literature form
	if($_SESSION['cat']==2){
		$query="
			SELECT * 
			FROM literature
			WHERE sId='".$_SESSION['sId']."'
		";
	}
	//if the user is from college-category 3, then query social_management
	else if($_SESSION['cat']==3){
		$query="
			SELECT *
			FROM social_management
			WHERE sId='".$_SESSION['sId']."'
		";
	}
	//if the user is from college-category 4, then query sci_eng_mar
	else if($_SESSION['cat']==4){
		$query="
			SELECT *
			FROM sci_eng_mar
			WHERE sId='".$_SESSION['sId']."'
		";
	}	
	//echo $_SESSION['cat'];
	//echo $query;
	$record=mysql_query($query) or die(mysql_error().", can't get user data!");
	$row_record=mysql_fetch_assoc($record) or die(mysql_error()." can't fetch data!");
	for($i=0;$i<10;$i++){
		$ans[$i]=$row_record[('ans'.($i+1))];
	}
	$qs=explode(',',$row_record['questionSeq']);
	$_SESSION['questionSeq']=$row_record['questionSeq'];
	$groupAS=explode(';',$row_record['answerSeq']); 
	$_SESSION['answerSeq']=$row_record['answerSeq'];
	$_SESSION['correctAnswer']=$row_record['correctAns'];
	for($i=0;$i<count($groupAS);$i++){
		$ansSeq[$i]=explode(',',$groupAS[$i]);
	}
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
<script type="text/Javascript">
	function checkForm(act){
		//if act == "送出答案" then submit form
		if(act=="送出答案"){
			document.questionnaire.action="submitQuest.php";
		}else if(act=="儲存"){
			document.questionnaire.action="saveQuest.php";
		}
		return true;
		//if act == "儲存" then save form
	}
</script>

</head>

<body>
    <p align="center">
    <img border="0" src="img/title1.gif" width="602" height="262">
    </p>
    <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>
            <form id="questionnaire" name="questionnaire" method="post">        
                <?
                    echo "<input type='hidden' id='category' name='category' value='".$cat."' />";
                    //print out questions and options
                    for($i=0;$i<10;$i++){				
                        echo "<div class=\"questionArea\">";
                        echo ($i+1).". ".$question[$qs[$i]]."<br>\n";				
                        echo "<div class='hintArea'><b>HINT:</b> ".$hint[$qs[$i]]."</div>";
                        echo "<div class='optionAreaWrap'>";
                        for($j=0;$j<4;$j++){				
                            echo "<div class=\"optionArea\">";
							if($ans[$i]==($j+1)){
								echo "<input type=\"radio\" name=\"q".($i+1)."\" id=\"q".($i+1)."c".($j+1)."\" value='".($j+1)."' checked />";
							}else{
								echo "<input type=\"radio\" name=\"q".($i+1)."\" id=\"q".($i+1)."c".($j+1)."\" value='".($j+1)."' />";	
							}							
							echo "<label for=\"q".($i+1)."c".($j+1)."\">".$options[$qs[$i]][$ansSeq[$i][$j]]."</label>";
							echo "</div>";		
                        }
                        echo "</div></div>";
                    }
                ?>
                <div style="margin-top:20px; text-align:center;">
                    <input type="submit" onclick="return checkForm(this.value);" value="儲存" style="width:100px; margin-right:10px;"  />
                    <input type="submit" onclick="return checkForm(this.value);" value="送出答案" style="width:100px; margin-left:10px;" />
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
