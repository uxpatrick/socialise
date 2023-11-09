<?php
session_start();
if (!isset($_SESSION['logged'])) {
    header('Location: App/login/login.php');
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;300;400;500;600;700;800&family=Reem+Kufi+Fun:wght@400;500;600;700&display=swap');

        body {
            margin: 0;
            padding: 0;
            background-color: #222431;
        }

        ::-webkit-scrollbar {
            width: 1em;
        }

        ::-webkit-scrollbar-track {
            -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
        }

        ::-webkit-scrollbar-thumb {
            background-color: darkgrey;
            outline: 1px solid slategrey;
        }

        .main-container {
            padding-top: 33px;
            width: 1440px;
            height: 90dvh;
            margin: auto;
            display: grid;
            grid-template-columns: 20% 60% 20%;
        }

        .container-left {
            align-items: center;
            display: flex;
            flex-direction: column;
        }

        /* .container-middle{
            background-color: #963737;
        } */
        .container-right {
            align-items: center;
            display: flex;
            flex-direction: column;
            margin-top: 50px;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .input-label button {
            border-radius: 50%;
            background: #32A8CD;
            border: none;
            font-size: 15px;
            aspect-ratio: 1/1;
            width: 18%;
            color: white;
            font-weight: bold;
        }

        .input-friend-id {
            border-radius: 46px;
            background: #323544;
            border: none;
            padding: 10px 15px 10px 15px;
            color: white;
            width: 80%;
            outline: none;
        }

        .input-friend-id::placeholder,
        .input-post::placeholder {
            color: #686C86;
            font-family: Outfit;
            font-size: 16px;
        }

        .friends-container,
        .tool-container,
        .profile-container,
        .account-container {
            background: #282A37;
            border-radius: 33px;
            width: 100%;
            padding: 19px;
        }

        h2.logout-button-no,
        h2.logout-button-yes {
            padding: 8px;
        }

        .profile-container {
            text-align: center;
        }

        .account-container {
            margin-top: 30px;
        }

        .profile-container img {
            margin-top: -80px;
        }

        .your-profile-label {
            background-color: #222431;
            color: white;
            padding: 21px;
            border-radius: 26px;
        }

        .your-profile-label p {
            font-family: Outfit;
        }

        .your-friend-id {
            color: #32A8CD;
            font-weight: bold;
        }

        h1 {
            font-family: Reem Kufi Fun;
            color: white;
            font-weight: 600;
            font-size: 22px;
            text-align: center;
            padding: 20px;
        }

        .tool-header,
        .friend-header,
        .account-header {
            border-radius: 26px;
            background: #222431;
        }

        .tool-container {
            margin-top: 30px;

        }

        .input-label {
            margin-top: 15px;
            display: flex;
            justify-content: space-between;
            position: relative;

        }

        .friend-label {
            color: #9598A7;
            font-size: 16px;
            border-radius: 26px;
            background: #222431;
            padding: 11px;
            margin-top: 12px;
            display: flex;
            align-items: center;
            font-family: Outfit;
        }

        .tool-label,
        .account-label {
            color: #9598A7;
            font-size: 16px;
            border-radius: 26px;
            background: #222431;
            padding: 11px;
            margin-top: 12px;
            display: flex;
            align-items: center;
            font-family: Outfit;
        }

        .friend-label p {
            margin-left: 18px;
        }

        .tool-label p {
            margin-left: 18px;
        }

        .your-profile-image {
            font-size: 16px;
        }

        .account-label,
        .tool-label {
            border: 1px solid #222431;
            transition: border-color 0.4s ease;
        }

        .account-label p {
            margin-left: 18px;
        }

        .block-account {
            color: #963737
        }

        ::-webkit-scrollbar {
            display: none;
        }

        .account-label:hover,
        .tool-label:hover {
            cursor: pointer;
            background: #222431;
            border: 1px solid #494c63;
        }

        .block-label:hover {
            cursor: pointer;
            background: #222431;
            border: 1px solid rgb(167, 0, 0);
        }

        .type-of-chat-header {
            text-align: left !important;
            margin: 0 !important;
            padding: 0 !important;
            font-size: 28px;
        }

        .choose-paragraph {
            font-family: Outfit;
            font-weight: 400;
            color: white;
        }

        #checkbox-choose-wrapper {
            width: 50px;
            height: 17px;
            background: #1B5C71;
            border-radius: 43px;
        }

        #checkbox-choose-inside {
            background: #32A8CD;
            border-radius: 43px;
            width: 60%;
            height: 100%;
            transition: .2s all ease-in-out;
        }

        .checkbox-active {
            transform: translateX(70%);
            background: #7FC2D8 !important;
        }

        .first-option {
            color: #32A8CD;
        }

        .main-choose-wrapper,
        .choose-paragraph-label {
            display: flex;
            align-items: center;
        }

        #checkbox-choose-wrapper {
            margin-left: 7px;
        }

        .author-info-wrapper {
            display: flex;
            align-items: center;
        }

        .author-name {
            font-size: 16px;
            color: white;
            font-family: Outfit;
            font-weight: 600;
            margin-left: 17px;
        }

        .post-text-wrapper {
            max-width: 70%;
            margin-top: 30px;
        }

        .post-text-content {
            color: white;
            font-weight: 200;
            font-family: Outfit;
        }

        .post-label {
            border-top: 1px solid rgba(255, 255, 255, 0.103);
            border-bottom: 1px solid rgba(255, 255, 255, 0.103);
            padding: 25px 0 35px 0;
        }

        .main-middle-section {
            width: 80%;
            height: 100%;
            margin: auto;
            position: relative;
        }

        .posts-container {
            margin-top: 30px;
            max-height: 600px;
            overflow-y: auto;
        }

        .post-text-wrapper {
            padding: 16px;
            margin-top: 20px;
            background: #2E303A;
            border-radius: 22px;
            max-width: max-content;
        }

        .reactions-wrapper span {
            color: #9598A7;
            display: flex;
            align-items: center;
            font-family: Outfit;
        }

        .add-post-wrapper {
            border-radius: 33px;
            background: #282A37;
            padding: 15px;
            position: absolute;
            bottom: 0;
            width: 100%;
        }

        .input-post {
            color: #686C86;
            color: white;
            border-radius: 46px;
            background: #323544;
            outline: none;
            font-size: 16px;
            border: none;
            padding: 10px 15px 10px 15px;
            width: 75%;
            margin-left: 10px;
        }

        .add-post-button {
            border-radius: 46px;
            background: #32A8CD;
            outline: none;
            color: white;
            font-family: Outfit;
            font-size: 16px;
            border: none;
            padding: 10px 25px 10px 25px;
            min-width: 20%;
            margin-left: 13px;
        }

        .reactions-wrapper {
            display: flex;
            align-items: center;
            margin-left: 5px;
        }

        .reactions-add-friend {
            margin-left: 17px;
        }

        .reactions-add-friend img,
        .reactions-comment img {
            margin-right: 17px;
        }

        .reactions-wrapper {
            margin-top: 20px;
        }

        .post-image {
            background-color: transparent;
            padding: 0;
            object-fit: cover;
            object-position: center;
            width: 500px;
            height: auto;
        }

        .post-image img {
            border-radius: 22px;
            width: 100%;
            height: 100%;
        }
    </style>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aktualności</title>
