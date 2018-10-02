<?php
include ('admsecure.php');
if(!is_login()){exit;}

function QueryTopicList(){
	include('conn.php');
	$insertSQL = sprintf("SELECT id,title,visible FROM topic ORDER BY id ");
	$result = mysql_query($insertSQL) or die(mysql_error());
	
	$i = 0;
	$out = array();
	while($tmp = mysql_fetch_assoc($result)){
		$out[$i] = $tmp;
		++$i;
	}
	return $out;
}
function QueryProblemList(){
	include('conn.php');
	$insertSQL = sprintf("SELECT id,cat,question,visible FROM problem ORDER BY cat,id ");
	$result = mysql_query($insertSQL) or die(mysql_error());
	
	$i = 0;
	$out = array();
	while($tmp = mysql_fetch_assoc($result)){
		$out[$i] = $tmp;
		++$i;
	}
	return $out;
}

function QueryProblem($id){
	include('conn.php');
	$insertSQL = sprintf("SELECT id,cat,question,is_multiple FROM problem WHERE Id =  %s",
						 GetSQLValueString($id,'long'));
	$result = mysql_query($insertSQL) or die(mysql_error());
	$out = mysql_fetch_assoc($result);
	
	$insertSQL = sprintf("SELECT optId,options,is_otherop,is_jump,jq_id,is_col FROM answer WHERE quest_id = %s ORDER BY optId",
						 GetSQLValueString($id,'long'));
	$result = mysql_query($insertSQL) or die(mysql_error());
	
	$i = 0;
	$out['answer'] = array();
	while($tmp = mysql_fetch_assoc($result)){
		$out['answer'][$i] = $tmp;
		++$i;
	}
	
	return $out;
}
function SetProblemVisible($id,$value){
	include('conn.php');
	$insertSQL = sprintf("UPDATE problem SET visible = %s WHERE id = %s ",
						 GetSQLValueString($value,'long'),
						 GetSQLValueString($id,'long'));
	$result = mysql_query($insertSQL) or die(mysql_error());
	//$out = mysql_affected_rows($result);
	//print_r(mysql_affected_rows($result));
	return true ;
}
function sDeleteProblem($id){
	include('conn.php');
	$insertSQL = sprintf("DELETE FROM problem WHERE id = %s" ,
						 GetSQLValueString($id,'long'));
	$result = mysql_query($insertSQL) or die(mysql_error());
	
	$insertSQL = sprintf("DELETE FROM answer WHERE quest_id = %s" ,
						 GetSQLValueString($id,'long'));
    $result = mysql_query($insertSQL) or die(mysql_error());
	return true ;
}
function SaveProblem($data){
	include('conn.php');
	if($data['id'] == '0'){
		$insertSQL = sprintf("INSERT INTO problem  (cat,question,is_multiple) VALUES (%s,%s,%s) ",
							 GetSQLValueString($data['cat'],'long'),
							 GetSQLValueString(nl2br($data['question']),'text'),							
							 GetSQLValueString($data['is_multiple'],'long'));
		$result = mysql_query($insertSQL) or die(mysql_error());
		$data['id'] = mysql_insert_id();
		
	}else{
		$insertSQL = sprintf("UPDATE problem SET cat = %s,question = %s,is_multiple = %s WHERE Id = %s ",
							 GetSQLValueString($data['cat'],'long'),
							 GetSQLValueString(nl2br($data['question']),'text'),							 
							 GetSQLValueString($data['is_multiple'],'long'),
							 GetSQLValueString($data['id'],'long'));
		$result = mysql_query($insertSQL) or die(mysql_error());	
	}
	$insertSQL = sprintf("DELETE FROM answer WHERE 	quest_id = %s" ,
						 GetSQLValueString($data['id'],'long'));
	$result = mysql_query($insertSQL) or die(mysql_error());

	foreach($data['answer'] as $optId => $ans ){
		$insertSQL = sprintf("INSERT INTO answer (quest_id,optId,options,is_otherop,is_jump,jq_id,is_col) VALUES " .
							 " (%s,%s,%s,%s,%s,%s,%s) ",
							 GetSQLValueString($data['id'],'long'),
							 GetSQLValueString($optId+1,'long'),
							 GetSQLValueString($ans['options'],'text'),
							 GetSQLValueString($ans['is_otherop'],'long'),
							 GetSQLValueString($ans['is_jump'],'long'),
							 GetSQLValueString($ans['jq_id'],'text'),
							 GetSQLValueString($ans['is_col'],'long'));
		$result = mysql_query($insertSQL) or die(mysql_error());
		
	}
	return array('success' => true);
}


