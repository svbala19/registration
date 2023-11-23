<?php
// Assuming you have a database connection already established
$host = "localhost";
$dbname = "registrationform";
$username = "root";
$password = "";

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $fullName = $_POST['fullName'];
    $stdid = $_POST['stdid'];
    $email = $_POST['email'];
    $phoneNumber = $_POST['phoneNumber'];

    $stmt = $conn->prepare("INSERT INTO users (fullName, stdid, email, phoneNumber) VALUES (:fullName, :stdid, :email, :phoneNumber)");
    $stmt->bindParam(':fullName', $fullName);
    $stmt->bindParam(':stdid', $stdid);
    $stmt->bindParam(':email', $email);
    $stmt->bindParam(':phoneNumber', $phoneNumber);
    $stmt->execute();

    echo "Record inserted successfully";
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}

$conn = null; // Close the database connection
?>
