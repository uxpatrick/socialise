<?php
session_start();
if(!isset($_SESSION['logged'])){
    header('Location: login/login.php');
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel=stylesheet href=index.css>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Strona główna</title>
</head>
<body>
    <a class=logout href=# onclick="logoutPopup()">Wyloguj się</a>
</body>
<script src='Logout/Logout.js'></script>
</html>

