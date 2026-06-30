<?php
session_start();
include("database.php");

if (!isset($_SESSION["benutzerRolle"]) || $_SESSION["benutzerRolle"] != "admin") {
    die("No permission");
}

$sql = "SELECT * FROM benutzer";

	$result = $conn->query($sql);

    $data = [];
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
?>

<form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">

<fieldset>

    <label>Vorname:</label><br>
    <input type="text" name="vname" value="<?= htmlspecialchars($row['VName']) ?>" required><br>

    <label>Nachname:</label><br>
    <input type="text" name="nname" value="<?= htmlspecialchars($row['NName']) ?>" required><br>

    <label>Geburtsdatum:</label><br>
    <input type="date" name="gebdat" value="<?= htmlspecialchars($row['GebDat']) ?>" required><br>

    <label>Telefonnummer:</label><br>
    <input type="text" name="telnr" value="<?= htmlspecialchars($row['TelNr']) ?>" required><br>

    <label>Email:</label><br>
    <input type="email" name="email" value="<?= htmlspecialchars($row['email']) ?>" required><br>

    <button type="submit" class="btn-edit">Submit</button>

</fieldset>

</form>