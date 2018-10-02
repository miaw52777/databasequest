<?php 
include('secure.php');
if(!is_login()){
	header("Location:./");
	exit;
}
if(isset($_POST['action'])){

	include('conn.php');	
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
	function GetTopic(){
		include('conn.php');
		$insertSQL = sprintf("SELECT id,title,hint from topic WHERE visible = '1' ");
		$result = mysql_query($insertSQL,$sql_db) or die(mysql_error());	

		$topic = array();
		$i=0;
		while($temp = mysql_fetch_assoc($result) ){
			$topic[$i]['id'] = $temp['id'];
			$topic[$i]['title'] = $temp['title'];			
			$topic[$i]['hint'] = $temp['hint'];
			$i++;
		}			
		return $topic;
	}	
	function GetUserData($UID){
		include('conn.php');
		$insertSQL = sprintf("SELECT user.name'name',college.name'collegename',ident.name'identname',SelectedRecord,textarea,otherop,depart_id,endtime FROM user " .
						 	 "LEFT JOIN ident ON ident.id = user.ident_id " .
						  	 "LEFT JOIN depart ON depart.id = user.depart_id " .
						 	 "LEFT JOIN college ON college.id = depart.college_id " .
							 "WHERE user.id = %s",
							 GetSqlValueString($UID,'long'));
		$result = mysql_query($insertSQL,$sql_db) or die(mysql_error());			
		return mysql_fetch_array($result);
	}
	function GetOption(&$quest){
		include('conn.php');
		$insertSQL = sprintf("SELECT quest_id,optId,options,is_otherop,is_col,is_jump,jq_id FROM answer WHERE quest_id = %s",
							 GetSqlValueString($quest['id'],'long')
							 );
		$result = mysql_query($insertSQL) or die(mysql_error());
		$j=0;
		while($temp = mysql_fetch_assoc($result)){
			$quest['answer'][intval($j)]['quest_id'] = $temp['quest_id'];
			$quest['answer'][$j]['optId'] = $temp['optId'];
			$quest['answer'][$j]['options'] = $temp['options'];			
			$quest['answer'][$j]['is_otherop'] = $temp['is_otherop'];	
			$quest['answer'][$j]['is_col'] = $temp['is_col'];	
			$quest['answer'][$j]['is_jump'] = $temp['is_jump'];	
			$quest['answer'][$j]['jq_id'] = $temp['jq_id'];				
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
			$questpool[$i]['qid'] = $temp['id'];
			$questpool[$i]['question'] = $temp['question'];			
			$questpool[$i]['is_multiple'] = $temp['is_multiple'];
			$questpool[$i]['cat'] = $cat;				
			$i++;
		}		
		$question = $questpool;
		foreach($question as &$quest){
			GetOption($quest);
			unset($quest['id']);
		}
		return $question;
	}
	
	// main action
	switch($_POST['action']){
		case 'query_quest':
		if(is_submited($UID)){
			$_POST['submit']=true;	
		}		
		if(isset($_POST['submit'])){
			UpdateUserFinishTime($UID);
		}
		$user = GetUserData($UID);
		$topic = GetTopic();	
		
		// topics
		for($i=0;$i<count($topic);$i++)
		{
			if($i == 0) $question = GetUserProblem($topic[$i]['id']);		
			else $question = array_merge($question,GetUserProblem($topic[$i]['id']));
		}		
		
		if(!isset($_POST['submit'])){
			echo json_encode(array('success' => true , 'topic' => $topic, 'data' => $question,'save'=>json_decode($user['SelectedRecord']) ,'text'=>($user['textarea']),'other'=>($user['otherop']),'endtime'=>false));
			exit;
		}else{				
			echo json_encode(array('success' => true , 'topic' => $topic, 'data' => $question,'save'=>json_decode($user['SelectedRecord']) ,'text'=>($user['textarea']),'other'=>($user['otherop']),'endtime'=>true));
			exit;
		}
	}
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>電子資源意見調查</title>
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