if(isset($_POST['action'])){
	switch($_POST['action']){
		case 'query_problem_list':
			echo json_encode(array("success" => true , "data" => QueryProblemList() ));
			exit;
			break;
		case 'query_topic_list':
			echo json_encode(array("success" => true , "data" => QueryTopicList() ));
			exit;
			break;	
		case 'query_problem':
			if(isset($_POST['id'])){
				echo json_encode(array("success" => true , "data" => QueryProblem($_POST['id']) ));
			}else{
				echo json_encode(array("success" => false ));
			}
			exit;
			break;
		case 'save_problem':
			if(isset($_POST['data'])){			    
				if (get_magic_quotes_gpc()) {
					$_POST['data'] = stripslashes($_POST['data']);					
				}
				echo json_encode(SaveProblem(json_decode($_POST['data'],true)));
			}else{
				echo json_encode(array("success" => false ,"err"=>'nodata'));
			}
			exit;
			break;
		case 'visible_problem':
			if(isset($_POST['id']) && isset($_POST['value']) ){
				if($_POST['value'] != '0' && $_POST['value'] != '1'){
					echo json_encode(array("success" => false ,"err"=>'value error'));	
					exit;
				}
		
				echo json_encode(array('success' => SetProblemVisible($_POST['id'],$_POST['value']) ) );
			}else{
				echo json_encode(array("success" => false ,"err"=>'nodata'));
			}
			exit;
			break;
		case 'delete_problem':	
			if(isset($_POST['id'])){
				echo json_encode(array("success" => true , "data" => sDeleteProblem($_POST['id']) ));
			}else{
				echo json_encode(array("success" => false ));
			}
			exit;
			break;
	}
	
}
?>
<style type="text/css">
table#problem_list tr.cate_1{
	background-color:#CCC;
}
table#problem_list td.visible_t{
	background-color:#0F0;
}
table#problem_list td.visible_f{
	background-color:#F00;
}
</style>


