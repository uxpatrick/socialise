<?php
session_start();
$servername = "localhost";
$database = "socialise";
$username = "root";
$password = "";

$conn = mysqli_connect($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (!empty($_POST["add_friend_submit"])) {
    $current_user_id = $_SESSION['user_id'];
    $input_friend = $_POST['add_friend'];
    $typeOfPost = $_POST['typeOfPost'];
    $result = $conn->query('SELECT * FROM users WHERE friend_id="' . $input_friend . '"');

    while ($row = $result->fetch_assoc()) {
        $resultValidate = $conn->query('SELECT * FROM friends WHERE user_id="' . $row['id'] . '" AND connected_to="'.$current_user_id.'"');
        if (mysqli_num_rows(($resultValidate))==0) {
            $resultValidate = $conn->query('SELECT * FROM friends WHERE user_id="' . $current_user_id . '" AND connected_to="'.$row['id'].'"');
            if (mysqli_num_rows(($resultValidate))==0) {
                $insert_post_sql = 'INSERT INTO friends (user_id, connected_to) VALUES (' . $current_user_id . ', "' . $row['id'] . '");';
                $conn->query($insert_post_sql);
            }
         }
    }
    if($typeOfPost=='private'){
        header('Location: ../../friends.php');
        exit();
    }
}

header('Location: ../../index.php');

?>