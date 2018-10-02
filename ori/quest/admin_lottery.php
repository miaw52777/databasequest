<?php
include ('admsecure.php');
if(!is_login()){exit;
	
}
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

function Lottery($setting){
	include ('conn.php');
	if(!isset($setting))$setting = array();
	if(!isset($setting['class_a_limit']))$setting['class_a_limit'] = 10;
	if(!isset($setting['class_b_limit']))$setting['class_b_limit'] = 200;
	if(!isset($setting['seed']))$setting['seed'] = time();
	if(!isset($setting['class_b_score']))$setting['class_b_score'] = 30;
//
	$insertSQL = sprintf("SELECT id,sid,score,name FROM user WHERE score = 100");
	$result = mysql_query($insertSQL) or die(mysql_error());
	$class_a_pool=array();
	$i = 0;
	while($tmp = mysql_fetch_assoc($result)){ 
		$class_a_pool[$i] = $tmp;
		++$i;
	} 
	$limit = $setting['class_a_limit'];
	$class_a_list = array();
	if($i > $limit){
		srand($setting['seed']+'抽獎用種子');
		for($j=0;$j<$limit;++$j){//挑題
			$seld = rand(0,$i-1);
			$class_a_list[$j] = $class_a_pool[$seld];
			$class_a_pool[$seld] = $class_a_pool[$i-1];
			--$i;
		}
	}else{
		$class_a_list = $class_a_pool;
		randArray($class_a_list,$setting['seed']);
	}
	$class_pool_remain = $i;
	//-------------Class B
	$insertSQL = sprintf("SELECT id,sid,score,name FROM user WHERE score >= %s AND score < 100",
						 GetSQLValueString($setting['class_b_score'],'long' ));
	$result = mysql_query($insertSQL) or die(mysql_error());
	$class_b_pool=array();
	$i = 0;
	while($tmp = mysql_fetch_assoc($result)){
		$class_b_pool[$i] = $tmp;
		++$i;
	}
	
	while($class_pool_remain){
		$class_b_pool[$i] = $class_a_pool[$class_pool_remain-1];
		++$i;
		--$class_pool_remain;
	}
	
	$limit = $setting['class_b_limit']; 
	$class_b_list = array();
	if($i > $limit){
		srand($setting['seed']);
		for($j=0;$j<$limit;++$j){//挑題
			$seld = rand(0,$i-1);
			$class_b_list[$j] = $class_b_pool[$seld];
			$class_b_pool[$seld] = $class_b_pool[$i-1];
			$i--;
		}
	}else{
		
		$class_b_list = $class_b_pool;
		randArray($class_b_list,$setting['seed']);
	}
	
	return array('success' => true ,"seed"=>$setting['seed'], "CAL" => $class_a_list , "CBL" => $class_b_list);
}

if(isset($_POST['action'])){
switch($_POST['action']){


case 'Lottery':
	
	echo json_encode(Lottery(json_decode($_POST['setting'],true)));
	exit;
break;
}
exit;
}

?>
<script type="text/javascript">
function Lottery(object){
	$.ajax({
		   url:'admin_lottery.php',
		   type:'post',
		   dataType:'json',
		   data:{
				action  : 'Lottery',
				setting	: $.toJSON(object.setting)
		   },
		   success:function(res){
				if(res['success']){
					object.callback(res);
				}
		   }
		   });	
}

function mkCALTr(object){
	return  "<tr>" +
			"<td>" + object['id'] + "</td>" +
			"<td>" + object['sid'] + "</td>" +
			"<td>" + object['name'] + "</td>" +
			"<td>" + object['score'] + "</td>" +
			"</tr>";
}

function mkCBLTr(object){return mkCALTr(object);}


$("input#btn_submit").die('click').live('click',function(){
	var setting = {};
	if($("input#seedvalue").val() != "" ){
		setting['seed'] = 	$("input#seedvalue").val();
	}
	
	Lottery({setting : setting,
			callback : function(res){
				if(res['success']){
					$('table#CAL tbody').html('');
					$.each(res['CAL'],function(i,data){
						$('table#CAL tbody').append(mkCALTr(data));	
					});
					
					
					$('table#CBL tbody').html('');
					$.each(res['CBL'],function(i,data){
						$('table#CBL tbody').append(mkCBLTr(data));	
					});
					
					$("input#seedvalue").val(res['seed']);
					
				}
			}});													 
														 
														 
});

</script>


請輸入隨機字串或是留空:<input type="text" id="seedvalue" /><input id="btn_submit" type="button" value="送出" /><br><br>


特獎名單:<br>
<table id="CAL">
	<thead>
    	<tr>
        	<td>id</td>
            <td>學號</td>
            <td>姓名</td>
            <td>成績</td>
            
        </tr>
    </thead>
    <tbody> 
    </tbody>
</table>


普通得獎名單:<br>
<table id="CBL">
	<thead>
    	<tr>
        	<td>id</td>
            <td>學號</td>
            <td>姓名</td>
            <td>成績</td>
            
        </tr>
    </thead>
    <tbody>
    </tbody>
</table>


