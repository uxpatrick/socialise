<?php
session_start();
if(!isset($_SESSION['logged'])){
    header('Location: login/login.php');
}
?>