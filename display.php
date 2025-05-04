<?php
include 'connect.php';

// Query to join Albums and Artists
$sql = "SELECT 
            Albums.album_id, 
            Albums.title, 
            Albums.release_year, 
            Artists.name AS artist_name 
        FROM Albums
        JOIN Artists ON Albums.artist_id = Artists.artist_id";

$result = $conn->query($sql);

// Start HTML output
echo "<style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 1rem;
            font-family: 'Inter', sans-serif;
        }
        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #faf3ec;
            font-weight: bold;
        }
      </style>";

if ($result && $result->num_rows > 0) {
    echo "<table>";
    echo "<tr><th>Album ID</th><th>Title</th><th>Artist</th><th>Year</th></tr>";
    while ($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>" . htmlspecialchars($row["album_id"]) . "</td>
                <td>" . htmlspecialchars($row["title"]) . "</td>
                <td>" . htmlspecialchars($row["artist_name"]) . "</td>
                <td>" . htmlspecialchars($row["release_year"]) . "</td>
              </tr>";
    }
    echo "</table>";
} else {
    echo "<p>No records found in the Albums table.</p>";
}

$conn->close();
?>
