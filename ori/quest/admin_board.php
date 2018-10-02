<?php
include ('admsecure.php');
if(!is_login()){exit;}

function GetUserList($orderby = array('type' => 'id' , 'desc' => false )){
	include('conn.php');
	
	switch($orderby['type']){
	case 'id':
	case 'score':
	case 'depart_id':
	case 'timediff( endtime, starttime )':
	break;
	case 'timediff':
		$orderby['type'] = 'timediff( endtime, starttime )';
	break;
	default:
		$orderby['type'] = 'id';
	}

	$orderbySQL = sprintf(" ORDER BY " . $orderby['type']);
	if($orderby['desc'])$orderbySQL .= ' DESC ';
		
	$y=date("Y");
	$insertSQL = sprintf("SELECT user.id,user.name'name',score,email,phone,depart_id,timediff(endtime,starttime)'timediff',user.depart'departname' FROM user LEFT JOIN depart ON depart.id = 	depart_id WHERE year='$y' " .$orderbySQL);
	//print_r($insertSQL);
	$result = mysql_query($insertSQL) or die(mysql_error());
	$out = array();
	$i = 0;
	while($tmp = mysql_fetch_assoc($result)){
		$out[$i] = $tmp;
		++$i;
	}
	return array('success' => true , 'data' => $out);
}

function GetUserData($id){
	include('conn.php');
	
	//print_r($id);
	$insertSQL = sprintf("SELECT user.name'name',sId,ident.name'ident',college.name'college',user.depart'depart',email,phone,ipstamp" .
						 ",score,starttime,endtime,timediff(endtime,starttime)'timediff' FROM user " .
						 " LEFT JOIN depart ON depart.id = depart_id " .
						 " LEFT JOIN college ON college.id = depart_id " .
						 " LEFT JOIN ident ON ident.id = ident_id" .
						 " WHERE user.id =  %s",
						 GetSqlValueString($id,'text'));
	//print_r($insertSQL);
	$result = mysql_query($insertSQL) or die(mysql_error());
	$out = mysql_fetch_assoc($result);
	return array('success' => true , 'data' => $out);
	
}
if(isset($_POST['action'])){
switch($_POST['action']){
case 'GetUserList'://echo function_exists('json_encode');
	//print_r(GetUserList(array('type' => $_POST['type'],'desc'=> ($_POST['desc'] == 'true') ) ));
	echo json_encode(GetUserList(array('type' => $_POST['type'],'desc'=> ($_POST['desc'] == 'true') ) ) ) ;
exit;
case 'GetUserData':
	echo json_encode(GetUserData( $_POST['id'] ) ) ;
exit;	
}
	
	
}

?>

<style type="text/css">
table#user_list thead td.btn_sort.asc{
	font-weight:bold;
	color:#00F;
}
table#user_list thead td.btn_sort.desc{
	font-weight:bold;
	color:#0F0;
}


</style>

<link rel="stylesheet" type="text/css" href="bluedream.css" />

<script type="text/javascript">

function mkUserTr(object){
	if(object['timediff']==null){
		object['timediff']='尚未填答完畢';
	}
	
	
	return 	"<tr id='" + object['id'] + "' class='info'>"	+
			"<a href=#><td>" + object['name'] + "</td>" +
			"<td>" + object['score'] + "</td>" +
			"<td>" + object['departname'] + "</td>" +
			"<td>" + object['email'] + "</td>" +
			"<td>" + object['phone'] + "</td>" +
			"<td>" + object['timediff'] + "</td></a>" +
			"</tr>";
}

function GetUserList(object){
	$.ajax({
		   url:'admin_board.php',
		   type:'post',
		   dataType:'json',
		   data:{
				action  : 'GetUserList',
				type	: object.type,
				desc	: object.desc
		   },
		   success:function(res){
				if(res['success']){
					object.callback(res);
				}
		   }
		   });	
}

function GetUserData(object){
	$.ajax({
		   url:'admin_board.php',
		   type:'post',
		   dataType:'json',
		   data:{
				action  : 'GetUserData',
				id	: object.id
		   },
		   success:function(res){
				if(res['success']){
					object.callback(res);
				}
		   }
		   });	
}

GetUserList({type : 'id',
			 desc : false,
			 callback : function(res){
				if(res['success']){
					$('table#user_list tbody').html('');
					$.each(res['data'],function(i,data){
						$('table#user_list tbody').append(mkUserTr(data));	
					});
				}
			}});
