<?php
$servername = "localhost";
$username = "root";  // default on local
$password = "";      // change if you set a password
$database = "musicdb";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
?>
