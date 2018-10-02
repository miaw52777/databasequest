// JavaScript Document

function mkCollegeItem(object){
	return "<option value='" + object['id'] + "'>" + object['name'] + "</option>";
}
function mkDepartItem(object){
	return "<option value='" + object['id'] + "'>" + object['name'] + "</option>";
}
function mkIdentItem(object){
	return "<option value='" + object['id'] + "'>" + object['name'] + "</option>";
}
function GetCollegeList(){
	//$('#college').html('<img src="ajax-loaders.gif"/>');
	$.ajax({
		   url:'index.php',
		   dataType:'json',
		   type:'post',
		   data:{
				action:'query_college_list'   
		   },
		   success:function(res){
				$('#college').html('<option value="">請選擇您的學院</option>');
		   		if(res['success']){
					$.each(res['data'],function(i,value){
						$('#college').append(mkCollegeItem(value));						
					});
				}
		   }
		   });
}

function GetDepartList(id){
	//$('#department').html('<img src="ajax-loaders.gif"/>');
	$.ajax({
		   url:'index.php',
		   dataType:'json',
		   type:'post',
		   data:{
				action:'query_depart_list',
				id : id
		   },
		   success:function(res){
				$('#department').html('<option value="">請選擇您的系所</option>');
		   		if(res['success']){
					$.each(res['data'],function(i,value){
						$('#department').append(mkDepartItem(value));						
					});
					$('#department').show();
				}
		   }
		   });
}
function GetIdentList(id){
	$('#status').html('<img src="ajax-loaders.gif"/>');
	$.ajax({
		   url:'index.php',
		   dataType:'json',
		   type:'post',
		   data:{
				action:'query_ident_list',
				id : id
		   },
		   success:function(res){
				//$('#status').html('<option value="">請選擇您的身分</option>');
		   		if(res['success']){
					$.each(res['data'],function(i,value){
						$('#status').append(mkIdentItem(value));						
					});
				}
		   }
		   });
}

function SendUserData(){
	$.ajax({
		   url:'index.php',
		   dataType:'json',
		   type:'post',
		   data:{
				action	: 'query_user',
				name 	: $('input#name').val(),
				sid  	: $('input#sId').val(),
				ide_id	: $('select#status').val(),
				dep_id	: $('select#department').val(),
				eml		: $('input#email').val(),
				phone	: $('input#phone').val()
		   },
		   success:function(res){
		   		if(res['success']){
					alert('登錄成功');
					location.href='selectQuest.php';
				}else{
					if(res['err']=="TimeUp"){
						alert("活動時間已結束,明年請早");
					}else{
						alert('登錄失敗');
					}
				}
		   }
		   });
}

$(document).ready(function(){
	GetCollegeList();	
	GetIdentList();	
	$('#college').change(function(){
		GetDepartList($(this).val());						  		  
	});
	$('input#btn_start').click(function(){
		SendUserData();							   
	});
});
	
function checkField(){
	var errMsg="";
	/*====================Check each field whether has been filled or not==================*/
	//check status field
	if(document.getElementById("status").value==""){
		errMsg="身份欄位不能為空!\n";
	}
	//check name field
	if(document.getElementById("name").value==""){
		errMsg=errMsg+"姓名欄位不能為空!\n";
	}		
	//check sId field
	if(document.getElementById("sId").value==""){
		errMsg=errMsg+"證號欄位不能為空!\n";
	}		
	//check college field
	if(document.getElementById("college").value==""){
		errMsg=errMsg+"學院欄位不能為空!\n";
		//check department field						
	}else{
		if(document.getElementById("department").value==""){
			errMsg=errMsg+"系所欄位不能為空!\n";
		}
	}
	//check email field
	if(document.getElementById("email").value==""){
		errMsg=errMsg+"Email 欄位不能為空!\n";
	}		
	//check phone field
	if(document.getElementById("phone").value==""){
		errMsg=errMsg+"電話欄位不能為空!\n";
	}			
	/*==============if errMsg is not empty then return false, else return true=============*/
	if(errMsg!=""){
		alert(errMsg);
		return false;
	}else{
		return true;
	}
	
	
}

