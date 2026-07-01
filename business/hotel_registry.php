<?php
session_start();
include "D:/xampp/htdocs/hotelabc/includes/config.php";
?>

<!DOCTYPE html>

<html>

<?php if (isset($_SESSION["benutzerRolle"]) && ($_SESSION["benutzerRolle"] == "company" || $_SESSION["benutzerRolle"] == "admin")) ?>

<head>
    <title>HotelABC</title>
    <link rel="stylesheet" href="../assets/css/style.css">
	<link rel="icon" type="image/png" href="/hotelabc/assets/images/favicon.png">
</head>

<body>

<header>
<?php include HEADER;?>
<link rel="stylesheet" href="indexstyle.css">
</header>

<h1> Hotel Hinzufügen </h1>

<form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">
  <fieldset>
	<label for="hname">Hotelname:</label><br>
	<input type="text" id="hname" name="hname" required><br>
  
	<label for="loc">Ort:</label><br>
	<input type="text" id="loc" name="loc" required><br>
  
	<label for="address">Straße:</label><br>
	<input type="text" id="address" name="address" required><br>
  
	<label for="city">Stadt:</label><br>
	<input type="text" id="city" name="city"><br>
  
	<label for="state">Staat:</label><br>
	<input type="state" id="state" name="state"><br>
  
	<label for="country">Land:</label><br>
	<input type="text" id="country" name="country" required><br>
  
	<label for="postalCode">PLZ:</label><br>
	<input type="text" id="postalCode" name="postalCode" required><br>
  
	<label for="telnr">Telefonnummer:</label><br>
	<input type="telnr" id="telnr" name="telnr" required><br>
  
	<label for="email">E-Mail:</label><br>
	<input type="email" id="email" name="email" required><br>
  
	<label for="numOfRoom">Anzahl Räume:</label><br>
	<input type="text" id="numOfRoom" name="numOfRoom" required><br>
  
  </fieldset>
  
  <br>
  
  <input type="submit" value="Hotel Hinzufügen">
  
</form>

<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $hname = filter_input(INPUT_POST, "hname", FILTER_SANITIZE_SPECIAL_CHARS);
    $loc = filter_input(INPUT_POST, "loc", FILTER_SANITIZE_SPECIAL_CHARS);
    $address = filter_input(INPUT_POST, "address", FILTER_SANITIZE_SPECIAL_CHARS);
    $city = filter_input(INPUT_POST, "city", FILTER_SANITIZE_SPECIAL_CHARS);
	$state = filter_input(INPUT_POST, "state", FILTER_SANITIZE_SPECIAL_CHARS);
    $country = filter_input(INPUT_POST, "country", FILTER_SANITIZE_SPECIAL_CHARS);
	$postalCode = filter_input(INPUT_POST, "postalCode", FILTER_SANITIZE_SPECIAL_CHARS);
	$telnr = filter_input(INPUT_POST, "telnr", FILTER_SANITIZE_SPECIAL_CHARS);
    $email = filter_input(INPUT_POST, "email", FILTER_SANITIZE_EMAIL);
    $numOfRoom = filter_input(INPUT_POST, "numOfRoom", FILTER_SANITIZE_SPECIAL_CHARS);

    $stmt = $conn->prepare("INSERT INTO hotels (hotel_name, location, address, city, state, country, postal_code, phone_number, email, number_of_rooms)
                            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("sssssssssi", $hname, $loc, $address, $city, $state, $country, $postalCode, $telnr, $email, $numOfRoom);

    if ($stmt->execute()) {
        echo "";
    } else {
        echo "Fehler: " . $stmt->error;
    }

    $stmt->close();
    mysqli_close($conn);
	
	header("Location: /hotelabc/public/homepage.php");
    exit();
}
?>

<footer>

<?php include FOOTER;?>

</footer>

</body>

</html>


