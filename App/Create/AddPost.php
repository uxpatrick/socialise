<?php
session_start();
$servername = "localhost";
$database = "socialise";
$username = "root";
$password = "";

// Create connection

$conn = mysqli_connect($servername, $username, $password, $database);

// Check connection

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (!empty($_POST["input-post-submit"])) {
    $filename = $_FILES["uploadfile"]["name"];
    $tempname = $_FILES["uploadfile"]["tmp_name"];
    $folder = "./uploaded_images/" . $filename;

    $input_post = $_POST['input-post'];
    $current_user_id = $_SESSION['user_id'];

    $insert_post_sql = 'INSERT INTO posts (content, comments, author, createdAt, attachments) VALUES ("' . $input_post . '", NULL, (SELECT login FROM users WHERE id = ' . $current_user_id . '), "' . date("Y-m-d H:i:s") . '", "' . $filename . '");';

    $conn->query($insert_post_sql);

    move_uploaded_file($tempname, $folder);
}

header('Location: ../../index.php');

?>