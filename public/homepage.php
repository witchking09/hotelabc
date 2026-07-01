<?php
session_start();
include "D:/xampp/htdocs/hotelabc/includes/config.php";
?>

<!DOCTYPE html>
<html>
<head>
    <title>Hotel</title>
    <link rel="stylesheet" href="../assets/css/hotelstyle.css">
</head>

<body>

<header>
<?php include HEADER;?>
</header>
    
    <div class="container">
        <h1><?php if(isset($_SESSION["VName"])){echo "Wilkommen bei Hotel ABC, " . $_SESSION["VName"];} else{echo "Wilkommen bei Hotel ABC";}; ?></h1>
    </div>
	
<footer>

<?php include FOOTER;?>

</footer>	
	
</body>
</html>

