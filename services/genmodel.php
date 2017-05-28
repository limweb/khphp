<?php
require_once __DIR__.'/../libs/RestfulServer.php';
use Illuminate\Database\Capsule\Manager as Capsule;

$sql = "SELECT
information_schema.`COLUMNS`.COLUMN_NAME,
information_schema.`COLUMNS`.DATA_TYPE,
information_schema.`COLUMNS`.ORDINAL_POSITION,
information_schema.`COLUMNS`.COLUMN_DEFAULT,
information_schema.`COLUMNS`.IS_NULLABLE,
CASE 
 WHEN CHARACTER_MAXIMUM_LENGTH IS NOT NULL THEN CHARACTER_MAXIMUM_LENGTH
 WHEN NUMERIC_PRECISION IS NOT NULL THEN NUMERIC_PRECISION
 WHEN NUMERIC_SCALE IS NOT NULL THEN  NUMERIC_SCALE
 WHEN DATA_TYPE = 'timestamp' THEN CONCAT('19')
 WHEN DATA_TYPE = 'datetime' THEN CONCAT('19')

END AS DATALENGTH,
information_schema.`COLUMNS`.COLUMN_KEY,
information_schema.`COLUMNS`.EXTRA,
information_schema.`COLUMNS`.COLUMN_COMMENT
FROM
	INFORMATION_SCHEMA. COLUMNS
WHERE
	TABLE_SCHEMA = 'kuihuad'
AND TABLE_NAME = 'products'
ORDER BY
	ORDINAL_POSITION ASC";
$tabledata = Capsule::select($sql);
$datas = Capsule::select('select * from products');

dump($tabledata,$data);
dump(json_encode($tabledata,JSON_UNESCAPED_UNICODE));
?>

<table width="100%" border="1">
	<caption>table title and/or explanatory text</caption>
	<thead>
		<tr>
	 <?php foreach($tabledata as $row ) { ?>
			<th><?=$row['COLUMN_NAME']?></th>
	<?php } ?>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($datas as $data) { 
			echo '<tr>';
				foreach($tabledata as $row ) {  
					echo '<td>';
				 	switch ($row['DATA_TYPE']) {
						case 'int':
							 echo '<input style="width:\"100%\";height:\"100$\";" type="NUMBER" value="'.$data[$row['COLUMN_NAME']].'"  />';
							break;
						
						default:
							echo '<sapn>'.$data[$row['COLUMN_NAME']].'</span>';
							break;
					} 
					echo '</td>';
				 } 
			echo '</tr>';
		 } ?>
	</tbody>
</table>

<?php

