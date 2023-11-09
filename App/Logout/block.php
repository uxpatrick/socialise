<?php
session_start();

if (!isset($_SESSION['logged'])) {
    header('Location: App//login/login.php');
    exit();
}

$servername = "localhost";
$database = "socialise";
$username = "root";
$password = "";

$conn = mysqli_connect($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$result = $conn->multi_query('UPDATE users SET password="blocked_account" WHERE id=' .$_SESSION["user_id"]. '; UPDATE posts SET status="blocked_account" WHERE author_id=' . $_SESSION["user_id"] . '');
unset($_SESSION['logged']);
header('Location: ../Login/login.php');
?>