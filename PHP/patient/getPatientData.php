<?php
// Enable CORS for all requests
header("Access-Control-Allow-Origin: http://localhost:3000");
header("Access-Control-Allow-Methods: GET, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization"); // Add 'Authorization' if you are using it in your requests

require '../classes/DBconnector.php';
use \classes\DBconnector;

try {
    $dbcon = new DBconnector();
    $conn = $dbcon->getConnection();
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Check if the request method is GET
    if ($_SERVER['REQUEST_METHOD'] === 'GET') {
        // Check if 'patient_ID' is provided as a query parameter
        if (isset($_GET['patientID']) && !empty($_GET['patientID'])) {
            // Get the patient ID from the query parameter
            $patientID = $_GET['patientID'];

            // Prepare and execute the SQL query using the patientID as a parameter
            $stmt = $conn->prepare("SELECT * FROM patient WHERE Patient_ID = '$patientID'");
            $stmt->execute();

            // Fetch the filtered data as an associative array
            $filteredData = $stmt->fetchAll(PDO::FETCH_ASSOC);

            // Check if any data was found for the given Patient_ID
            if ($filteredData) {
                // get 

                // Return the filtered data as JSON
                header('Content-Type: application/json');
                echo json_encode($filteredData);
            } else {
                // If no data found for the given Patient_ID, return an error message or appropriate response
                echo json_encode(['message' => 'Patient not found']);
            }
        } else {
            // If 'patientID' is not provided as a query parameter, return an error message or appropriate response
            echo json_encode(['message' => 'Missing patientID parameter in the request']);
        }
    }
} catch (Exception $e) {
    // Return an error response with the specific error message to the front-end
    header('HTTP/1.1 500 Internal Server Error');
    echo json_encode(['success' => false, 'message' => 'Error fetching data: ' . $e->getMessage()]);
}
?>
