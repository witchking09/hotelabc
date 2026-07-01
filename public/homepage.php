<?php
session_start();
include "D:/xampp/htdocs/hotelabc/includes/config.php";
?>

<!DOCTYPE html>
<html>
<head>
	<link rel="icon" type="image/png" href="/hotelabc/assets/images/favicon.png">
    <title>HotelABC</title>
    <link rel="stylesheet" href="../assets/css/style.css">
</head>

<body>

<header>
<?php include HEADER;?>
</header>
    
	<br>
	<br>
	
    <div class="container">
        <h1><?php if(isset($_SESSION["VName"])){echo "Wilkommen bei Hotel ABC, " . $_SESSION["VName"];} else{echo "Wilkommen bei Hotel ABC";}; ?></h1>
    </div>
	
<footer>

<?php include FOOTER;?>

</footer>	
	
</body>
</html>

