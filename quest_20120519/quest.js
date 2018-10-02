// JavaScript Document
var mapstr = "";
var multirow = "";
var textareaid = "";
var lastcat = "";
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
					$.each(res['data'],function(i,value){
						value['num'] = i+1;													
						mapstr += value['qid'] + '_' + value['num'] + ';';
					});	
					$.each(res['data'],function(i,value){
						value['num'] = i+1;													
						$('div#quest_list').append(mkQuestionItem(value,res['topic']));						
					});					
					$.each(res['save'],function(i,value){								
						$('#' + value).attr('checked',true);	
						ControlJumpObj(value);										
					});
					if(res['other']){
						var Arrayother = res['other'].split(',');
						for($i=0;$i<Arrayother.length;$i++)
						{
							var arraytmp = Arrayother[$i].split('@');
							$('input#' + arraytmp[0]+'otherop').val(arraytmp[1]);								
						}
					}					
					if(res['text']){
						var Arraytext = res['text'].split(',');
						for($i=0;$i<Arraytext.length;$i++)
						{
							var arraytmp = Arraytext[$i].split('@');
							$('textarea#' + arraytmp[0]).val(arraytmp[1]);							
						}
					}					
					if(res['endtime']){								
						$('#btn_save').remove();
						$('#btn_submit').remove();
						$('div#quest_list').html("<center>感謝您的填寫與配合，您的意見將是我們的重要參考意見，謝謝您！<br> 圖書與資訊處參考諮詢組敬啟 101.4</center>");
					}
				}
		   }  
		});
	
}
function mkQuestionItem(object,topicObj){
	var string = "";

	//  Add topic title 
	if(lastcat != object['cat'])
	{
		var topic = getTopicTitle(topicObj,object['cat']);
		string += "<font size = '4' color='#000033'><strong>『" + topic['title'] + "』</strong></font><br>";
		string += "<font size = '2' color='red'>" + topic['hint'] + "</font>";
	}	
	lastcat = object['cat'];	
	
	string += "<div class='questionArea'>";
	string += object['num'] + "." +  object['question'] + "<br>";			
	string += "<div class='optionAreaWrap'>";	
	
	if(object['is_multiple'] == 3) //文字
	{
		string += "<style type=\"text/css\"> textarea{ resize:none}</style>";		
		string += mkTextAreaAnswerItem(object);
	}
	else if(object['is_multiple'] == 4) //方格
	{
		string += "<table border=\"0\" cellpadding=\"5\" cellspacing=\"0\" width='100%'>";
		string += "<thead> <tr bgcolor='#DEDEDE'> <td></td> <td></td>";
		var flag=true;
		var count = 0;
		multirow += object['qid'] + '_';
		
		$.each(object['answer'],function(i,value){		
			value['quest_id'] = object['num'];
			if(value['is_col'] == 1)
			{
				string += "<td><label>"+value['options']+"</label></td>";
				count++;
			}
			else
			{
				if(flag == true)
				{
					string += " </tr></thead><tbody><tr>";
					flag = false;
				}
						
				value['qid'] = object['qid'];
				
				value['optId'] = i;
				value['is_multiple'] = 0;
					
				if(i % 2 == 1) string += "<tr bgcolor='#DEDEDE'>"; //EFEFEF
				else string += "<tr>";
				
				if(value['is_otherop'] == 1)
				{
					var id = "q_" + value['qid'] + "a_r" + value['optId'] ;		
					var qid = id+"otherop";									
					string += "<td><div align='left'>" + value['options'] +"<input type=\"text\" id=\"" + qid + "\"  /></div></td>";					
				}				
				else
				{
					string += "<td><div align='left'>"+value['options']+"</div></td>";
				}
				string += "<td></td>";
				for(var j=0;j<count;j++)
					string += mkRowAnswerItem(value,j,count);			
				string += "</tr>";	
			}
		});	
		string += "</tbody></table>";		
	}		
	else
	{
		$.each(object['answer'],function(i,value){
			value['quest_id'] = object['num'];
			value['optId'] = i;
			value['qid'] = object['qid'];
			
			if(object['is_multiple'] == 1) // 單選
				value['is_multiple'] = 0;
			else  //多選
				value['is_multiple'] = 1;					
				
			
			if(value['is_otherop'] == 1)
			{
				string += mkOtheropAnswerItem(value);						
			}
			else
				string += mkAnswerItem(value);		
					
		});		
	}

	return string;
	
	
}
function mkTextAreaAnswerItem(object){    // 新增 文字 選項
	var qid = "q_" + object['qid'] + "a_options";	
	textareaid += qid + ',';
	return "<div class='optionArea'><textarea id='" + qid + "' cols=\"50\" rows=\"10\"></textarea></div>";
}
function mkOtheropAnswerItem(object){  // 新增其他的選項
	var id = "q_" + object['qid'] + "a_" + object['optId'] ;		
	var qid = id+"otherop";	
	return  "<div class='optionArea'><input type='" + ( (object['is_multiple']== true )? "checkbox" : "radio") + "' name='" + object['qid'] + "' value='" + object['optId'] + "' id='" + id + "' /><label for='" + id + "'>" + object['options'] + "</label>" +
			"<input type=\"text\" id=\"" + qid + "\"  /></div>";	
}
function mkRowAnswerItem(object,i,count){  // 新增 次標題選項
    var optid = object['optId']; // - count;
	var id = "q_" + object['qid'] + "a_r" + optid + "_" + i ;	
	return  "<td><div class='optionArea'><input type='" + ( (object['is_multiple']== true )? "checkbox" : "radio") + "' name='" + object['qid']+ "_r_" + optid + "' value='" + optid + "' id='" + id + "' /></div></td>";	
}
function mkAnswerItem(object){ // 新增 單選、多選的選項
	var Arraymapstr = mapstr.split(';');  // 尋找顯示問題的題號
	var Arrayjqid = object['jq_id'].split(',');  // 資料庫的題號
	var jqid = new Array();
	
	// Find mapping questions between database and display questions
	for($i=0,$j=0;$i<Arraymapstr.length;$i++)
	{
	    var mapnum = Arraymapstr[$i].split('_');
		
		if((mapnum[0] == Arrayjqid[$j]) && ($j < Arrayjqid.length))
		{
			jqid[$j] = mapnum[1];
			$i = 0;
			$j ++;
		}
	}
	// sort the id of questions => 由小排到大
	jqid.sort(sortNumber);
		
	var jqidstr = "";
	for($i=0;$i<$j;$i++)
	{
		if($i > 0) jqidstr += ',';
		jqidstr += jqid[$i];
	}
	var id = "q_" + object['qid'] + "a_" + object['optId'] ;	

	return  "<div class='optionArea'><input type='" + ( (object['is_multiple']== true )? "checkbox" : "radio") + "' name='" + object['qid'] + "' value='" + object['optId'] + "' id='" + id + "' />" +
			"<input type='hidden' id = 'j" + id + "' name = '" + object['is_jump'] + "' value='" + object['jq_id'] + "'>"  + ( (object['is_jump']== true )? object['options']+'(Q' + jqidstr + '免答)' : object['options']) + "</div>";				
}
function sortNumber(a,b)
{
	return a - b;
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
		ControlJumpObj($(this).attr('id'));			
	});
	
	jsonString += "]";
	
	return jsonString;
}
function ControlJumpObj(id)
{	
	var obj = ("input#" + id);
	var jumpobj = ("input#j" + id);  // 目前跳題題號
	var Arrayjumpobj = jumpobj.split('_');
	var qid = Arrayjumpobj[1].substring(0,Arrayjumpobj.length-2); 
	var ArrayRow = multirow.split('_');	
	var Arraychecked;
	
	$('input[name="'+qid+'"]').each(function(i){
		var q = obj.substring(0,jumpobj.length-2) + i; // options 
		var jq = jumpobj.substring(0,jumpobj.length-1) + i; // get jump options
		var jumpval = $(jq).attr('value'); // 跳題的題號	
		
		if(jumpval)
		{
			var Arrayjumpval = jumpval.split(",");			
			
			//if($(q).atrr('checked') == true) Arraychecked = Arrayjumpval;	
			
			for($j=0;$j<Arrayjumpval.length;$j++)
			{				
				if(Contains(ArrayRow,Arrayjumpval[$j]))
				{					
					$k=0;
					do
					{
						// 方格題型 
						var tmp = 'input[name="' + Arrayjumpval[$j] + '_r_' + $k + '"]';							
						if($(tmp).attr('type'))
						{ 																				
							$(tmp).attr('disabled',$(q).attr('checked')); 
							if($(q).attr('checked')){														
								Arraychecked = Arrayjumpval;
								$(tmp).attr('checked',false); 
							}													
							$k ++;
						}
						else
							break;
					}while($(tmp).attr('type'));
				}
				else
				{					
					var tmp = 'input[name="' + Arrayjumpval[$j] + '"]';														
					$(tmp).attr('disabled',$(q).attr('checked'));				
					if($(q).attr('checked')){																			
						Arraychecked = Arrayjumpval;						
						$(tmp).attr('checked',false); 
					}					
				}
			}
		}	
	});	
/*
	if($(jumpobj).attr('value'))
	{		
		for($j=0;$j<Arraychecked.length;$j++)
		{
			
			if(Contains(ArrayRow,Arraychecked[$j]))
			{					
				$k=0;
				do
				{
					// 方格題型 
					var tmp = 'input[name="' + Arraychecked[$j] + '_r_' + $k + '"]';							
					if($(tmp).attr('type'))
					{ 																				
						$(tmp).attr('disabled',true); 
						$(tmp).attr('checked',false);														
						$k ++;
					}
					else
						break;					
				}while($(tmp).attr('type'));
			}
			else
			{
				var tmp = 'input[name="' + Arraychecked[$j] + '"]';
				$(tmp).attr('disabled',true); 				
				$(tmp).attr('checked',false); 	
			}
		}
	}*/
}
function Contains(array,str)
{
	for($i=0;$i<array.length;$i++)
	{
		if(str == array[$i])
			return 1;
	}
	return 0;
}
function getTopicTitle(topicArray,id)
{
	for($i=0;$i<topicArray.length;$i++)
	{
		if(id == topicArray[$i]['id'])
			return topicArray[$i];
	}
	return 0;
}
function mkTextAreaNowStatus()
{
	// 紀錄文字方塊的內容
	var ArrayTextarea = textareaid.split(',');	
	var jsonString = "";
	for($i=0;$i<ArrayTextarea.length-1;$i++)
	{
		
		var tmp = "textarea#" + ArrayTextarea[$i];	
		if($(tmp).val())
		{
			jsonString += ArrayTextarea[$i] + '@' + $(tmp).val().replace(/,/g,'，');	
			if($i < ArrayTextarea.length-2)	 jsonString += ',';
		}	
	}
	
	return jsonString;
}
function mkOtheropNowStatus()
{
	// 紀錄其他文字方塊的內容
	var jsonString = "";
	var tmp;
	var newid;
	var flag = true;
	$('input:checked').each(function(){
		var tmpArray = $(this).attr('id').split('_');
		if(tmpArray.length > 3)
		{ 
			//方格
			newid = tmpArray[0]+"_"+tmpArray[1]+"_"+tmpArray[2];			
		}		
		else
			newid = $(this).attr('id');
			
		tmp = "input#" + newid + "otherop";		
		
		
		if(flag){
			flag=false;
		}else{
			if($(tmp).val() && jsonString) jsonString += ",";
		}		
		
		if($(tmp).val())
			jsonString += newid + '@' + $(tmp).val().replace(/,/g,'，') ;		
	});

	return jsonString;
}
function trim(strvalue) {
    ptntrim = /(^\s*)|(\s*$)/g;
    return strvalue.replace(ptntrim,"");
}
function savestate(object){
	$.ajax({
		   url:'saveQuest.php',
		   type:'post',
		   dataType:'json',
		   data:{
				record:object['record'],
				textarea:object['textarea'],
				otherop:object['otherop']	
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
	 var answerobj = new Object;	 
	 
	$('input[type="radio"]').die('change').live('change',function(){		 
		 answerobj['record'] = mkNowStatus();		 
		 answerobj['textarea'] = mkTextAreaNowStatus();
		 answerobj['otherop'] = mkOtheropNowStatus();
		 savestate(answerobj);
	});
	$('input[type="checkbox"]').die('change').live('change',function(){	
		 answerobj['record'] = mkNowStatus();
		 answerobj['textarea'] = mkTextAreaNowStatus();
		 answerobj['otherop'] = mkOtheropNowStatus();
		 savestate(answerobj);
	});
	$('input#btn_save').click(function(){
		 answerobj['record'] = mkNowStatus();
		 answerobj['textarea'] = mkTextAreaNowStatus();
		 answerobj['otherop'] = mkOtheropNowStatus();
		 savestate(answerobj);
	});
	$('input#btn_submit').click(function(){
		if(confirm("請問你確定要記錄此次作答內容嗎？\n" +
				   "“確定”，代表送出這次的答案後，無法再修改。\n" +
				   "“取消”，暫存答案 (可以再登入作答)")) LoadQuestion(true);
		
	});
});