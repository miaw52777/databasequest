<?
include('conn.php');
$y=date("Y");
$sql= "SELECT * FROM user WHERE depart_id =1 && year='$y'";
$stu[0] = mysql_num_rows(mysql_query($sql));

$sql= "SELECT * FROM user WHERE depart_id =2 && year='$y'";
$stu[1] = mysql_num_rows(mysql_query($sql));

$sql= "SELECT * FROM user WHERE depart_id =3 && year='$y'";
$stu[2] = mysql_num_rows(mysql_query($sql));

$sql= "SELECT * FROM user WHERE depart_id =4 && year='$y'";
$stu[3] = mysql_num_rows(mysql_query($sql));

$sql= "SELECT * FROM user WHERE depart_id =5 && year='$y'";
$stu[4] = mysql_num_rows(mysql_query($sql));

$sql= "SELECT * FROM user WHERE depart_id =6 && year='$y'";
$stu[5] = mysql_num_rows(mysql_query($sql));




$scoreall = array_sum($stu);

$max = max($stu);

?>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
  <head>
   <title> Vertical bar chart </title>
   <script language="javascript" src="http://www.google.com/jsapi"></script>

  <style type="text/css">
<!--
.qq {
	text-align: center;
	
}
-->
  </style></head>
   <body>

   <div id="chart"></div>
   <p>&nbsp;</p>
   <table width="520" border="1" class="qq">
     <tr>
       <td colspan="8" style="font-weight:bold; color: #900;">院別統計</td>
     </tr>
     <tr>
       <td width="80">院別</td>
       <td width="80">文學院</td>
       <td width="80">理學院</td>
       <td width="80">工學院</td>
       <td width="80">管理學院</td>
       <td width="80">海科院</td>
       <td width="80">社科院</td>
       <td width="80">總計</td>
     </tr>
     <tr>
       <td>人數</td>
       <td><? echo $stu[0]; ?></td>
       <td><? echo $stu[1]; ?></td>
       <td><? echo $stu[2]; ?></td>
       <td><? echo $stu[3]; ?></td>
       <td><? echo $stu[4]; ?></td>
       <td><? echo $stu[5]; ?></td>
       <td><? echo $scoreall; ?></td>
     </tr>
   </table>
   <script type="text/javascript">
      var queryString = '';
      var dataUrl = '';

      function onLoadCallback() {
        if (dataUrl.length > 0) {
          var query = new google.visualization.Query(dataUrl);
          query.setQuery(queryString);
          query.send(handleQueryResponse);
        } else {
          var dataTable = new google.visualization.DataTable();
          dataTable.addRows(6);

          dataTable.addColumn('number');
          dataTable.setValue(0, 0, <? echo $stu[0]; ?>);
          dataTable.setValue(1, 0, <? echo $stu[1]; ?>);
          dataTable.setValue(2, 0, <? echo $stu[2]; ?>);
          dataTable.setValue(3, 0, <? echo $stu[3]; ?>);
		  dataTable.setValue(4, 0, <? echo $stu[4]; ?>);
          dataTable.setValue(5, 0, <? echo $stu[5]; ?>);

          draw(dataTable);
        }
      }

      function draw(dataTable) {
        var vis = new google.visualization.ImageChart(document.getElementById('chart'));
        var options = {
          chxl: '1:|文學院|理學院|工學院|管理學院|海科院|社科院|',
          chxp: '',
          chxr: '0,0,<? echo $max+10; ?>',
          chxs: '',
          chxtc: '',
          chxt: 'y,x',
          chbh: 'a',
          chs: '300x225',
          cht: 'bvg',
          chco: 'AA0033',
		  chds:'0,<? echo $max+10; ?>',
          chd: 't:<? echo $stu[0]; ?>,<? echo $stu[1]; ?>,<? echo $stu[2]; ?>,<? echo $stu[3]; ?>,<? echo $stu[4]; ?>,<? echo $stu[5]; ?>',
          chdl: '',
          chm: 'N,FF0000,0,-1,12',
          chtt: '院別統計'
        };
        vis.draw(dataTable, options);
      }

      function handleQueryResponse(response) {
        if (response.isError()) {
          alert('Error in query: ' + response.getMessage() + ' ' + response.getDetailedMessage());
          return;
        }
        draw(response.getDataTable());
      }

      google.load("visualization", "1", {packages:["imagechart"]});
      google.setOnLoadCallback(onLoadCallback);

    </script>
  </body>
</html>
