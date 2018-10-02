<?php
include ('admsecure.php');
if(!is_login()){exit;}

function QueryTopicList(){
	include('conn.php');
	$insertSQL = sprintf("SELECT id,title,hint,visible FROM topic ORDER BY id ");
	$result = mysql_query($insertSQL) or die(mysql_error());
	
	$i = 0;
	$out = array();
	while($tmp = mysql_fetch_assoc($result)){
		$out[$i] = $tmp;
		++$i;
	}
	return $out;
}


function QueryTopic($id){
	include('conn.php');
	$insertSQL = sprintf("SELECT title,hint FROM topic WHERE id =  %s",
						 GetSQLValueString($id,'long'));
	$result = mysql_query($insertSQL) or die(mysql_error());
	$out = mysql_fetch_assoc($result);	
	return $out;
}
function SetTopicVisible($id,$value){
	include('conn.php');
	$insertSQL = sprintf("UPDATE topic SET visible = %s WHERE id = %s ",
						 GetSQLValueString($value,'long'),
						 GetSQLValueString($id,'long'));
	$result = mysql_query($insertSQL) or die(mysql_error());

	return true ;
}
function sDeleteTopic($id){
	include('conn.php');
	$insertSQL = sprintf("DELETE FROM topic WHERE id = %s" ,
						 GetSQLValueString($id,'long'));
	$result = mysql_query($insertSQL) or die(mysql_error());
	
	return true ;
}
function SaveTopic($data){
	include('conn.php');
	if($data['id'] == '0'){
		$insertSQL = sprintf("INSERT INTO topic (title,hint) VALUES (%s,%s) ",
							 GetSQLValueString(nl2br($data['title']),'text'),
							 GetSQLValueString(nl2br($data['hint']),'text'));
		$result = mysql_query($insertSQL) or die(mysql_error());
		$data['id'] = mysql_insert_id();
		
	}else{
		$insertSQL = sprintf("UPDATE topic SET title = %s,hint = %s WHERE id = %s ",
							 GetSQLValueString(nl2br($data['title']),'text'),
							 GetSQLValueString(nl2br($data['hint']),'text'),
							 GetSQLValueString($data['id'],'long'));
		$result = mysql_query($insertSQL) or die(mysql_error());	
	}
	
	return array('success' => true);
}


if(isset($_POST['action'])){
	switch($_POST['action']){
		case 'query_topic_list':
			echo json_encode(array("success" => true , "data" => QueryTopicList() ));
			exit;
			break;
		case 'query_topic':
			if(isset($_POST['id'])){
				echo json_encode(array("success" => true , "data" => QueryTopic($_POST['id']) ));
			}else{
				echo json_encode(array("success" => false ));
			}
			exit;
			break;
		case 'save_topic':
			if(isset($_POST['data'])){			    
				if (get_magic_quotes_gpc()) {
					$_POST['data'] = stripslashes($_POST['data']);					
				}
				echo json_encode(SaveTopic(json_decode($_POST['data'],true)));
			}else{
				echo json_encode(array("success" => false ,"err"=>'nodata'));
			}
			exit;
			break;
		case 'visible_topic':
			if(isset($_POST['id']) && isset($_POST['value']) ){
				if($_POST['value'] != '0' && $_POST['value'] != '1'){
					echo json_encode(array("success" => false ,"err"=>'value error'));	
					exit;
				}
		
				echo json_encode(array('success' => SetTopicVisible($_POST['id'],$_POST['value']) ) );
			}else{
				echo json_encode(array("success" => false ,"err"=>'nodata'));
			}
			exit;
			break;
		case 'delete_topic':	
			if(isset($_POST['id'])){
				echo json_encode(array("success" => true , "data" => sDeleteTopic($_POST['id']) ));
			}else{
				echo json_encode(array("success" => false ));
			}
			exit;
			break;
	}
	
}
?>
<style type="text/css">
table#topic_list td.visible_t{
	background-color:#0F0;
}
table#topic_list td.visible_f{
	background-color:#F00;
}
</style>


<script type="text/javascript">
function mkTopicRowString(object){	
	return "<tr id='" + object['id'] + "'><td>" + object['id'] + "</td>" +
			"<td>" + object['title'] + "</td>" +
			"<td><input type='button' class='btn_modify' value='修改' /></td>" +
			//"<td>" + 
			"<td class='visible_" + (object['visible'] == '1' ? "t" : "f") + "'>" +
			"<input type='button' " + (object['visible'] == '1' ? "style='display:none'" : "") + " class='btn_show' value='顯示' />" +
			"<input type='button' " + (object['visible'] == '1' ? "" : "style='display:none'") + " class='btn_hide' value='隱藏' />" +
			"</td>" +
			"<td><input type='button' class='btn_delete' value='刪除' /></td>" + 
			"<td></td></tr>";
}
function GetTopic(object){
	$.ajax({
		   url:'admin_topics.php',
		   type:'post',
		   dataType:'json',
		   data:{
				action  : 'query_topic',
				id		: object['id']
		   },
		   success:function(res){
				if(res['success']){
					object.callback(res);
				}
		   }
		});	
	
}

