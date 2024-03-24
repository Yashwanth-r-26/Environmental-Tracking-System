<?php

$conn = new mysqli('localhost', 'root', 'Yash@123', 'dbms_project1');


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


header('Content-Type: application/json');
header("Access-Control-Allow-Origin: *");


$query = "SELECT state_name FROM location";


$result = $conn->query($query);


if ($result) {
  
    $stateNames = array();
    while ($row = $result->fetch_assoc()) {
        $stateNames[] = $row['state_name'];
    }
    
    echo json_encode($stateNames);
} else {
    
    echo json_encode(array('error' => 'Failed to retrieve state names'));
}


$conn->close();
?>
