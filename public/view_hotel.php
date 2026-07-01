<?php
session_start();
include "D:/xampp/htdocs/hotelabc/includes/config.php";
?>

<!DOCTYPE html>
<html>
<head>
	<link rel="icon" type="image/png" href="/hotelabc/assets/images/favicon.png">
    <title>HotelABC</title>
    <link rel="stylesheet" href="../assets/css/style.css">
</head>

<body>

<header>
<?php include HEADER;?>
</header>

<?php 

$id = $_GET['id'] ?? null;

if (!$id || !is_numeric($id)) {
    die("Invalid hotel ID");
}

$stmt = $conn->prepare("SELECT * FROM hotels 
		WHERE hotel_id = ?");
		
$stmt->bind_param("i", $id);
$stmt->execute();

$result = $stmt->get_result();
$hotel = $result->fetch_assoc();

if (!$hotel) {
    die("Hotel not found");
}
?>

<h1><?= htmlspecialchars($hotel['hotel_name']) ?></h1>

<p><b>Ort:</b> <?= htmlspecialchars($hotel['location']) ?></p>
<p><b>Straße:</b> <?= htmlspecialchars($hotel['address']) ?></p>
<p><b>Stadt:</b> <?= htmlspecialchars($hotel['city']) ?></p>
<p><b>Land:</b> <?= htmlspecialchars($hotel['country']) ?></p>
<p><b>Postleitzahl:</b> <?= htmlspecialchars($hotel['postal_code']) ?></p>
<p><b>Telefonnummer:</b> <?= htmlspecialchars($hotel['phone_number']) ?></p>
<p><b>E-Mail:</b> <?= htmlspecialchars($hotel['email']) ?></p>
<p><b>Anzahl Räume:</b> <?= $hotel['number_of_rooms'] ?></p>
<p><b>Preis pro Nacht:</b> <?= htmlspecialchars($hotel['country']) ?></p>
<p><b>Beschreibung:</b> <?= htmlspecialchars($hotel['description']) ?></p>

<a href="book.php?hotel_id=<?= $hotel['hotel_id'] ?>">
    <button>Book Now</button>
</a>	

<footer>
<?php include FOOTER;?>
</footer>	

</body>

</html>