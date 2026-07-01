<?php
session_start();
include "D:/xampp/htdocs/hotelabc/includes/config.php";
?>

<html>

<head>

<title>Hotel suche</title>

<link rel="stylesheet" href="../assets/css/hotelstyle.css">

</head>

<body>

<header>
<?php include HEADER;?>
</header>

<a href="homepage.html" target="_self" rel="noopener noreferrer">
            <button class = "btn" type="button">Hotel ABC</button>
        </a>

<br>
<br>
<br>

<?php

$search = $_POST['search'];

$sql = "SELECT * FROM hotels 
		WHERE (hotel_name REGEXP '$search' 
		OR location REGEXP '$search' 
		OR address REGEXP '$search' 
		OR city REGEXP '$search'
		OR state REGEXP '$search'
		OR country REGEXP '$search')";;

$result = $conn->query($sql);

if ($result->num_rows > 0) {

    $data = [];
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }

    echo "<table border='1'>";
    echo "<tr>
            <th>Hotelname</th>
            <th>Ort</th>
            <th>Adresse</th>
            <th>Stadt</th>
            <th>Bundestaat</th>
            <th>Land</th>
            <th>Postleitzahl</th>
            <th>Telefonnummer</th>
            <th>E-Mail</th>
            <th>Anzahl der Zimmer</th>
          </tr>";

    foreach ($data as $row) {
        echo "<tr>";
        echo "<td>{$row['hotel_name']}</td>";
        echo "<td>{$row['location']}</td>";
        echo "<td>{$row['address']}</td>";
        echo "<td>{$row['city']}</td>";
        echo "<td>{$row['state']}</td>";
        echo "<td>{$row['country']}</td>";
        echo "<td>{$row['postal_code']}</td>";
        echo "<td>{$row['phone_number']}</td>";
        echo "<td>{$row['email']}</td>";
        echo "<td>{$row['number_of_rooms']}</td>";
        echo "</tr>";
    }

    echo '</table>';

} else {
    echo '<br>';
	echo '<br>';
	echo '<br>';
	echo "<tr>";
	echo '<td> Kein Hotel gefunden </td>';
	echo "</tr>";
	echo '<br>';
	echo '<a href="homepage.html" target="_self" rel="noopener noreferrer"> <button type="button">Zurück</button> </a>';
	echo '<br>';
	echo '<br>';
}

$conn->close();
?>

<footer>

<?php include FOOTER;?>

</footer>

</body>

</html>