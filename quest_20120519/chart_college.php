<?
include('conn.php');
include('statistic_function.php');
$y=date("Y");

$depart = getDepartId();
$stu = array();
$numOfTeacher = -1;
$flag = true;
for($i=0;$i<count($depart);$i++)
{
	if(!is_numeric($depart[$i]['id']))
	{
		if($flag)
		{
			$tmp = $i;
			$stu[$tmp] = countDepartId($depart[$i]['id'],$y);
			$flag = false;
		}	
		else
		{
			$stu[$tmp] += countDepartId($depart[$i]['id'],$y);
		}	
		$numOfTeacher++;
	}
	else
	{
		$stu[$i] = countDepartId($depart[$i]['id'],$y);
	}
}

$sum = array_sum($stu);

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
       <td colspan="9" style="font-weight:bold; color: #900;">院別統計</td>
     </tr>
     <tr>
		
       <td width="80">院別</td>
	   <?
			for($i=0;$i<count($depart)-$numOfTeacher;$i++)
			{
				if($depart[$i]['id'] != 'K') 
					echo "<td width='100'>".$depart[$i]['name']."</td>";
			}
		?>
       <td width="80">總計</td>
     </tr>
     <tr>
       <td>人數</td>
	   <? 
			for($i=0;$i<count($stu);$i++)
			{
				echo "<td>".$stu[$i]."</td>";
			}
		?>       
       <td><? echo $sum; ?></td>
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
          dataTable.addRows(<? echo count($stu) ?>);

          dataTable.addColumn('number');
		 <?
			for($i=0;$i<count($stu);$i++)
			{	
				echo "dataTable.setValue(".$i.", 0, ".$stu[$i]."); ";         
			}
		  ?>
          draw(dataTable);
        }
      }

      function draw(dataTable) {
        var vis = new google.visualization.ImageChart(document.getElementById('chart'));
        var options = {
          <?
			$str = "chxl: '1:|";
			
			for($i=0;$i<count($depart)-$numOfTeacher;$i++)
			{
					$str .= $depart[$i]['name']."|";
			}
			$str .= "',";
			echo $str;
		  ?>
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
          chd: 't:<? 
					for($i=0;$i<count($stu);$i++)
					{	
						if($i == count($stu)-1)
							echo $stu[$i]."";
						else
							echo $stu[$i].",";         
					}					
					?>',			
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