<script type="text/javascript">
function mkAnsBtn()
{
	return "<tr><td colspan='2'>答案 <input type='button' id='btn_num' value='增加答案個數' /></td></tr>";
}
function mkTopicOption(object){	
	var topicStr = "";
	
	//topicStr += "<tr><td>主題</td><td><select id='sel_cate'>";
	
	topicStr +=	"<option value='" + object['id'] + "' selected>" +  object['title'] + "</option>" ;		
	
	//topicStr += "</select></td></tr>";
	return topicStr;
}
function mkProblemRowString(object){
	return "<tr id='" + object['id'] + "' class='cate_" + object['cat'] + "'><td>" + object['id'] + "</td>" +
			"<td>" + object['question'] + "</td>" +
			"<td><input type='button' class='btn_modify' value='修改' /></td>" +
			//"<td>" + 
			"<td class='visible_" + (object['visible'] == '1' ? "t" : "f") + "'>" +
			"<input type='button' " + (object['visible'] == '1' ? "style='display:none'" : "") + " class='btn_show' value='顯示' />" +
			"<input type='button' " + (object['visible'] == '1' ? "" : "style='display:none'") + " class='btn_hide' value='隱藏' />" +
			"</td>" +
			"<td><input type='button' class='btn_delete' value='刪除' /></td>" + 
			"<td></td></tr>";
}
function mkAnswerOption(object){
	return "<tr class='answer' id='" + object['optId'] + "'><td>" + object['optId'] + "</td>" +
			"<td>" +
			"<input type='text' value='" + object['options'] + "' " +"  />" +
			"<label name='otheroption'>是否為意見欄:</label><input type='checkbox' name='is_other' value='" + object['optId'] + "' " + (object['is_otherop']== '1' ? "checked" : "" ) +"  />" +
			"<label name= 'jq_text'>跳題題號 (請以逗號隔開) : </label><input type='text' name ='jq_id' value='" + object['jq_id'] + "' " +"  />" +
			"<label name= 'is_col_text'>是否為欄文字:</label><input type='checkbox' name='is_col' value='" + object['optId'] + "' " + (object['is_col']== '1' ? "checked" : "" ) +"  />" +			
			"</td></tr>";   //answer options text form			
				
}
function GetProblem(object){
	$.ajax({
		   url:'admin_problem.php',
		   type:'post',
		   dataType:'json',
		   data:{
				action  : 'query_problem',
				id		: object['id']
		   },
		   success:function(res){
				if(res['success']){
					object.callback(res);
				}
		   }
		});	
	
}
function GetTopicList(){
	$.ajax({
		   url:'admin_problem.php',
		   type:'post',
		   dataType:'json',
		   data:{
				action : 'query_topic_list'   
		   },
		   success:function(res){		   
				if(res['success']){			
					var str = "";
					str += "<tr><td>主題</td><td><select id='sel_cate'>";	
					$.each(res['data'],function(i,value){
						str += mkTopicOption(value);							
					});					
					str += "</select></td></tr>";
					$("table#new_problem tbody").append(str);
					$("table#new_problem tbody").append(mkAnsBtn());
				}
		   }
		   });	
	
}
function GetProblemList(object){
	$.ajax({
		   url:'admin_problem.php',
		   type:'post',
		   dataType:'json',
		   data:{
				action : 'query_problem_list'   
		   },
		   success:function(res){
				if(res['success']){
					$("table#problem_list tbody").html('');
					$.each(res['data'],function(i,value){
						$("table#problem_list tbody").append(mkProblemRowString(value));							
					});
				}
		   }
		   });	
	
}

function SendProblem(object){
	$.ajax({
		   url:'admin_problem.php',
		   type:'post',
		   dataType:'json',
		   data:{
				action 	: 'save_problem',
				data	:  object.data  
		   },
		   success:function(res){				
				if(res['success']){
					object.callback(res);
				}
		   }
		   });	
		   
}


function SetProblemVisible(object){
	$.ajax({
		   url:'admin_problem.php',
		   type:'post',
		   dataType:'json',
		   data:{
				action 	: 'visible_problem',
				id		: object.id,
				value	: object.value
		   },
		   success:function(res){
				if(res['success']){
					object.callback(res);
				}
		   }
		   });	
}
function DeleteProblem(object){
	$.ajax({
		   url:'admin_problem.php',
		   type:'post',
		   dataType:'json',
		   data:{
				action  : 'delete_problem',
				id		: object['id']
		   },
		   success:function(res){
				if(res['success']){
					object.callback(res);
				}
		   }
		   });
	
}
function trim(strvalue) {
    ptntrim = /(^\s*)|(\s*$)/g;
    return strvalue.replace(ptntrim,"");
}

//************* AJAX *********************//
$('table#problem_list .btn_show').die('click').live('click',function(){
	var $tr = $(this).parents('tr');
	$(this).hide();
	SetProblemVisible({id:$tr.attr('id'),
					   value:'1',
					   callback:function(res){
						if(res['success']){
							alert('修改成功');
							$tr.find('.btn_hide').show().parents('td').addClass('visible_t').removeClass('visible_f');
						}  
					   }});
});
$('table#problem_list .btn_hide').die('click').live('click',function(){
	var $tr = $(this).parents('tr');
	$(this).hide();
	SetProblemVisible({id:$tr.attr('id'),
					   value:'0',
					   callback:function(res){
						if(res['success']){
							alert('修改成功');
							$tr.find('.btn_show').show().parents('td').addClass('visible_f').removeClass('visible_t');
						}  
					   }});
});

