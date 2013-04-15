<?php 
date_default_timezone_set('America/Los_Angeles');

$db_host = '127.0.0.1';
$db_user = 'root';
$db_pass = 'Slalom#6';
$db_name = 'energcloud';

$db = new mysqli($db_host, $db_user, $db_pass, $db_name) or die('Could not connect to database');

/* gets the data from a URL */
function get_data($url) {
	$ch = curl_init();
	$timeout = 5;
	curl_setopt($ch, CURLOPT_URL, $url);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
	$data = curl_exec($ch);
	curl_close($ch);
	return $data;

}

$get_zips_sql = "SELECT id, zip FROM locations WHERE id NOT IN (SELECT location_id from temperatures) AND no_temp = 0 AND state='CA' GROUP BY city";
$get_zips_q = $db->query($get_zips_sql);
while($row = $get_zips_q->fetch_object())
{
	$id = $row->id;
	$zip = $row->zip;
	$returned_content = get_data('http://www.melissadata.com/lookups/ZipWeather.asp?ZipCode='.$zip.'&submit1=Submit');

	$dom = new DOMDocument;
	$dom->validateOnParse = true;
	$dom->loadHTML($returned_content);

	$dom_xpath = new DOMXpath($dom);
	$table = $dom_xpath->query("//*[@class='Tableresultborder']")->item(0);

	$months = array('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');
	$data = array();
	$first = false;
	if (!is_null($table)) {

		$rows = $table->getElementsByTagName("tr");

	  foreach ($rows as $row) {
	    $cells = $row -> getElementsByTagName('td');
	    foreach ($cells as $cell) {
	    	if(in_array($cell->nodeValue, $months))
	      	{
	      		$sql = "INSERT INTO temperatures (location_id, time, high, average, low, cdd, hdd, created, modified) VALUES(".$id.", '".date('Y-m-d', strtotime($cell->nodeValue.' 1 2012'))."'";
	      		$first = true;
	      		$current_month = $cell->nodeValue;
	      		$count = 0;
	      	}
	      	else
	      	{
	      		if($first && $count < 5)
	      		{
	      			$value = str_replace(',', '', $cell->nodeValue);
	      			$sql .= ", ".$value;
	      			$count++;
	      		}
	      		else if($count == 5)
	      		{
	      			$sql .= ", NOW(), NOW())";
					if($db->query($sql))
					{
						echo $zip.' '.$current_month.' updated successfully<br>';
						$sql = '';
					}
					else
					{
						echo $zip.' '.$current_month.' failed<br>';
						echo $sql;
						exit;
					}
					$count++;
	      		}
	      	}
	    }

	  }
	}
	else
	{
		echo $zip.' not found<br>';
	}
}
?>