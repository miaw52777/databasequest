<?
include('secure.php');
if(!is_login())exit;
if(isset($_POST['record'])){
	include('conn.php');
	$insertSQL = sprintf("UPDATE user SET SelectedRecord = %s WHERE id = %s AND endtime IS NULL",
						 GetSQLValueString($_POST['record'],"text"),
						 GetSQLValueString($UID,"long")
						 );
	mysql_query($insertSQL) or (die(mysql_error()));
	
}
if(isset($_POST['textarea'])){
	include('conn.php');	
	$insertSQL = sprintf("UPDATE user SET textarea = %s WHERE id = %s AND endtime IS NULL",
						 GetSQLValueString($_POST['textarea'],"text"),
						 GetSQLValueString($UID,"long")
						 );
	mysql_query($insertSQL) or (die(mysql_error()));
	
}
if(isset($_POST['otherop'])){
	include('conn.php');
	$insertSQL = sprintf("UPDATE user SET otherop = %s WHERE id = %s AND endtime IS NULL",
						 GetSQLValueString($_POST['otherop'],"text"),
						 GetSQLValueString($UID,"long")
						 );
	mysql_query($insertSQL) or (die(mysql_error()));
	
}
if(mysql_affected_rows() != 0)	echo json_encode(array('success' => true));
else							echo json_encode(array('success' => false));
exit;
?>