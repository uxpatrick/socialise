<?php
session_start();

if (isset($_SESSION['logged'])) {
  header('Location: ../../index.php');
  exit();
}

if (isset($_POST['mail']) && isset($_POST['password'])) {
  $conn = new mysqli('localhost', 'root', '', 'socialise');

  $password = md5($_POST['password']);

  $sql = "SELECT * FROM users WHERE mail='" . $_POST['mail'] . "' AND password ='" . $password . "'";

  $result = $conn->query($sql);
  while ($row = $result->fetch_assoc()) {
    $_SESSION['logged'] = True;
    $_SESSION['user_id'] = $row['id'];
    header('Location: ../../index.php');
  }

  if (!isset($_SESSION['logged'])) {
    $invalidLogin = "<p class='invalid-login'>Wprowadź prawidłowe dane!</p>";
  }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Logowanie</title>
  <link rel="stylesheet" href="login.css">
</head>

<body>
  <div class="container">
    <div class="container-login">

      <div class="container-login-header">
        <h2>Skorzystaj z platformy <span class='login-header-span'>sociali.se</span></h2>
        <h1>Zaloguj się</h1>
      </div>
      <form method=post action=login.php>
        <div class="container-login-inputs">
          <input type="text" name="mail" placeholder="E-mail"></input>
          <input type="password" name="password" placeholder="Hasło"></input>
        </div>

        <div class="container-login-buttons">
          <input type='submit' class="login-button" value="Zaloguj się">
          <a href="../register/register.php">
            <h2 class="register-button"><u>Stwórz konto</u></h2>
          </a>
        </div>
      </form>
      <?php
      if (isset($invalidLogin)) {
        echo $invalidLogin;
      }
      ?>
    </div>
  </div>
</body>

</html>