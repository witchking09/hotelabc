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
<link rel="stylesheet" href="../assets/css/indexstyle.css">
</head>

<body>

<header>

	<?php include HEADER;?>

</header>

<footer>

	<?php include FOOTER;?>

</footer>

</body>