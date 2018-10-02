<?php
include ('admsecure.php');
if(!is_login()){exit;}

function QueryProblemList(){
	include('conn.php');
	$insertSQL = sprintf("SELECT id,cat,question,visible FROM problem ORDER BY cat,Id ");
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
	$insertSQL = sprintf("SELECT id,cat,question,hint,solution,score,is_multiple FROM problem WHERE Id =  %s",
						 GetSQLValueString($id,'long'));
	$result = mysql_query($insertSQL) or die(mysql_error());
	$out = mysql_fetch_assoc($result);
	
	$insertSQL = sprintf("SELECT optId,options,is_answer FROM answer WHERE quest_id = %s ORDER BY optId",
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
function SaveProblem($data){
	include('conn.php');
	if($data['id'] == '0'){
		$insertSQL = sprintf("INSERT INTO problem  (cat,question,hint,solution,score,is_multiple) VALUES " .
							 " (%s,%s,%s,%s,%s,%s) ",
							 GetSQLValueString($data['cat'],'long'),
							 GetSQLValueString(nl2br($data['question']),'text'),
							 GetSQLValueString(nl2br($data['hint']),'text'),
							 GetSQLValueString(nl2br($data['solution']),'text'),
							 GetSQLValueString($data['score'],'long'),
							 GetSQLValueString($data['is_multiple'],'long'));
		$result = mysql_query($insertSQL) or die(mysql_error());
		$data['id'] = mysql_insert_id();
		
	}else{
		$insertSQL = sprintf("UPDATE problem SET cat = %s,question = %s,hint = %s,solution = %s,score = %s,is_multiple = %s WHERE Id = %s ",
							 GetSQLValueString($data['cat'],'long'),
							 GetSQLValueString(nl2br($data['question']),'text'),
							 GetSQLValueString(nl2br($data['hint']),'text'),
							 GetSQLValueString(nl2br($data['solution']),'text'),
							 GetSQLValueString($data['score'],'long'),
							 GetSQLValueString($data['is_multiple'],'long'),
							 GetSQLValueString($data['id'],'long'));
		$result = mysql_query($insertSQL) or die(mysql_error());
		//print_r($insertSQL);
		/*if(mysql_affected_rows() == 0){
			return array('success' => false,'err'=>'problem not exist');	
		}*/
	}
	$insertSQL = sprintf("DELETE FROM answer WHERE 	quest_id = %s" ,
						 GetSQLValueString($data['id'],'long'));
	$result = mysql_query($insertSQL) or die(mysql_error());

	foreach($data['answer'] as $optId => $ans ){
		$insertSQL = sprintf("INSERT INTO answer  (quest_id,optId,is_answer,options) VALUES " .
							 " (%s,%s,%s,%s) ",
							 GetSQLValueString($data['id'],'long'),
							 GetSQLValueString($optId+1,'long'),
							 GetSQLValueString($ans['is_answer'],'long'),
							 GetSQLValueString($ans['options'],'text'));
		$result = mysql_query($insertSQL) or die(mysql_error());
	}
	
	return array('success' => true);
}

if(isset($_POST['action'])){
switch($_POST['action']){
case 'query_problem_list':
	echo json_encode(array("success" => true , "data" => QueryProblemList() ));
	exit;
case 'query_problem':
	if(isset($_POST['id'])){
		echo json_encode(array("success" => true , "data" => QueryProblem($_POST['id']) ));
	}else{
		echo json_encode(array("success" => false ));
	}
	exit;
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
}
	
	
}
?>
<style type="text/css">
table#problem_list tr.cate_1{
	background-color:#CCC;
}
table#problem_list tr.cate_2{
	background-color:#FCF;
}
table#problem_list tr.cate_3{
	background-color:#CFF;
}
table#problem_list tr.cate_4{
	background-color:#FFC;
}
table#problem_list td.visible_t{
	background-color:#0F0;
}
table#problem_list td.visible_f{
	background-color:#F00;
}
</style>


<script type="text/javascript">
function mkProblemRowString(object){
	return "<tr id='" + object['id'] + "' class='cate_" + object['cat'] + "'><td>" + object['id'] + "</td>" +
			"<td>" + object['question'] + "</td>" +
			"<td><input type='button' class='btn_modify' value='修改' /></td>" +
			//"<td>" + 
			"<td class='visible_" + (object['visible'] == '1' ? "t" : "f") + "'>" +
			"<input type='button' " + (object['visible'] == '1' ? "style='display:none'" : "") + " class='btn_show' value='顯示' />" +
			"<input type='button' " + (object['visible'] == '1' ? "" : "style='display:none'") + " class='btn_hide' value='隱藏' />" +
			"</td>" +
			"<td><input type='button' value='刪除' /></td>" + 
			"<td></td></tr>";
}