$('table#problem_list .btn_modify').die('click').live('click',function(){
	$('table#problem_list').hide();																   
	var id = $(this).parents('tr').attr('id');
 	GetProblem({id:id,
				callback:function(res){
					 var tmp = res['data']['question'].replace(/<br[ ]*[\/]?>/gi,'');
					 $('table#new_problem textarea#text_problem').val(tmp);		 
					 $('table#new_problem select#sel_cate').val(res['data']['cat']);					 
					 $('table#new_problem').attr('value',res['data']['id']);					 					 					 
					 $('table#new_problem tr.answer').remove();
					 
					 var tmpanser = {
								   quest_id	: '0',
								   optId 	: '0',
								   options  : '',
								   is_otherop : '0',
								   is_jump : '0',
								   jq_id : '',
								   is_col : '0'
								   };	
					 				 
					 var index = 1;
					 $.each(res['data']['answer'],function(i,value){						 
						 value['quest_id'] = id;							 
						 tmpanser['quest_id'] = id;						 
						 $('table#new_problem tbody').append(mkAnswerOption(value));	
						 index++;
					 });
					 
					// 增加答案個數
					 $('table#new_problem input#btn_num').die('click').live('click',function(){		
						 tmpanser['optId'] = index;
						 index++;
						 $('table#new_problem tbody').append(mkAnswerOption(tmpanser));			 
						 if($('table#new_problem input#rad_mupl_1').attr('checked'))
						 {
							 $('table#new_problem input#rad_mupl_1').click();
						 }
						 else if($('table#new_problem input#rad_mupl_2').attr('checked')){
							 $('table#new_problem input#rad_mupl_2').click();
						 }					 				 
						 else if($('table#new_problem input#rad_mupl_3').attr('checked')){
							$('table#new_problem input#rad_mupl_3').click();
						 }
						 else
						 {
							$('table#new_problem input#rad_mupl_4').click();
						 }						
					});	
					 
					 
					 if(res['data']['is_multiple'] == '1'){
						 $('table#new_problem input#rad_mupl_1').click();
					 }
					 else if(res['data']['is_multiple'] == '2'){
						 $('table#new_problem input#rad_mupl_2').click();
					 }					 				 
					 else if(res['data']['is_multiple'] == '3'){
						$('table#new_problem input#rad_mupl_3').click();
					 }
					 else
					 {
						$('table#new_problem input#rad_mupl_4').click();
					 }
					 
					$('table#new_problem').show();			
			}
	});																	  
});

$('table#problem_list .btn_delete').die('click').live('click',function(){
	var id = $(this).parents('tr').attr('id');
	DeleteProblem({id:id,				   
				   callback:function(res){
					if(res['success']){
						alert('刪除成功');		
						GetProblemList();					
					}  
				   }});
							   
});
$('table#problem_list .btn_new_problem').die('click').live('click',function(){
	 $('table#problem_list').hide();																													
	 var id = '0';
	 $('table#new_problem textarea#text_problem').val('');	 	 
	 $('table#new_problem select#sel_cate').val('0');
	 $('table#new_problem').attr('value','0');	 
	 $('table#new_problem tr.answer').remove();
	 var tmpanser = {
				   quest_id	: '0',
				   optId 	: '0',
				   options  : '',
				   is_otherop : '0',
				   is_jump : '0',
				   jq_id : '',
				   is_col : '0'
				   };
				   
     // add the number of options		 
	 var index = 0;
	 $('table#new_problem input#btn_num').die('click').live('click',function(){						 
		$('table#new_problem tbody').append(mkAnswerOption(tmpanser));	
		index++;
	    tmpanser['optId'] = index;			
		if($('table#new_problem input#rad_mupl_1').attr('checked'))
		{
			 $('table#new_problem input#rad_mupl_1').click();
		 }
		 else if($('table#new_problem input#rad_mupl_2').attr('checked')){
			 $('table#new_problem input#rad_mupl_2').click();
		 }					 				 
		 else if($('table#new_problem input#rad_mupl_3').attr('checked')){
			$('table#new_problem input#rad_mupl_3').click();
		 }
		 else
		 {
			$('table#new_problem input#rad_mupl_4').click();
		 }
	});	
	$('table#new_problem input#rad_mupl_1').click();
		
	 
	 $('table#new_problem').show();	
																  
});

