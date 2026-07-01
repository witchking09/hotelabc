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

<header>
<?php include HEADER;?>
</header>

<form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">

<fieldset>

    <label>Vorname:</label><br>
    <input type="text" name="vname" value="<?= htmlspecialchars($_SESSION["benutzerVName"]) ?>" required><br>

    <label>Nachname:</label><br>
    <input type="text" name="nname" value="<?= htmlspecialchars($_SESSION["benutzerNName"]) ?>" required><br>

    <label>Geburtsdatum:</label><br>
    <input type="date" name="gebdat" value="<?= htmlspecialchars($_SESSION["benutzerGebDat"]) ?>" required><br>

    <label>Telefonnummer:</label><br>
    <input type="text" name="telnr" value="<?= htmlspecialchars($_SESSION["benutzerTelNr"]) ?>" required><br>

    <label>Email:</label><br>
    <input type="email" name="email" value="<?= htmlspecialchars($_SESSION["benutzerEmail"]) ?>" required><br>

    <button type="submit" class="btn-edit">Submit</button>

</fieldset>

  <fieldset>
  <h3>Geschlecht</h3>
  <input type="radio" id="m" name="geschlecht" value="m" required>
  <label for="maennlich">Männlich</label>
  <input type="radio" id="w" name="geschlecht" value="w">
  <label for="weiblich">Weiblich</label>
  <input type="radio" id="d" name="geschlecht" value="d">
  <label for="divers">Divers</label>
  </fieldset>

</form>

<footer>
	<?php include FOOTER;?>
</footer>

</html>

<?php 
	
	if ($_SERVER["REQUEST_METHOD"] == "POST") {
		
    $vname = filter_input(INPUT_POST, "vname", FILTER_SANITIZE_SPECIAL_CHARS);
    $nname = filter_input(INPUT_POST, "nname", FILTER_SANITIZE_SPECIAL_CHARS);
    $gebdat = filter_input(INPUT_POST, "gebdat");
    $telnr = filter_input(INPUT_POST, "telnr", FILTER_SANITIZE_SPECIAL_CHARS);
    $email = filter_input(INPUT_POST, "email", FILTER_SANITIZE_EMAIL);
    $geschlecht = filter_input(INPUT_POST, "geschlecht");

    $stmt = $conn->prepare("UPDATE Benutzer SET VName = ?, NName = ?, GebDat = ?, TelNr = ?, Email = ?, geschlecht = ?
                            WHERE BID = ?");
    $stmt->bind_param("ssssssi", $vname, $nname, $gebdat, $telnr, $email, $geschlecht, $_SESSION["benutzerID"]);

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