<?php
$servername = "localhost";
$username = "root";
$password = "Yash@123";
$database = "dbms_project1";


$conn = new mysqli($servername, $username, $password, $database);
header('Content-Type: application/json');

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

header("Access-Control-Allow-Origin: *");


$sql = "SELECT state, SUM(`co:ugm3`) AS co_sum, SUM(`so2:ugm3`) AS so2_sum, SUM(`tc_no2:ugm2`) AS no2_sum FROM env_parameters2 GROUP BY state ORDER BY co_sum + so2_sum + no2_sum DESC LIMIT 5";
$result = $conn->query($sql);

$data = array();
if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    $data[] = $row;
  }
}


$conn->close();

echo json_encode($data);
?>