$('table#new_problem input#btn_submit').die('click').live('click',function(){
	var problemData = new Object;
		problemData['id'] = $('table#new_problem').attr('value');
		problemData['question'] = $('table#new_problem textarea#text_problem').val();
		problemData['cat'] = $('table#new_problem select#sel_cate').val();
		problemData['is_multiple'] = '0';		
						
		// count number of entered answer
		var dim=0;		
		$('table#new_problem tr.answer').each(function(i,tr){
			if($(tr).find('input[type="text"]').val()) dim++;
		});
				
		if($('table#new_problem input#rad_mupl_3').attr('checked')) dim = 0;		
		problemData['answer'] = new Array(dim);
		for (var j = 0 ; j < dim ; j++) {			
			problemData['answer'][j] = {options : '',is_otherop : '0',is_jump : '0',jq_id : '',is_col:'0'};				
		}
	
		// what kind of question type
		if($('table#new_problem input#rad_mupl_1').attr('checked'))
		{			
			// 單選
			problemData['is_multiple'] = '1';
		}
		else if($('table#new_problem input#rad_mupl_2').attr('checked'))
		{	
			//多選
			problemData['is_multiple'] = '2';
		}			 
		else if($('table#new_problem input#rad_mupl_3').attr('checked'))
		{
			//文字
			problemData['is_multiple'] = '3';
		}
		else
		{
			//方格
			problemData['is_multiple'] = '4';
		}
		$('table#new_problem tr.answer').each(function(i,tr){							
			if(!$('table#new_problem input#rad_mupl_3').attr('checked'))
			{
				if($(tr).find('input[type="text"]').val())
				{
				
					problemData['answer'][i]['options'] = $(tr).find('input[type="text"]').val();
					if(problemData['is_multiple'] == '1')
					{								
						problemData['answer'][i]['jq_id'] = trim($(tr).find('input[name="jq_id"]').val());
						if(trim(problemData['answer'][i]['jq_id']))
							problemData['answer'][i]['is_jump'] = 1;
						else
						{
							problemData['answer'][i]['is_jump'] = 0;
							problemData['answer'][i]['jq_id'] = ' ';					
						}
					}
					else if(problemData['is_multiple'] == '2')
					{
						problemData['answer'][i]['is_otherop'] = $(tr).find('input[name="is_other"]').attr('checked') ? '1' : '0' ;		
						problemData['answer'][i]['jq_id'] = ' ';
					}
					else
					{
						problemData['answer'][i]['is_otherop'] = 0;		
						problemData['answer'][i]['jq_id'] = ' ';					
					}
					
					if(problemData['is_multiple'] == '4')
					{
						problemData['answer'][i]['is_col'] = $(tr).find('input[name="is_col"]').attr('checked') ? '1' : '0' ;				
					}
					else
					{
						problemData['answer'][i]['is_col'] = 0;
					}			
					problemData['answer'][i]['is_otherop'] = $(tr).find('input[name="is_other"]').attr('checked') ? '1' : '0' ;	
				}
			}
		});
		alert($.toJSON(problemData));
		SendProblem({data:$.toJSON(problemData),
					 callback:function(res){						 
						 if(res['success']) alert('送出成功');
						 
						$('table#new_problem').hide();	
						GetProblemList({});
						$('table#problem_list').show();	
					}});

});
$('table#new_problem input#rad_mupl_1').die('click').live('click',function(){
	$('table#new_problem input#btn_num').show();
	$('table#new_problem tr.answer').show();
	// 跳題
	$('table#new_problem .answer input[name="jq_id"]').show();  
	$('table#new_problem .answer label[name="jq_text"]').show();
	//其他欄
	$('table#new_problem .answer label[name="otheroption"]').show();  
	$('table#new_problem .answer input[name="is_other"]').show();
	// 欄
	$('table#new_problem .answer input[name="is_col"]').hide();  
	$('table#new_problem .answer label[name="is_col_text"]').hide();
});
$('table#new_problem input#rad_mupl_2').die('click').live('click',function(){
	$('table#new_problem input#btn_num').show();
	$('table#new_problem tr.answer').show();
	// 跳題
	$('table#new_problem .answer input[name="jq_id"]').hide();  
	$('table#new_problem .answer label[name="jq_text"]').hide();
	//其他欄
	$('table#new_problem .answer label[name="otheroption"]').show();  
	$('table#new_problem .answer input[name="is_other"]').show();
	// 欄
	$('table#new_problem .answer input[name="is_col"]').hide();  
	$('table#new_problem .answer label[name="is_col_text"]').hide();
});
$('table#new_problem input#rad_mupl_3').die('click').live('click',function(){
	$('table#new_problem input#btn_num').hide();
	$('table#new_problem tr.answer').hide();	
});
$('table#new_problem input#rad_mupl_4').die('click').live('click',function(){
	$('table#new_problem input#btn_num').show();
	$('table#new_problem tr.answer').show();
	// 跳題
	$('table#new_problem .answer input[name="jq_id"]').hide();  
	$('table#new_problem .answer label[name="jq_text"]').hide();
	//欄
	$('table#new_problem .answer input[name="is_col"]').show();  
	$('table#new_problem .answer label[name="is_col_text"]').show();
	// 其他欄
	$('table#new_problem .answer label[name="otheroption"]').show();  
	$('table#new_problem .answer input[name="is_other"]').show();
});
GetProblemList();
</script>


