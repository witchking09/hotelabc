<?php
session_start();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Hotel</title>
    <link rel="stylesheet" href="../assets/css/hotelstyle.css">
</head>

<body>

<header>
<?php include __DIR__ . "/../includes/header.php";?>
</header>
    
    <div class="container">
        <h1><?php if(isset($_SESSION["VName"])){echo "Wilkommen bei Hotel ABC, " . $_SESSION["VName"];} else{echo "Wilkommen bei Hotel ABC";}; ?></h1>
    </div>
	
<footer>

<?php include __DIR__ . "/../includes/footer.php";?>

</footer>	
	
</body>
</html>

