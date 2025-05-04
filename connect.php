<?php
$host = "db";               // Name of MySQL service from docker-compose
$user = "root";
$password = "rootpass";
$database = "musicdb";

$conn = new mysqli($host, $user, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
