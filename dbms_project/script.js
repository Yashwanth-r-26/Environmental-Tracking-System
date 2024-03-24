// script.js
document.addEventListener('DOMContentLoaded', function () {
    var getDataBtn = document.getElementById('getDataBtn');
    getDataBtn.addEventListener('click', getEnvironmentalData);
});

function getEnvironmentalData() {
    var selectedState = document.getElementById('stateSelect').value;
    var apiUrl = 'https://api.example.com/environmental-data?state=' + selectedState;

    // Simulate a fetch request using setTimeout
    setTimeout(function () {
        // Replace this with an actual fetch request in a real-world scenario
        var responseData = {
            pollution_level: 'Moderate',
            temperature: '25°C',
            humidity: '60%',
            // Add more environmental factors as needed
        };

        displayData(responseData);
    }, 1000); // Simulating a delay for the API call
}

function displayData(data) {
    var resultContainer = document.getElementById('result');
    resultContainer.innerHTML = '';

    // Display the retrieved data in the result container
    // Modify this part according to your actual data structure
    for (var key in data) {
        if (data.hasOwnProperty(key)) {
            resultContainer.innerHTML += '<p><strong>' + key + ':</strong> ' + data[key] + '</p>';
        }
    }
}
