<?php
require './classes/DBconnector.php';
use classes\DBconnector;
header("Access-Control-Allow-Origin: http://localhost:3000");
header("Access-Control-Allow-Methods: POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization"); 

if ($_SERVER["REQUEST_METHOD"] === "OPTIONS") {
    http_response_code(200);
    exit();
}

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $data = json_decode(file_get_contents("php://input"), true);

    if (empty($data['patientID']) || empty($data['password'])) {
        echo json_encode(array("message" => "User ID and Password are required."));
        exit();
    }

    $patientID = $data['patientID'];
    $password = $data['password'];

    $dbcon = new DBconnector();
    $conn = $dbcon->getConnection();

    $sql = "SELECT * FROM patient WHERE Patient_ID = '$patientID' LIMIT 1"; 
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    if (!$user || $password !== $user["Password"]) {
        echo json_encode(array("message" => "Invalid User ID or Password."));
        exit();
    }


    echo json_encode(array("message" => "Login successful."));

} else {
    echo json_encode(array("message" => "Method not allowed."));
}
?>
