<?php

include `database.php`;

	$query = $link->query("SELECT * FROM person")
	$result = array();
	
	while (&rowData = $query -> fetch_assoc()){
		$result[] = $rowData;
	}
	
	echo json_decode($result);