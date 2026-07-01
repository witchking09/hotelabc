<?php
session_start();
include "D:/xampp/htdocs/hotelabc/includes/config.php";
?>

<!DOCTYPE html>

<html>

<title>Hotel</title>

<head>
<link rel="stylesheet" href="D:/xampp/htdocs/hotelabc/assets/css/hotelstyle.css">
</head>

<body>

<header>
<?php include HEADER;?>
</header>

<h1> Konto erstellen </h1>

<form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">
  <fieldset>
  <label for="vname">Vorname:</label><br>
  <input type="text" id="vname" name="vname" required><br>
  
  <label for="nname">Nachname:</label><br>
  <input type="text" id="nname" name="nname" required><br>
  
  <label for="gebdat">Geburtsdatum:</label><br>
  <input type="date" id="gebdat" name="gebdat" required><br>
  
  <label for="telnr">Telefonnummer:</label><br>
  <input type="text" id="telnr" name="telnr"><br>
  
  <label for="email">E-Mail:</label><br>
  <input type="email" id="email" name="email" required><br>
  
  <label for="passwort">Passwort:</label><br>
  <input type="password" id="passwort" name="passwort" required><br>
  </fieldset>
  
  <br>
  
  <fieldset>
  <h3>Geschlecht</h3>
  <input type="radio" id="m" name="geschlecht" value="m" required>
  <label for="maennlich">Männlich</label>
  
  <input type="radio" id="w" name="geschlecht" value="w">
  <label for="weiblich">Weiblich</label>
  
  <input type="radio" id="d" name="geschlecht" value="d">
  <label for="divers">Divers</label>
  </fieldset>
  
  <br>
  
  <input type="submit" value="Konto erstellen">
  
</form>

</body>

<footer>

<?php include FOOTER;?>

</footer>

</html>

<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
	
    $vname = filter_input(INPUT_POST, "vname", FILTER_SANITIZE_SPECIAL_CHARS);
    $nname = filter_input(INPUT_POST, "nname", FILTER_SANITIZE_SPECIAL_CHARS);
    $passwort = filter_input(INPUT_POST, "passwort", FILTER_SANITIZE_SPECIAL_CHARS);
    $gebdat = filter_input(INPUT_POST, "gebdat");
    $telnr = filter_input(INPUT_POST, "telnr", FILTER_SANITIZE_SPECIAL_CHARS);
    $email = filter_input(INPUT_POST, "email", FILTER_SANITIZE_EMAIL);
    $geschlecht = filter_input(INPUT_POST, "geschlecht");

    $hash = password_hash($passwort, PASSWORD_DEFAULT);

    $stmt = $conn->prepare("INSERT INTO Benutzer (VName, NName, passwort, GebDat, TelNr, Email, geschlecht)
                            VALUES (?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("sssssss", $vname, $nname, $hash, $gebdat, $telnr, $email, $geschlecht);

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


