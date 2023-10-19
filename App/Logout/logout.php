<?php
session_start();
echo "dis";
unset($_SESSION['logged']);
header('Location: ../Login/login.php');
?>