<table id='new_problem' value='0' style='display:none'>
<thead>
<tr>
<td colspan="2" style="text-align:center">題目增修</td>
</tr>
</thead>
<tfoot>
<tr>
<td colspan="2" style="text-align:center">
<input type="button" value="送出" id="btn_submit" />
<input type="reset" value="清除" id="btn_clear" />
</td>
</tr>
</tfoot>
<tbody>
<tr>
  <td>題目</td>
  <td><textarea cols="100" rows="5" id="text_problem"></textarea></td>
</tr>
<tr>
  <td>題目類型</td>
  <td>
  	  <input name='mupl' type="radio" id='rad_mupl_1' value="1" checked/><label for='rad_mupl_1'>單選</label>
      <input name='mupl' type="radio" id='rad_mupl_2' value="2" /><label for='rad_mupl_2'>多選</label>	  
	  <input name='mupl' type="radio" id='rad_mupl_3' value="3" /><label for='rad_mupl_3'>文字</label>	 
	  <input name='mupl' type="radio" id='rad_mupl_4' value="4" /><label for='rad_mupl_4'>方格</label>			 
  </td>
</tr>
<script type="text/javascript">	 GetTopicList(); </script>

</tbody>
</table>
<table id='problem_list'>
<thead>
<tr>
<td>ID</td>
<td>題目</td>
<td>修改</td>
<td>是否可見</td>
<td>刪除</td>
</tr>
<tr>
<td colspan="4" style="text-align:center"><input type="button" class='btn_new_problem' value='新增題目' /></td>
</tr>
</thead>
<tfoot>
<tr>
<td colspan="4" style="text-align:center"><input type="button" class='btn_new_problem' value='新增題目' /></td>
</tr>
</tfoot>
<tbody>
</tbody>
</table>