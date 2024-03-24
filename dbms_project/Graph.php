<?php
$servername = "localhost";
$username = "root";
$password = "Yash@123";
$database = "dbms_project1";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);
header('Content-Type: application/json');
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

header("Access-Control-Allow-Origin: *");


// Fetch data from the env_parameters table and calculate the sum of co, so2, and no2 for each state
$sql = "SELECT state, SUM(`co:ugm3`) AS co_sum, SUM(`so2:ugm3`) AS so2_sum, SUM(`tc_no2:ugm2`) AS no2_sum FROM env_parameters2 GROUP BY state ORDER BY co_sum + so2_sum + no2_sum DESC LIMIT 5";
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
