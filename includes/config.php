<?php 

define("HEADER", "D:/xampp/htdocs/hotelabc/includes/header.php");
define("FOOTER", "D:/xampp/htdocs/hotelabc/includes/footer.php");

define("DB_HOST", "localhost");
define("DB_USER", "root");
define("DB_PASS", "");
define("DB_NAME", "hoteldb");

	$conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
	
	try{
		
		mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);
		
	} catch(mysqli_sql_exception){
		
		echo"Could not connect";
		
	}
	
	if($conn){
		
		echo"";
		
	}

?>