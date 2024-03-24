<?php

$servername = "localhost";
$username = "root";
$password = "Yash@123";
$database = "dbms_project1";


$conn = new mysqli('localhost', 'root', 'Yash@123', 'dbms_project1');

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

header("Access-Control-Allow-Origin: *");

$selectedState = $_GET['state'];


$sql1 = "SELECT * FROM location WHERE state_name = '$selectedState';"; 


if ($conn->multi_query($sql1)) {
    do {
        
        if ($result = $conn->store_result()) {
            
            while ($row = $result->fetch_assoc()) {
                
                echo "<p>State Name : <b>" . $row['state_name'] . "</b></p>"; // Modify column_name according to your database schema
                echo "<p>Capital : " . $row['state_capital'] . "</p>"; 
                echo "<p>Total Area(in sqKm) : " . $row['state_area'] . "</p>"; 
            }
           
            $result->free();
        }
    } while ($conn->next_result());
} else {
    echo "Error: " . $sql1 . "<br>" . $conn->error;
}


$sql3 ="SELECT nr.forest_area,nr.water_bodies , nr.sanctuary_nationalpark
FROM natural_resources AS nr
JOIN location AS loc ON nr.State_code = loc.State_code
WHERE loc.state_name = '$selectedState';";


if ($conn->multi_query($sql3)) {
    do {
        
        if ($result = $conn->store_result()) {
            
            while ($row = $result->fetch_assoc()) {
                
                echo "<p>Forest Area(in sqKm) : " . $row['forest_area'] . "</p>"; // Modify column_name according to your database schema
                echo "<p>Number of Water Bodies : " . $row['water_bodies'] . "</p>"; 
                echo "<p>No of sanctuary/nationalpark : " . $row['sanctuary_nationalpark'] . "</p>"; 
            }
            
            $result->free();
        }
    } while ($conn->next_result());
} else {
    echo "Error: " . $sql3 . "<br>" . $conn->error;
}




$sql2 = "SELECT ep.`t_2m:C`, ep.`relative_humidity_2m:p`, ep.`air_quality:idx`, ep.`pm2p5:ugm3`, ep.`pm10:ugm3`, ep.`co:ugm3`, ep.`so2:ugm3`, ep.`tc_no2:ugm2`,ep.`noise_level`
FROM env_parameters2 AS ep
JOIN location AS loc ON ep.state = loc.State_code
WHERE loc.state_name = '$selectedState';";



if ($conn->multi_query($sql2)) {
    do {
       
        if ($result = $conn->store_result()) {
           
            while ($row = $result->fetch_assoc()) {
                $result = $conn->query($sql2);


if ($result->num_rows > 0) {
    echo "<div class='container'>";
    echo "<table id='data-table'>";
    echo "<tr><th>Temperature</th><th>Humidity</th><th>AQI</th><th>PM 2.5</th><th>PM 10</th><th>CO</th><th>SO2</th><th>NO2</th><th>Noise Level</th></tr>";
    
   
    while($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row["t_2m:C"] . "</td>";
        echo "<td>" . $row["relative_humidity_2m:p"] . "</td>";
        echo "<td>" . $row["air_quality:idx"] . "</td>";
        echo "<td>" . $row["pm2p5:ugm3"] . "</td>";
        echo "<td>" . $row["pm10:ugm3"] . "</td>";
        echo "<td>" . $row["co:ugm3"] . "</td>";
        echo "<td>" . $row["so2:ugm3"] . "</td>";
        echo "<td>" . $row["tc_no2:ugm2"] . "</td>";
        echo "<td>" . $row["noise_level"] . "</td>";
        echo "</tr>";
    }

    
    echo "</table>";
} else {
    echo "0 results";
} 
            }
            // Free result set
            $result->free();
        }
    } while ($conn->next_result());
} else {
    echo "Error: " . $sql1 . "<br>" . $conn->error;
}

// Close connection
$conn->close();
?>