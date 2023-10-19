<?php





if(isset($_POST['login']) && isset($_POST['mail']) && isset($_POST['password']))
{
  function generateRandomString($length = 5) {
    $conn = new mysqli('localhost','root','','socialise');
    $friendID = substr(str_shuffle(str_repeat($x='0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ', ceil($length/strlen($x)) )),1,$length);
    $sql = "SELECT id, login, mail FROM users order by id desc limit 1";
    $result = $conn->query($sql);
    while($row = $result->fetch_assoc()) {
      $latestID = $row["id"];
      $latestID = $latestID + 1;
    }
    $friendID[0]=$latestID;
    return $friendID;
  }

  $login = $_POST['login'];
  $mail = $_POST['mail'];
  $password = md5($_POST['password']);
  $friendID = generateRandomString();

  $conn = new mysqli('localhost','root','','socialise');
  $sql = "SELECT mail FROM users";
  $result = $conn->query($sql);
  $isMailNew = True;
  while($row = $result->fetch_assoc()){
    if($mail == $row['mail'])
    {
      $isMailNew = False;
      $invalidRegister = "<p class='invalid-register'>Taki adres e-mail już istnieje!</p>";
    }
  }

  if($isMailNew){
    if(filter_var($mail, FILTER_VALIDATE_EMAIL) && strlen($login)>3 && strlen($password)>3){
      $conn = new mysqli('localhost','root','','socialise');
      $sql = "INSERT INTO `users` (`id`, `login`, `mail`, `password`, `friend_id`, `friends`) VALUES (NULL, '".$login."', '".$mail."', '".$password."', '".$friendID."', '');";
      $conn->query($sql);
      $invalidRegister = "<p class='correct-register'>Prawidłowo zarejestrowano konto!</p>";
    }
    else {
      $invalidRegister = "<p class='invalid-register'>Wprowadź prawidłowe dane!</p>";
    }
  }



}




?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rejestracja</title>
    <link rel="stylesheet" href="register.css">
</head>
<body>
    <div class="container">
        <div class="container-register">

          <div class="container-register-header">
            <h2>Skorzystaj z platformy <span class='register-header-span'>sociali.se</span></h2>
            <h1>Rejestracja</h1>
          </div>
          <form method=POST action=register.php>
            <div class="container-register-inputs">
              <input type="text" name="login" placeholder="Login"></input>
              <input type="text" name="mail" placeholder="E-mail"></input>
              <input type="password" name="password" placeholder="Hasło"></input>
            </div>

            <div class="container-register-buttons">
              <input type='submit' class="register-button-first" value="Zarejestruj">
              <a href="../login/login.php"><h2 class="register-button"><u>Logowanie</u></h2></a>
            </div>
        </form>
        <?php
        if(isset($invalidRegister)){
          echo $invalidRegister;
        }
        ?>
        </div>
      </div>
</body>
</html>