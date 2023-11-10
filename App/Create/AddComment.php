<?php
session_start();
$servername = "localhost";
$database = "socialise";
$username = "root";
$password = "";

$conn = mysqli_connect($servername, $username, $password, $database);
$current_user_id = $_SESSION['user_id'];

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (!empty($_POST["comment_input_submit"])) {
    $comment_input_content = $_POST["comment_input"];
    $comment_input_post_id = $_POST["comment_input_post_id"];
    $conn->query('INSERT INTO comments (content, createdAt, author_id, post_id) VALUES ("' . $comment_input_content . '", "' . date("Y-m-d H:i:s") . '", "' . $current_user_id . '", "' . $comment_input_post_id . '");');
}

if ($_GET['redirect'] != null) {
    header('Location: ../../PostDisplay.php?postId=' . $_GET['redirect'] . '');
} else {
    header('Location: ../../index.php');
}

?>