function GetTopicList(object){
	$.ajax({
		   url:'admin_topics.php',
		   type:'post',
		   dataType:'json',
		   data:{
				action : 'query_topic_list'   
		   },
		   success:function(res){		  
				if(res['success']){
					$("table#topic_list tbody").html('');					
					$.each(res['data'],function(i,value){						
						$("table#topic_list tbody").append(mkTopicRowString(value));							
					});
				}
		   }
		   });	
	
}

function SendTopic(object){
	$.ajax({
		   url:'admin_topics.php',
		   type:'post',
		   dataType:'json',
		   data:{
				action 	: 'save_topic',
				data	:  object.data  
		   },
		   success:function(res){				
				if(res['success']){
					object.callback(res);
				}
		   }
		   });	
		   
}


function SetTopicVisible(object){
	$.ajax({
		   url:'admin_topics.php',
		   type:'post',
		   dataType:'json',
		   data:{
				action 	: 'visible_topic',
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
function DeleteTopic(object){
	$.ajax({
		   url:'admin_topics.php',
		   type:'post',
		   dataType:'json',
		   data:{
				action  : 'delete_topic',
				id		: object['id']
		   },
		   success:function(res){
				if(res['success']){
					object.callback(res);
				}
		   }
		   });
	
}

//************* AJAX *********************//
$('table#topic_list .btn_show').die('click').live('click',function(){
	var $tr = $(this).parents('tr');
	$(this).hide();
	SetTopicVisible({id:$tr.attr('id'),
					   value:'1',
					   callback:function(res){
						if(res['success']){
							alert('修改成功');
							$tr.find('.btn_hide').show().parents('td').addClass('visible_t').removeClass('visible_f');
						}  
					   }});
});
$('table#topic_list .btn_hide').die('click').live('click',function(){
	var $tr = $(this).parents('tr');
	$(this).hide();
	SetTopicVisible({id:$tr.attr('id'),
					   value:'0',
					   callback:function(res){
						if(res['success']){
							alert('修改成功');
							$tr.find('.btn_show').show().parents('td').addClass('visible_f').removeClass('visible_t');
						}  
					   }});
});

$('table#topic_list .btn_modify').die('click').live('click',function(){
	$('table#topic_list').hide();																   
	var id = $(this).parents('tr').attr('id');		
 	GetTopic({id:id,
				callback:function(res){
					 var tmp = res['data']['title'].replace(/<br[ ]*[\/]?>/gi,'');
					 var tmphint = res['data']['hint'].replace(/<br[ ]*[\/]?>/gi,'');
					 
					 $('table#new_topic textarea#text_topic').val(tmp);		
					 $('table#new_topic textarea#text_hint').val(tmphint);						 
					 $('table#new_topic').attr('value',id);					 
					$('table#new_topic').show();			
			}
	});																	  
});

$('table#topic_list .btn_delete').die('click').live('click',function(){
	var id = $(this).parents('tr').attr('id');
	DeleteTopic({id:id,				   
				   callback:function(res){
					if(res['success']){
						alert('刪除成功');		
						GetTopicList();					
					}  
				   }});
							   
});
$('table#topic_list .btn_new_topic').die('click').live('click',function(){
	
	 $('table#topic_list').hide();																													
	 var id = '0';
	 $('table#new_topic textarea#text_topic').val('');	
	 $('table#new_topic textarea#text_hint').val('');	
	 $('table#new_topic').attr('value','0');
 
	 $('table#new_topic').show();	
																  
});

$('table#new_topic input#btn_submit').die('click').live('click',function(){
	
	var topicData = new Object;
		topicData['id'] = $('table#new_topic').attr('value');
		topicData['title'] = $('table#new_topic textarea#text_topic').val();
		topicData['hint'] = $('table#new_topic textarea#text_hint').val();
		
		alert($.toJSON(topicData));
		SendTopic({data:$.toJSON(topicData),
					 callback:function(res){						 
						 if(res['success']) alert('送出成功');
						 
						$('table#new_topic').hide();	
						GetTopicList({});
						$('table#topic_list').show();	
					}});

});

GetTopicList();
</script>


<table id='new_topic' value='0' style='display:none'>
<thead>
<tr>
<td colspan="2" style="text-align:center">主題增修</td>
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
  <td>主題</td>
  <td><textarea cols="100" rows="5" id="text_topic"></textarea></td>
</tr>
<tr>
  <td>hint</td>
  <td><textarea cols="100" rows="5" id="text_hint"></textarea></td>
</tr>
</tbody>
</table>
<table id='topic_list'>
<thead>
<tr>
<td>ID</td>
<td>主題</td>
<td>修改</td>
<td>是否可見</td>
<td>刪除</td>
</tr>
<tr>
<td colspan="4" style="text-align:center"><input type="button" class='btn_new_topic' value='新增主題' /></td>
</tr>
</thead>
<tfoot>
<tr>
<td colspan="4" style="text-align:center"><input type="button" class='btn_new_topic' value='新增主題' /></td>
</tr>
</tfoot>
<tbody>
</tbody>
</table>