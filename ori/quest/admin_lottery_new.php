<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>無標題文件</title>
</head>
<script type="text/javascript">
 function SetCwinHeight(){
  var iframeid=document.getElementById("iframeid"); //iframe id
  if (document.getElementById){
   if (iframeid && !window.opera){
    if (iframeid.contentDocument && iframeid.contentDocument.body.offsetHeight){
     iframeid.height = iframeid.contentDocument.body.offsetHeight;
    }else if(iframeid.Document && iframeid.Document.body.scrollHeight){
     iframeid.height = iframeid.Document.body.scrollHeight;
    }
   }
  }
 }
</script>

<body>
<?
//include("closet.php");
?>
<table>
<tr>
<td width="60%" valign="top"><iframe id="iframeid" src="admin_lottery_list.php" frameborder="0" width="700" onload="Javascript:SetCwinHeight()" height="1" scrolling="no"></iframe></td>
<td width="40%" valign="top"><iframe src="admin_award.php" frameborder="0" width="400" height="500"></iframe></td>
</tr>
</table>
</body>
</html>