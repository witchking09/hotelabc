<?php
session_start();
include "D:/xampp/htdocs/hotelabc/includes/config.php";
?>

<!DOCTYPE html>

<html>

<head>
	<title>HotelABC</title>
	<link rel="stylesheet" href="/hotelabc/assets/css/style.css">
	<link rel="icon" type="image/png" href="/hotelabc/assets/images/favicon.png">
</head>

<body>

<header>
<?php include HEADER;?>
</header>

<h1> Einloggen </h1>

<form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">
  <fieldset>
  <label for="email">E-Mail:</label><br>
  <input type="email" id="email" name="email" required><br>
  <label for="passwort">Passwort:</label><br>
  <input type="password" id="passwort" name="passwort" required><br>
  </fieldset>
  
  <br>
  
  <input type="submit" value="Einloggen">
  
</form>

<br>

<a href="homepage.php" target="self" rel="noopener noreferrer">
        <button type="button">Zurück</button>
        </a>

<footer>

<?php include FOOTER;?>

</footer>

</body>

</html>

<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = filter_input(INPUT_POST, "email", FILTER_SANITIZE_EMAIL);
	$passwort = filter_input(INPUT_POST, "passwort", FILTER_SANITIZE_SPECIAL_CHARS);

$stmt = $conn->prepare("
    SELECT * FROM benutzer WHERE Email = ?
");

$stmt->bind_param("s", $email);
$stmt->execute();

$result = $stmt->get_result();

if ($result->num_rows == 1) {

    $row = $result->fetch_assoc();

    if (password_verify($passwort, $row["passwort"])) {

        $_SESSION["benutzerID"] = $row["BID"];
        $_SESSION["benutzerEmail"] = $row["Email"];
        $_SESSION["benutzerVName"] = $row["VName"];
        $_SESSION["benutzerNName"] = $row["NName"];
        $_SESSION["benutzerGebDat"] = $row["GebDat"];
        $_SESSION["benutzerGeschlecht"] = $row["Geschlecht"];
        $_SESSION["benutzerTelNr"] = $row["TelNr"];
		$_SESSION["benutzerRolle"] = $row["role"];

        $stmt->close();
        mysqli_close($conn);

        header("Location: /hotelabc/public/homepage.php");
        exit();

    } else {
        echo "Ungültiges Passwort.";
    }

} else {
    echo "Benutzer nicht gefunden.";
}

}
?>


