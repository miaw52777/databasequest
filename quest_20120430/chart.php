<?
include('conn.php');
$y=date("Y");
$sql= "SELECT * FROM user WHERE score =100 && year='$y'";
$score100 = mysql_num_rows(mysql_query($sql));
$sql= "SELECT * FROM user WHERE score >=90 && score <100 && year='$y'";
$score90 = mysql_num_rows(mysql_query($sql));
$sql= "SELECT * FROM user WHERE score >=80 && score <90 && year='$y'";
$score80 = mysql_num_rows(mysql_query($sql));
$sql= "SELECT * FROM user WHERE score >=70 && score <80 && year='$y'";
$score70 = mysql_num_rows(mysql_query($sql));
$sql= "SELECT * FROM user WHERE score >=60 && score <70 && year='$y'";
$score60 = mysql_num_rows(mysql_query($sql));
$sql= "SELECT * FROM user WHERE score >=50 && score <60 && year='$y'";
$score50 = mysql_num_rows(mysql_query($sql));
$sql= "SELECT * FROM user WHERE score >=40 && score <50 && year='$y'";
$score40 = mysql_num_rows(mysql_query($sql));
$sql= "SELECT * FROM user WHERE score >=30 && score <40 && year='$y'";
$score30 = mysql_num_rows(mysql_query($sql));
$sql= "SELECT * FROM user WHERE score >=20 && score <30 && year='$y'";
$score20 = mysql_num_rows(mysql_query($sql));
$sql= "SELECT * FROM user WHERE score >=10 && score <20 && year='$y'";
$score10 = mysql_num_rows(mysql_query($sql));
$sql= "SELECT * FROM user WHERE score >=0 && score <10 && year='$y'";
$score0 = mysql_num_rows(mysql_query($sql));
$sql= "SELECT * FROM user  WHERE year='$y'";
$scoreall = mysql_num_rows(mysql_query($sql));

$max = max($score0,$score10,$score20,$score30,$score40,$score50,$score60,$score70,$score80,$score90,$score100);

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
   <title> Vertical bar chart </title>
   <script language="javascript" src="http://www.google.com/jsapi"></script>
   <style type="text/css">
<!--
#qq {
	font-weight: bold;
	color: #0C0;
}
.w {
	text-align: center;
}
-->
   </style>
  </head>
<body>

<div id="chart"></div>
<p>&nbsp;</p>
<table width="550" height="81" border="1">
      <tr align="center">
        <td height="25" colspan="13" id="qq">分數統計</td>
      </tr>
      <tr>
        <td width="6%" height="23" class="w">分數</td>
        <td width="6%" class="w">0</td>
        <td width="6%" class="w">10</td>
        <td width="6%" class="w">20</td>
        <td width="6%" class="w">30</td>
        <td width="6%" class="w">40</td>
        <td width="6%" class="w">50</td>
        <td width="6%" class="w">60</td>
        <td width="6%" class="w">70</td>
        <td width="6%" class="w">80</td>
        <td width="6%" class="w">90</td>
        <td width="6%" class="w">100</td>
        <td width="6%" class="w">總計</td>
      </tr>
      <tr>
        <td height="23" class="w">人數</td>
        <td class="w"><? echo $score0; ?></td>
        <td class="w"><? echo $score10; ?></td>
        <td class="w"><? echo $score20; ?></td>
        <td class="w"><? echo $score30; ?></td>
        <td class="w"><? echo $score40; ?></td>
        <td class="w"><? echo $score50; ?></td>
        <td class="w"><? echo $score60; ?></td>
        <td class="w"><? echo $score70; ?></td>
        <td class="w"><? echo $score80; ?></td>
        <td class="w"><? echo $score90; ?></td>
        <td class="w"><? echo $score100; ?></td>
        <td class="w"><? echo $scoreall; ?></td>
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
          dataTable.addRows(11);

          dataTable.addColumn('number');
          dataTable.setValue(0, 0, <? echo $score0; ?>);
          dataTable.setValue(1, 0, <? echo $score10; ?>);
          dataTable.setValue(2, 0, <? echo $score20; ?>);
          dataTable.setValue(3, 0, <? echo $score30; ?>);
          dataTable.setValue(4, 0, <? echo $score40; ?>);
          dataTable.setValue(5, 0, <? echo $score50; ?>);
          dataTable.setValue(6, 0, <? echo $score60; ?>);
          dataTable.setValue(7, 0, <? echo $score70; ?>);
          dataTable.setValue(8, 0, <? echo $score80; ?>);
          dataTable.setValue(9, 0, <? echo $score90; ?>);
		  dataTable.setValue(10, 0, <? echo $score100; ?>);
          draw(dataTable);
        }
      }

      function draw(dataTable) {
        var vis = new google.visualization.ImageChart(document.getElementById('chart'));
        var options = {
          chxl: '1:|0|10|20|30|40|50|60|70|80|90|100',
          chxp: '',
          chxr: '0,0,<? echo $max+10; ?>',
          chxs: '',
          chxtc: '',
          chxt: 'y,x',
          chbh: 'a',
          chs: '400x225',
          cht: 'bvg',
          chco: 'A2C180',
		  chm:'N,FF0000,0,-1,10',
		  chds:'0,<? echo $max+10; ?>',
          chd: 't:<? echo $score0; ?>,<? echo $score10; ?>,<? echo $score20; ?>,<? echo $score30; ?>,<? echo $score40; ?>,<? echo $score50; ?>,<? echo $score60; ?>,<? echo $score70; ?>,<? echo $score80; ?>,<? echo $score90; ?>,<? echo $score100; ?>',
          chdl: '',
          chtt: '分數統計'
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

