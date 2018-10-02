<?php 
include('secure.php');
if(!is_login()){
	header("Location:./");
	exit;
}
if(isset($_POST['action'])){

	include('conn.php');
	function randArray(&$arr,$seed){
		srand($seed);
		$j = count($arr);
		for(;$j>0;--$j){
			$seld = rand(0,$j-1);
			$tmp = $arr[$seld];
			$arr[$seld] =$arr[$j-1];
			$arr[$j-1]= $tmp;
		}
	}
	function is_submited($UID){
		include('conn.php');
		$insertSQL = sprintf("SELECT count(*) FROM user WHERE id = %s AND endtime IS NOT NULL",
							 GetSqlValueString($UID,'long'));
		$result = mysql_query($insertSQL) or die(mysql_error());
		
		$arr = mysql_fetch_assoc($result);
		return $arr['count(*)'] == 1;
		
	}
	function UpdateUserFinishTime($UID){
		include('conn.php');
		$insertSQL = sprintf("UPDATE user SET endtime = NOW() WHERE id =  %s",
							 GetSqlValueString($UID,'long'));
		$result = mysql_query($insertSQL) or die(mysql_error());	
	}
	function UpdateUserScore($UID,$score){
		include('conn.php');
		$insertSQL = sprintf("UPDATE user SET score = %s WHERE id =  %s",
							 GetSqlValueString($score,'long'),
							 GetSqlValueString($UID,'long'));
		$result = mysql_query($insertSQL) or die(mysql_error());	
	}
	function GetUserData($UID){
		include('conn.php');
		$insertSQL = sprintf("SELECT user.name'name',college.name'collegename',ident.name'identname',RP,SelectedRecord,depart_id FROM user " .
						 	 "LEFT JOIN ident ON ident.id = user.ident_id " .
						  	 "LEFT JOIN depart ON depart.id = user.depart_id " .
						 	 "LEFT JOIN college ON college.id = depart.college_id " .
							 "WHERE user.id = %s",
							 GetSqlValueString($UID,'long'));
		$result = mysql_query($insertSQL,$sql_db) or die(mysql_error());
		return mysql_fetch_array($result);
	}
	function GetOption(&$quest,$RP){
		include('conn.php');
		$insertSQL = sprintf("SELECT quest_id,optId,options,is_answer FROM answer WHERE quest_id = %s",
							 GetSqlValueString($quest['id'],'long')
							 );
		$result = mysql_query($insertSQL) or die(mysql_error());
		$j=0;
		while($temp = mysql_fetch_assoc($result)){
			$quest['answer'][intval($j)]['quest_id'] = $temp['quest_id'];
			$quest['answer'][$j]['optId'] = $temp['optId'];
			$quest['answer'][$j]['options'] = $temp['options'];
			if(isset($_POST['submit'])){
				$quest['answer'][$j]['is_answer'] = $temp['is_answer'];
			}
			++$j;
		}
		randArray($quest['answer'],$RP + $quest['answer'][0]['quest_id']+1);
	}
	
	function GetUserProblem($RP,$cat,$limit){
		include('conn.php');
		$question = array();
		$insertSQL = sprintf("SELECT id,question,hint,solution,score,is_multiple FROM problem WHERE cat = %s AND visible = '1' ",
							 GetSQLValueString($cat,'long')
							 );
		$result = mysql_query($insertSQL) or die(mysql_error());
		$questpool = array();
		$i=0;
		while($temp = mysql_fetch_assoc($result) ){
			$questpool[$i]['id'] = $temp['id'];
			$questpool[$i]['question'] = $temp['question'];
			$questpool[$i]['hint'] = $temp['hint'];
			$questpool[$i]['is_multiple'] = $temp['is_multiple'];
			if(isset($_POST['submit'])){
				$questpool[$i]['solution'] = $temp['solution'];
				$questpool[$i]['score'] = $temp['score'];
			}
			$i++;
		}
		if($i > $limit){
			srand($RP + '挑題用種子');
			for($j=0;$j<$limit;++$j){//挑題
				$seld = rand(0,$i-1);
				$question[$j] = $questpool[$seld];
				$questpool[$seld] = $questpool[$i-1];
				$i--;
			}
		}else{
			$question = $questpool;
		}
		foreach($question as &$quest){
			GetOption($quest,$RP);
			unset($quest['id']);
		}
		return $question;
	}
	
switch($_POST['action']){
	case 'query_quest':
	if(is_submited($UID)){
		$_POST['submit']=true;	
	}
	
	
	if(isset($_POST['submit'])){
		UpdateUserFinishTime($UID);
	}
	$user = GetUserData($UID);
	if($user['identname'] == '大學生'){//抽十題基本題給他
			$question = GetUserProblem($user['RP'],1,10);
	
	}else{//剩下碩士博士教師
		//先抽五題基本題給他~
		
		if(in_array($user['depart_id'],array('1')) ){
			$question = GetUserProblem($user['RP'],1,5);
			$question = array_merge($question,GetUserProblem($user['RP'],2,5) );//再補特殊題
		}else if(in_array($user['depart_id'],array('4','6')) ){
			$question = GetUserProblem($user['RP'],1,5);
			$question = array_merge($question,GetUserProblem($user['RP'],3,5) );
		}else if(in_array($user['depart_id'],array('2','3','5')) ){
			$question = GetUserProblem($user['RP'],1,5);
			$question = array_merge($question,GetUserProblem($user['RP'],4,5) );
		}else{
		
			$question = GetUserProblem($user['RP'],1,10);
		//錯誤!!
		//error_log('selectQuest : 令人意外的學院類型'.$user['collegename']);
		}
	}
	//洗題序
	
	
	if(!isset($_POST['submit'])){
		echo json_encode(array('success' => true , 'data' => $question,'save'=>json_decode($user['SelectedRecord'])));
		exit;
	}else{
		$score = 0;
		$useranswer = json_decode($user['SelectedRecord']);
		foreach($useranswer as $value){//取得使用者勾選之答案
			preg_match("/^q_(\d+)a_(\d+)$/",$value,$res);
			$question[intval($res[1]-1)]['answer'][intval($res[2])]['checked'] = true;
		}
		foreach($question as &$quest){//檢查答案
			$correct= 0;//對的答案數
		
			foreach($quest['answer'] as &$ans){
				if( ($ans['is_answer']=='1' && isset($ans['checked'])) || 
					($ans['is_answer']=='0' && !isset($ans['checked']))
				){
					++$correct;	
				}
				unset($ans['is_answer']);
			}
			$quest['correct'] = $correct;
			if($quest['is_multiple'] == true){
				$score += $correct * $quest['score'] / 4;
			}else{
				if($correct == 4){
					$score += $quest['score'];
				}
			}
		}
		UpdateUserScore($UID,$score);
		echo json_encode(array('success' => true , 'data' => $question,'save'=>json_decode($user['SelectedRecord']),'score'=>$score,"ua" =>$useranswer));
		exit;
	}
}
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>中山誰最庫!?</title>
<script type="text/javascript" src='jquery-1.4.2.js'></script>
<script type="text/javascript" src='quest.js'></script>
<link rel="stylesheet" type="text/css" href="../style.css" media="screen" />
<style type="text/css">
	.questionArea{
		background-color:#F0F0F0;
		border:solid 1px #999999;
		padding:10px;
		margin-bottom:10px;
		color:#000066;
	}
	.questionArea.error{
		background-color:#F99999;
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
	.style20 {
		font-size: 18px;
		font-family: Geneva, Arial, Helvetica, sans-serif;
		color: #930;
		font-weight: bold;
	}
	.style21 {
		font-family: Geneva, Arial, Helvetica, sans-serif;
		color: #F30;
	}
</style>
<SCRIPT LANGUAGE="javascript">

function save(){
	alert("已暫存答案成功");
}
</SCRIPT>



</head>
<body>
<div id="header"></div>
<div id="page">
	<div id="content">
    	<div class="post">
        	<table width="609" border="0" cellpadding="0" cellspacing="0">
            	<tr>
                	<td width="250" height="98">&nbsp;</td>
                    <td><p align="right"><a href="../index.html">
					<img border="0" src="../images/home.jpg" width="85" height="96" align="right"></a></td>
                </tr>
            </table>
            <div class="entry">
            <div align="center">
            <table width="609" border="0" align="center" cellpadding="10" cellspacing="0">
              <tr>
                <td><table width="609" border="0" cellspacing="0">
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
                    <div id='quest_list'></div>
                    <div style="margin-top:20px; text-align:center;">
                        <input type="button" value="暫存答案" id='btn_save' style="margin-right:10px; margin-left:10px;" onclick="save()" />
                        <input type="button" value="送出答案" id='btn_submit' style="margin-right:10px; margin-left:10px;" />                
                    </div>
                    </form>
                </td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table>
            </div>
            </div>
        </div>
    </div>
	<div style="clear:both;"></div>
</div>
<div id="footer">
	<p>&nbsp;</p>
</div>

</body>
</html>
