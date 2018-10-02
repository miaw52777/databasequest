// JavaScript Document
function LoadQuestion(is_submit){
	var data={};
	data['action'] = 'query_quest' ;
	if(typeof(is_submit) != 'undefined'){
		data['submit'] = true;
	}
	$.ajax({
		   url:'selectQuest.php',
		   type:'post',
		   dataType:'json',
		   data:data,
		   success : function(res){
				$('div#quest_list').html("");
				if(res['success']){
					var submited = typeof(res['score']) != 'undefined';
					$.each(res['data'],function(i,value){
						value['num'] =i+1;
						$('div#quest_list').append(mkQuestionItem(value));
						if(submited && (value['correct'] != 4))$('div#quest_list .questionArea:last').addClass('error');
					});	
					$.each(res['save'],function(i,value){
						$('#' + value).attr('checked',true);
					});
					if(submited){
						$('input[type=radio]').attr('disabled',true);
						alert('您得了'+res['score']+'分');
						$('#btn_save').remove();
						$('#btn_submit').remove();
					}
				}
		   }
		   
		   
		   });
	
}

function mkQuestionItem(object){
	var string = "";
	string += "<div class='questionArea'>";
	string += object['num'] + "." +  object['question'] + "<br>";		
	string += "<div class='hintArea'><b>HINT:</b> " + object['hint'] + "</div>";
	string += "<div class='optionAreaWrap'>";
	$.each(object['answer'],function(i,value){
		value['quest_id'] = object['num'];
		value['optId'] = i;
		value['is_multiple'] = object['is_multiple'];
		//alert(value['is_multiple']);
		string +=mkAnswerItem(value);							 
	});		
	if(typeof(object['solution']) != 'undefined' && object['correct'] != 4)	{
		string += "<div class='solution'><u>取得解答途徑：</u><br>" + object['solution'] + "</div>";
	}
	string += "</div></div>";
	return string;
	
	
}
function mkAnswerItem(object){
	var id = "q_" + object['quest_id'] + "a_" + object['optId'] ;
	return  "<div class='optionArea'><input type='" + ( (object['is_multiple']== true )? "checkbox" : "radio") + "' name='" + object['quest_id'] + "' value='" + object['optId'] + "' id='" + id + "' /><label for='" + id + "'>" + object['options'] + "</label></div>";	
}

function mkNowStatus(){
	var jsonString = "[";
	var flag = true;
	$('input:checked').each(function(){
		if(flag){
			flag=false;
		}else{
			jsonString += ",";
		}							   
		jsonString += '"' + $(this).attr('id') + '"';
	});
	
	jsonString += "]";
	return jsonString;
}

function savestate(json){
	$.ajax({
		   url:'saveQuest.php',
		   type:'post',
		   dataType:'json',
		   data:{
				record:json   
		   },
		   success : function(res){
				if(res['success']){
				//	alert('Save Comp')
				}
		   }
		   });
}

$(document).ready(function(){
	LoadQuestion();
	$('input[type="radio"]').die('change').live('change',function(){
		 savestate(mkNowStatus());
	});
	$('input[type="checkbox"]').die('change').live('change',function(){
		 savestate(mkNowStatus());
	});
	$('input#btn_save').click(function(){
		savestate(mkNowStatus());					   
	});
	$('input#btn_submit').click(function(){
		if(confirm("請問你確定要記錄此次作答內容嗎？\n" +
				   "“確定”，代表送出這次的答案後，無法再修改。\n" +
				   "“取消”，暫存答案 (可以再登入作答)"))LoadQuestion(true);
		
	});
});