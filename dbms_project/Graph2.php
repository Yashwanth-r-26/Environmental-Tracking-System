<?php
$servername = "localhost";
$username = "root";
$password = "Yash@123";
$database = "dbms_project1";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
header("Access-Control-Allow-Origin: *");

// Fetch data from the location table
$sql = "SELECT State_code, state_area FROM location ORDER BY state_area DESC LIMIT 5";
$result = $conn->query($sql);

$data = array();
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
}

// Close connection
$conn->close();

// Return data as JSON
echo json_encode($data);
?>
