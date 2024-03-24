<?php

$stateCoordinates = array(
    'AP' => array(15.9129, 79.7400),
    'AR' => array(28.2180, 94.7278),
    'AS' => array(26.2006, 92.9376),
    'BR' => array(25.0961, 85.3131),
    'CT' => array(21.2787, 81.8661),
    'GA' => array(15.2993, 74.1240),
    'GT' => array(22.2587, 71.1924),
    'HR' => array(29.0588, 76.0856),
    'HP' => array(31.1048, 77.1734),
    'JH' => array(23.6102, 85.2799),
    'KA' => array(15.3173, 75.7139),
    'KL' => array(10.8505, 76.2711),
    'MP' => array(22.9734, 78.6569),
    'MH' => array(19.7515, 75.7139),
    'MN' => array(24.6637, 93.9063),
    'ML' => array(25.4670, 91.3662),
    'MZ' => array(23.1645, 92.9376),
    'NL' => array(26.1584, 94.5624),
    'OR' => array(20.9517, 85.0985),
    'PB' => array(31.1471, 75.3412),
    'RJ' => array(27.0238, 74.2179),
    'SK' => array(27.5330, 88.5122),
    'TN' => array(11.1271, 78.6569),
    'TG' => array(18.1124, 79.0193),
    'TR' => array(23.9408, 91.9882),
    'UP' => array(26.8467, 80.9462),
    'UK' => array(30.0668, 79.0193),
    'WB' => array(22.9868, 87.8550),
    'AN' => array(11.7401, 92.6586),
    'CH' => array(30.7333, 76.7794),
    'DN' => array(20.1809, 73.0169),
    'LA' => array(10.5667, 72.6417),
    'DL' => array(28.7041, 77.1025),
    'PY' => array(11.9416, 79.8083)
);


function updateDatabase($latitude, $longitude, $state) {
    
    $apiUrl = 'https://api.meteomatics.com/2024-03-18T00:00:00Z/t_2m:C,relative_humidity_2m:p,air_quality:idx,pm2p5:ugm3,pm10:ugm3,co:ugm3,so2:ugm3,tc_no2:ugm2/'.$latitude.','.$longitude.'/json';

    
    $username = 'dsatm_r_yashwanth';
    $password = 'B610HfvlH6';

    
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $apiUrl);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_HTTPAUTH, CURLAUTH_BASIC);
    curl_setopt($ch, CURLOPT_USERPWD, "$username:$password");
    $response = curl_exec($ch);
    $statusCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
    curl_close($ch);

  
    if ($statusCode == 200) {
        try {
           
            $data = json_decode($response, true);
            var_dump($data);
            
            
            $dbHost = 'localhost';
            $dbUser = 'root';
            $dbPassword = 'Yash@123';
            $dbName = 'dbms_project1';
            $conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);

            
            foreach ($data['data'] as $item) {
                $parameter = $item['parameter'];
                $value = $item['coordinates'][0]['dates'][0]['value'];
                
                $escapedParameter = $conn->real_escape_string($parameter);
                $query = "UPDATE env_parameters2 SET `$escapedParameter` = $value WHERE state = '$state'";
                $conn->query($query);
            }

            $conn->close();
        } catch (Exception $e) {
            echo 'Error processing JSON: ' . $e->getMessage();
            echo 'Response content: ' . $response;
        }
    } else {
        
        echo 'Error: ' . $statusCode;
        echo 'Response content: ' . $response;
    }
}


foreach ($stateCoordinates as $state => list($latitude, $longitude)) {
    updateDatabase($latitude, $longitude, $state);
}

?>
