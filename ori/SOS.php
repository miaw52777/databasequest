<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>無標題文件</title>
</head>

<body>
<?
$login_name = "B974020006";
$login_password = "790206";
$a = NSYSULDAPAuth($login_name, $login_password);
?> <pre><?php print_r($a); ?></pre> <?

echo "123";
function NSYSULDAPAuth($login_name, $login_password) { 
    $client = new SoapClient("https://sso.nsysu.edu.tw/ldapService.do?wsdl"); 
    $handle = $client->getAttr(array("in0" => $login_name, "in1" => $login_password, "in2"=>"employeeNumber;givenName;carLicense;title;svuserdept;hr1ouName;hr2ouName;hrdepName;ext;mail"));
    return ($handle->out != "") ? explode(";",$handle->out) : "";
}
?>
</body>
</html>