</head>

<body>
    <div class="main-container">
        <div class="container-left">
            <div class="friends-container">
                <div class="friend-header">
                    <h1>Znajomi</h1>
                </div>
                <div class="input-label">
                    <form method='POST' action='App/Create/AddFriend.php'>
                        <input class='input-friend-id' type=text placeholder="Podaj ID znajomego"
                            name='add_friend'><input type='submit' name='add_friend_submit'>+</input>
                    </form>
                </div>
                <div class="friends-search">
                    <?php
                    $servername = "localhost";
                    $database = "socialise";
                    $username = "root";
                    $password = "";

                    $conn = mysqli_connect($servername, $username, $password, $database);

                    if ($conn->connect_error) {
                        die("Connection failed: " . $conn->connect_error);
                    }

                    $result = $conn->query('SELECT connected_to FROM friends WHERE user_id=' . $_SESSION["user_id"] . '');

                    while ($row = mysqli_fetch_array($result)) {
                        $sql_friend = 'SELECT * FROM users WHERE id=' . $row['connected_to'] . '';

                        $result_friend = $conn->query($sql_friend);

                        while ($row_friend = mysqli_fetch_assoc($result_friend)) {
                            echo '                    <div class="friend-label">
                            <img src="App\Images\profile-image.png">
                            <p>' . $row_friend['login'] . '</p>
                        </div>';
                        }
                    }

                    ?>
                </div>

                <div class="friends-list">

                </div>
            </div>
            <div class="tool-container">
                <div class="tool-header">
                    <h1>Narzędzia</h1>
                </div>
                <div class="tool-label" onClick='addPostPopup()'>
                    <img src="App\Images\new-post.png">
                    <p>Nowy post</p>
                </div>
            </div>
        </div>


        <div class="container-middle">
            <div class="main-middle-section">
                <div class="main-choose-wrapper">
                    <label class="choose-paragraph-label">
                        <p class="choose-paragraph">Wybierz chat
                        <div id="checkbox-choose-wrapper">
                            <div id="checkbox-choose-inside"></div>
                        </div>
                        </p>
                    </label>
                </div>
                <h1 class="type-of-chat-header"><span class="first-option">Publiczny</span> / <span
                        class="second-option"> tylko znajomi</span></h1>
                <div class="posts-container">
                    <?php

                    $comment_limit = 5;

                    $sql = "SELECT * FROM posts where status='public' ORDER BY createdAt DESC";

                    $result = $conn->query($sql);
                    while ($row = $result->fetch_assoc()) {
                        echo '<div class="post-label">
                                            <div class="author-info-wrapper">
                                                <img src="App\Images\profile-image.png" class="author-image-profile">
                                                <p class="author-name">' . $row['author'] . '</p>
                                            </div>
                                            <div class="post-text-wrapper">
                                                <span class="post-text-content">' . $row['content'] . '</span>
                                            </div>
                                            ';

                        if ($row['attachments'] != null) {
                            echo ' <div class="post-text-wrapper post-image">
                                                <img src="./uploaded_images/' . $row["attachments"] . '">
                                            </div>';
                        }
                        ;
                        echo '
                                            <div class="reactions-wrapper">
                                                <label>
                                                    <span class="reactions-comment"><img src="App\Images\chat-icon.png">Napisz
                                                        komentarz</span>
                                                        </label>
                                                        <label>
                                                        <span class="reactions-add-friend"><img src="App\Images\add-friend.png">Zaproś do
                                                        znajomych</span>
                                                        </label>
                                                        </div>
                                                        <form method="POST" action="App/Create/AddComment.php" id="form240">
                                                        <input type="text" name="comment_input_post_id" value="' . $row['id'] . '" style="display: none;">
                                                        <input type="text" name="comment_input" placeholder="Wprowadź tekst" class="input-post" style="margin: 20px 0px; width: 50%;">
                                                            <input type="submit"  class="add-post-button" style="margin: 0px;" value="Dodaj komentarz" name="comment_input_submit">
                                                        </form>
                                        ';
                        $comment_result = $conn->query('SELECT * FROM comments WHERE post_id = "' . $row['id'] . '" ORDER BY createdAt DESC LIMIT 3');

                        while ($comment_row = $comment_result->fetch_assoc()) {
                            $res = $conn->query('SELECT * FROM users WHERE id = ' . $comment_row['author_id'] . '');
                            if ($comment_row['id'] != null) {
                                while ($row_comment = mysqli_fetch_assoc($res)) {

                                    echo '
                                <div class="author-info-wrapper" style="margin-top: 20px;">
                                <img src="App\Images\profile-image.png" class="author-image-profile">
                                <p class="author-name">' .
                                        $row_comment['login']
                                        . '</p>
                                                </div>
                                                ';
                                }
                                echo ' <div class="post-text-wrapper">
                            <span class="post-text-content">' . $comment_row['content'] . '</span>
                            </div>';
                            }
                        }

                        echo '</div>';
                    }
                    ?>

                </div>
                <div class="add-post-wrapper">
                    <form method='POST' action='./App/Create/AddPost.php' id="form2">
                        <input type="text" placeholder="Wprowadź tekst" class="input-post" name='input-post'>
                        <input type='submit' class="add-post-button" value='Dodaj wpis' name='input-post-submit'>
                        <input type="hidden" name="typeOfPost" value="public">
                    </form>
                </div>
            </div>
        </div>
        <div class="container-right">
            <div class="profile-container">
                <div class="your-image">
                    <img src="App\Images\your-image.png">
                </div>
                <div class="your-profile-label">
                    <p class="your-profile-image">
                        <?php
                        $result = $conn->query("SELECT * FROM users WHERE id=" . $_SESSION['user_id'] . "");
                        while ($row = $result->fetch_assoc()) {
                            echo '
                            <p class="your-profile-image">
                            ' . $row["login"] . '
                            </p>
                            <p class="your-friend-id">' . $row['friend_id'] . '</p>
                            ';
                        }
                        $conn->close();
                        ?>
                </div>
            </div>
            <div class="account-container">
                <div class="account-header">
                    <h1>Twoje konto</h1>
                </div>
                <div class="account-label">
                    <img src="App\Images\settings.png">
                    <p>Ustawienia</p>
                </div>
                <div class="account-label" onclick="logoutPopup()">
                    <img src="App\Images\logout.png">
                    <p>Wyloguj mnie</p>
                </div>
                <div class="account-label block-label">
                    <img src="App\Images\delete.png">
                    <p class="block-account">Zablokuj konto</p>
                </div>
            </div>
        </div>
    </div>
    <script src='App\Logout\Logout.js'></script>
    <script>
        function changeTopic() {
            let isChecked = false
            const checkbox = document.querySelector("#checkbox-choose-source")
            const checkbox_wrapper = document.querySelector(".choose-paragraph-label")
            const chat_first_option = document.querySelector(".first-option")
            const chat_second_option = document.querySelector(".second-option")
            const checkbox_inside = document.querySelector("#checkbox-choose-inside")
            checkbox_wrapper.addEventListener('click', () => {
                if (!isChecked) {
                    checkbox_inside.classList.add('checkbox-active')
                    chat_second_option.style.color = "#32A8CD"
                    chat_second_option.style.transition = "0.2s"
                    chat_first_option.style.color = "white"
                    isChecked = true
                    document.querySelector('.posts-container').innerHTML = '<h1>Wczytywanie..</h1>'
                    window.setTimeout(function () {

                        window.location.href = 'friends.php';

                    }, 1000);

                } else {
                    checkbox_inside.classList.remove('checkbox-active')
                    chat_second_option.style.color = "white"
                    chat_first_option.style.transition = "0.2s"
                    chat_first_option.style.color = "#32A8CD"
                    isChecked = false
                }
            })
        }
        changeTopic();
        function addPostPopup() {
            document.body.style.overflowY = 'hidden';
            document.body.innerHTML += `<div class='logout-popup-background' style='color:purple;width:100%;height:100%;background:rgba(0,0,0,0.30);backdrop-filter:blur(11px);position:fixed;top:0;margin:0;padding:0;box-sizing:border-box;display:grid;align-items:center;justify-content:center;'>
        <div class='logout-popup' style='text-align: center;background:#282A37;width:400px;padding:10px;padding-top:40px;padding-bottom:40px;'>
        <div class='logout-popup-header' style='text-align:center;font-family:ReemKufiFun;font-size:16px;font-style:normal;color:white;margin:10px 0px 15px 0px;'>
            <h1 style='text-align:center;font-family: Reem Kufi Fun;font-weight:600 !important;'>Utwórz nowy post</h1>
        </div>
        <form method=post action='./App/Create/AddPost.php' enctype="multipart/form-data">
        <textarea name="input-post" style="width:80%;margin:10px;padding:10px;border-radius: 20px;background: #323544;color:white;width:50%;"></textarea>
        <input class="form-control" type="file" name="uploadfile" value="" />
        <input type="hidden" name="typeOfPost" value="public">
        <input type=submit name='input-post-submit' value="Dodaj post" >
        </form>
        </div>
    </div>`
            popUp = document.querySelector('.logout-popup-background')
            window.addEventListener('click', (e) => { e.target.style.color == 'purple' && closePopup() && changeTopic() })
        }
        function closePopup() {
            document.body.style.overflowY = 'scroll';
            popUp.remove();
            changeTopic();
        }
    </script>
</body>

</html>