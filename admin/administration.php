<?php 
session_start();

include "D:/xampp/htdocs/hotelabc/includes/config.php";

if (isset($_SESSION["benutzerRolle"]) && $_SESSION["benutzerRolle"] == "admin") {
	
	$sql = "SELECT * FROM benutzer";

	$result = $conn->query($sql);

    $data = [];
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }

} else{
	
	echo "Permission not granted";
	
}

?>

<!DOCTYPE html>

<head>
    <title>HotelABC</title>
    <link rel="stylesheet" href="../assets/css/style.css">
	<link rel="icon" type="image/png" href="/hotelabc/assets/images/favicon.png">
</head>

<body>

<header>

	<?php include HEADER;?>

</header>

<footer>

	<?php include FOOTER;?>

</footer>

</body>