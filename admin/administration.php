<?php 
session_start();

include ("../includes/database.php");

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

<body>

<header>

	<?php include __DIR__ . "/../includes/header.php";?>

</header>

<footer>

	<?php include __DIR__ . "/../includes/footer.php";?>

</footer>

</body>