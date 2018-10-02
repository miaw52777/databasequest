<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Test Google API</title>
    <script type='text/javascript' src='http://www.google.com/jsapi'></script>
    <script type='text/javascript'>
      google.load('visualization', '1', {packages:['table']});
      google.setOnLoadCallback(drawTable);
      function drawTable() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Name');
        data.addColumn('number', 'Salary');
        data.addColumn('boolean', 'Full Time Employee');
        data.addRows(4);
        data.setCell(0, 0, 'Mike');
        data.setCell(0, 1, 10000, '$10,000');
        data.setCell(0, 2, true);
        data.setCell(1, 0, 'Jim');
        data.setCell(1, 1, 8000, '$8,000');
        data.setCell(1, 2, false);
        data.setCell(2, 0, 'Alice');
        data.setCell(2, 1, 12500, '$12,500');
        data.setCell(2, 2, true);
        data.setCell(3, 0, 'Bob');
        data.setCell(3, 1, 7000, '$7,000');
        data.setCell(3, 2, true);

       var table = new google.visualization.Table(document.getElementById('table_div'));
       table.draw(data, {showRowNumber: true});
      }
    </script>
	<script type="text/javascript">
		function check(val){
			alert(val);
		}
	</script>
</head>

<body>
<table align="center">
	<tr>
    	<td>
        	<div id='table_div'></div>
        </td>
    </tr>
</table>
<select onchange="check(this.value)">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
</select>
</body>
</html>

