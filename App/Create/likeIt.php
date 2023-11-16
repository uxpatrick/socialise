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

if (!empty($_POST["likePostID"])) {
    $current_user_id = $_SESSION['user_id'];
    $postToBeLiked = $_POST['likePostID'];
    $typeOfPost = $_POST['sourceOfLike'];


    $path = 'Location: ../../index.php#'.$postToBeLiked;
    $pathFriends = 'Location: ../../friends.php#'.$postToBeLiked;
    $pathCommentSection = 'Location: ../../PostDisplay.php?postId='.$postToBeLiked;
    $result = $conn->query('INSERT INTO `reactions` (`id`, `post_id`, `user`) VALUES (NULL, "'.$postToBeLiked.'" , "'.$current_user_id.'" );');

    // while ($row = $result->fetch_assoc()) {
    //     $resultValidate = $conn->query('SELECT * FROM friends WHERE user_id="' . $row['id'] . '" AND connected_to="'.$current_user_id.'"');
    //     if (mysqli_num_rows(($resultValidate))==0) {
    //         $resultValidate = $conn->query('SELECT * FROM friends WHERE user_id="' . $current_user_id . '" AND connected_to="'.$row['id'].'"');
    //         if (mysqli_num_rows(($resultValidate))==0) {
    //             $insert_post_sql = 'INSERT INTO friends (user_id, connected_to) VALUES (' . $current_user_id . ', "' . $row['id'] . '");';
    //             $conn->query($insert_post_sql);
    //         }
    //      }
    // }
    if($typeOfPost=='index.php'){
        header($path);
        exit();
    }
    if($typeOfPost=='friends.php'){
        header($pathFriends);
        exit();
    }
    if($typeOfPost=='PostDisplay.php'){
        header($pathCommentSection);
        exit();
    }
}

header('Location: ../../index.php');

?>