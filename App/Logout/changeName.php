<?php
session_start();

if (!isset($_SESSION['logged'])) {
    header('Location: App//login/login.php');
    exit();
}


if(isset($_POST['newName'])){
    $servername = "localhost";
    $database = "socialise";
    $username = "root";
    $password = "";

    $conn = mysqli_connect($servername, $username, $password, $database);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    $newname = $_POST['newName'];
    $result = $conn->query('UPDATE users SET login="'.$newname.'" WHERE id=' .$_SESSION["user_id"]. '');
    $result = $conn->query('UPDATE posts SET author="'.$newname.'" WHERE author_id=' .$_SESSION["user_id"]. '');
    unset($_newName['newName']);
    header('Location: ../Login/login.php');
}

?>