<?php
include 'connect.php';

$sql = "SELECT artist_id, name, genre FROM Artists";
$result = $conn->query($sql);

echo "<table border='1' cellpadding='10'>
<tr><th>Artist ID</th><th>Name</th><th>Genre</th></tr>";

if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    echo "<tr>
            <td>{$row['artist_id']}</td>
            <td>{$row['name']}</td>
            <td>{$row['genre']}</td>
          </tr>";
  }
} else {
  echo "<tr><td colspan='3'>No results found</td></tr>";
}
echo "</table>";

$conn->close();
?>