function mkAnswerRowString(object){
	return "<tr class='answer' id='" + object['optId'] + "'><td>" + object['optId'] + "</td>" +
			"<td>" +
			"<input type='radio' name='prob_" + object['quest_id'] + "' value='" + object['optId'] + "' " + (object['is_answer']== '1' ? "checked" : "" ) +"  />" +
			"<input type='checkbox' name='prob_" + object['quest_id'] + "' value='" + object['optId'] + "' " + (object['is_answer']== '1' ? "checked" : "" ) +"  />" +
			"<input type='text' value='" + object['options'] + "' /></td></tr>"
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
					 
					 var tmp = res['data']['hint'].replace(/<br[ ]*[\/]?>/gi,'');
					 $('table#new_problem textarea#text_hint').val(tmp);
				//	var tmp = res['data']['solution'].replace(/&amp;/,'&').replace(/&lt;/,'<').replace(/&gt;/,'>').replace(/<br>/gi,'');
					 var tmp = res['data']['solution'].replace(/<br[ ]*[\/]?>/gi,'');
					 $('table#new_problem textarea#text_solution').val(tmp);
					 
					 $('table#new_problem input#input_score').val(res['data']['score']);

					 $('table#new_problem select#sel_cate').val(res['data']['cat']);
					 
					 $('table#new_problem').attr('value',res['data']['id']);
					 $('table#new_problem tr.answer').remove();
					 $.each(res['data']['answer'],function(i,value){
						 value['is_multiple'] = res['data']['is_multiple'];
						 value['quest_id'] = id;
						 $('table#new_problem tbody').append(mkAnswerRowString(value));								   
					 });
					 
					 if(res['data']['is_multiple'] == '1'){
						 $('table#new_problem input#rad_mupl_true').click();
					 }else{
						 $('table#new_problem input#rad_mupl_false').click();
					 }
					 
					$('table#new_problem').show();							
					 
					 
					 
				}
	});																	  
});



$('table#problem_list .btn_new_problem').die('click').live('click',function(){
	
	 $('table#problem_list').hide();																													
	 var id = '0';
	 $('table#new_problem textarea#text_problem').val('');
	 $('table#new_problem textarea#text_hint').val('');
	 $('table#new_problem textarea#text_solution').val('');
	 $('table#new_problem input#input_score').val('10');
	 $('table#new_problem select#sel_cate').val('0');
	 $('table#new_problem').attr('value','0');
	 $('table#new_problem tr.answer').remove();
	 var tmpanser = {
				   quest_id	: '0',
				   optId 	: '0',
				   is_answer: '0',
				   options  : ''
				   };
	 $('table#new_problem tbody').append(mkAnswerRowString(tmpanser));	
	 tmpanser['optId'] = '1';
	 $('table#new_problem tbody').append(mkAnswerRowString(tmpanser));	
	 tmpanser['optId'] = '2';
	 $('table#new_problem tbody').append(mkAnswerRowString(tmpanser));	
	 tmpanser['optId'] = '3';
	 $('table#new_problem tbody').append(mkAnswerRowString(tmpanser));	
	 $('table#new_problem input#rad_mupl_false').click();
	 $('table#new_problem').show();	
																  
});
$('table#new_problem input#btn_submit').die('click').live('click',function(){
	var problemData ={id	:	$('table#new_problem').attr('value'),
				 question	:	$('table#new_problem textarea#text_problem').val(),					 
				 hint		:	$('table#new_problem textarea#text_hint').val(),
				 solution	:	$('table#new_problem textarea#text_solution').val(),
				 score		:	$('table#new_problem input#input_score').val(),
				 cat		:	$('table#new_problem select#sel_cate').val() ,
				 is_multiple:   '0',
				 answer		:[
							  {is_answer 	: '0',
							   options		: ''},
							  {is_answer 	: '0',
							   options		: ''},
							  {is_answer 	: '0',
							   options		: ''},
							  {is_answer 	: '0',
							   options		: ''}
							  ]
			};
			if($('table#new_problem input#rad_mupl_true').attr('checked')==true){
				problemData['is_multiple'] = '1';
			}else{
				problemData['is_multiple'] = '0';
			}
			$('table#new_problem tr.answer').each(function(i,tr){
				if(problemData['is_multiple'] == '1'){
					problemData['answer'][i]['is_answer'] =  $(tr).find('input[type="checkbox"]').attr('checked') ? '1' : '0' ;
				}else{
					problemData['answer'][i]['is_answer'] =  $(tr).find('input[type="radio"]').attr('checked') ? '1' : '0';
				}
				problemData['answer'][i]['options'] = $(tr).find('input[type="text"]').val();
			});
			alert($.toJSON(problemData));
			SendProblem({data:$.toJSON(problemData),
						 callback:function(res){
							 if(res['success']) alert('修改成功');
							$('table#new_problem').hide();	
							GetProblemList({});
							$('table#problem_list').show();	
						}});

});
$('table#new_problem input#rad_mupl_true').die('click').live('click',function(){
	$('table#new_problem .answer input[type=checkbox]').show();																			    $('table#new_problem .answer input[type=radio]').hide();
});
$('table#new_problem input#rad_mupl_false').die('click').live('click',function(){
	$('table#new_problem .answer input[type=checkbox]').hide();																			    $('table#new_problem .answer input[type=radio]').show();
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
<input type="button" value="清除" id="btn_clear" />
</td>
</tr>
</tfoot>
<tbody>
<tr>
  <td>題目</td>
  <td><textarea cols="100" rows="5" id="text_problem"></textarea></td>
</tr>
<tr>
  <td>提示</td>
  <td><textarea cols="100" rows="5"   id="text_hint"></textarea></td>
</tr>
<tr>
  <td>解答</td>
  <td><textarea cols="100" rows="5"  id="text_solution"></textarea></td>
</tr>
<tr>
  <td>此題佔分</td>
  <td><input type="text" id="input_score" disabled/></td>
</tr>
<tr>
  <td>是否多選</td>
  <td><input type="radio" name='mupl' id='rad_mupl_true' value="true" /><label for='rad_mupl_true'>是</label>
      <input name='mupl' type="radio" id='rad_mupl_false' value="false" checked/><label for='rad_mupl_false'>否</label>
  </td>
</tr>
<tr>
  <td>分類</td>
  <td><select id='sel_cate'>
  <option value="1" selected>基本題庫</option>
  <option value="2">人文藝術</option>
  <option value="3">社科管理</option>
  <option value="4">理工海洋</option>
  </select>
  </td>
</tr>
<tr>
  <td colspan="2" style="text-align:center">答案
  </td>
</tr>
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