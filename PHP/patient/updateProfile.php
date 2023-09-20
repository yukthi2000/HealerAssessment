<?php

header("Access-Control-Allow-Origin: http://localhost:3000");
header("Access-Control-Allow-Methods: PUT");
header("Access-Control-Allow-Headers: Content-Type, Authorization"); 

require '../classes/DBconnector.php';
use classes\DBconnector;

$con = new DBconnector();
$conn = $con->getConnection();

try {    
    if ($_SERVER["REQUEST_METHOD"] !== "PUT") {
        throw new Exception("Invalid request method. Only PUT requests are allowed.");
    }

    $data = json_decode(file_get_contents("php://input"), true);

    if (!isset($data['Patient_ID'])) {
        throw new Exception('User_ID is not provided in the request.'+$data);
    }

    $stmt = $conn->prepare("UPDATE patient SET PhoneNo = :PhoneNo, Address = :Address ,SpecialDisease= :SpecialDisease WHERE Patient_ID = :Patient_ID");
    $stmt->bindValue(':Patient_ID', $data['Patient_ID']);
    $stmt->bindValue(':PhoneNo', $data['PhoneNo']);
    $stmt->bindValue(':Address', $data['Address']);
    $stmt->bindValue(':SpecialDisease', $data['SpecialDisease']);


    $stmt->execute();
    $rowCount = $stmt->rowCount();
    if ($rowCount > 0) {
        echo json_encode(array('message' => 'Profile details updated successfully'));
    } else {
        echo json_encode(array('error' => 'Patient details not found'));

    }

     
    

    // if (isset($_FILES['Profile']) ) {
    //     $target_dir = "profile/users_pic/";
    //     $target_file = $target_dir . basename($_FILES["Profile"]["name"]);
    //     $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

    //     if (move_uploaded_file($_FILES["Profile"]["tmp_name"], $target_file)) {
    //         $imageLink =  $target_file; 
    //         $stmt = $conn->prepare("UPDATE patient SET profile = :profile WHERE Patient_ID = :Patient_ID");
    //         $stmt->bindValue(':Patient_ID', $data['Patient_ID']);
    //         $stmt->bindValue(':profile', $imageLink);
    //         $stmt->execute();
    //         echo json_encode(array('message' => 'Profile picture uploaded successfully'));
    //     } else {
    //         echo json_encode(array('error' => 'Sorry, there was an error uploading your file.'));
    //     }
    // }
    // else{
    //     echo json_encode(array('error' => 'No file uploaded'));
    // }


    
} catch (PDOException $e) {
    echo json_encode(array('error' => 'Database error: ' . $e->getMessage()));
} catch (Exception $e) {
    echo json_encode(array('error' => $e->getMessage()));
}