$('table#user_list thead td.btn_sort').die('click').live('click',function(){
	var tmp = {desc : false,
			   callback : function(res){
				if(res['success']){
					$('table#user_list tbody').html('');
					$.each(res['data'],function(i,data){
						$('table#user_list tbody').append(mkUserTr(data));	
					});
				}
			}};		
	switch($(this).attr('id')){
		case 'btn_score':
			tmp['type'] = 'score';
		break;
		case 'btn_depart':
			tmp['type'] = 'depart_id';
		break;
		case 'btn_time':
			tmp['type'] = 'timediff';
		break;
	}
	if($(this).hasClass('asc')){
		tmp['desc'] = true;
		$(this).removeClass('asc').addClass('desc');
	}else if($(this).hasClass('desc')){
		$(this).removeClass('desc').addClass('asc');
	}else{
		$('table#user_list thead td.btn_sort').removeClass('desc').removeClass('asc');
		$(this).addClass('asc');
	}
	GetUserList(tmp);																	  
});

$('table#user_list tr.info').die('click').live('click',function(){

GetUserData({id:$(this).attr('id'),
			callback:function(res){
				if(res['success']){
					$('table#user_info td#name').html(res['data']['name']);
					$('table#user_info td#sId').html(res['data']['sId']);
					$('table#user_info td#ident').html(res['data']['ident']);
					$('table#user_info td#college').html(res['data']['college']);
					$('table#user_info td#depart').html(res['data']['depart']);
					$('table#user_info td#email').html(res['data']['email']);
					$('table#user_info td#phone').html(res['data']['phone']);
					$('table#user_info td#ipstamp').html(res['data']['ipstamp']);
					$('table#user_info td#score').html(res['data']['score']);
					$('table#user_info td#starttime').html(res['data']['starttime']);
					$('table#user_info td#endtime').html(res['data']['endtime']);
					$('table#user_info td#timediff').html(res['data']['timediff']);
					$('table#user_list').hide();
					$('table#user_info').show();
				}
			}});
													   
});
$('table#user_info td#btn_updir').die('click').live('click',function(){
	$('table#user_info').hide();
	$('table#user_list').show();														 
});


</script>


<table id='user_info' style="display:none" class="aa">
    <tbody>
        <tr>
            <td colspan="2" id='btn_updir'><a href="#">回上層</a></td>
    	</tr>
    	<tr>
            <td colspan="2">答題者資料</td>
    	</tr>
    	<tr>
            <td>姓名</td>
            <td id='name'>&nbsp;</td>
  	  	</tr>
    	<tr>
            <td>學號</td>
            <td id='sId'>&nbsp;</td>
  	  	</tr>
        <tr>
            <td>身分</td>
            <td id='ident'>&nbsp;</td>
  	  	</tr>
    	<tr>
            <td>院別</td>
            <td id='college'>&nbsp;</td>
  	  	</tr>
    	<tr>
            <td>系所</td>
            <td id='depart'>&nbsp;</td>
  	  	</tr>
    	<tr>
            <td>電郵</td>
            <td id='email'>&nbsp;</td>
  	  	</tr>
    	<tr>
            <td>電話</td>
            <td id='phone'>&nbsp;</td>
  	  	</tr>
    	<tr>
            <td>挨批</td>
            <td id='ipstamp'>&nbsp;</td>
  	  	</tr>
    	<tr>
            <td>得分</td>
            <td id='score'>&nbsp;</td>
  	  	</tr>
        <tr>
            <td>開始</td>
            <td id='starttime'>&nbsp;</td>
  	  	</tr>
    	<tr>
            <td>結束</td>
            <td id='endtime'>&nbsp;</td>
  	  	</tr>
    	<tr>
            <td>費時</td>
            <td id='timediff'>&nbsp;</td>
  	  	</tr>
    </tbody>
</table>

<table id='user_list' style="float:left;" class="aa">
    <thead>
        <tr>
			<td>姓名</td>
			<td id='btn_score' class='btn_sort'><a href="#">得分</a></td>
			<td id='btn_depart' class='btn_sort'><a href="#">系所</a></td>
            <td>email</td>
            <td>電話</td>
			<td id='btn_time' class='btn_sort'><a href="#">答題時間</a></td>
        </tr>
  </thead>
    <tbody>
    </tbody>
</table>



