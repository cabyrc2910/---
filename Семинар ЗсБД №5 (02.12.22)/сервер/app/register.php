<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="styles/style.css?v=<?php echo time(); ?>">
</head>
<body>
    <input id="login" type="text" name="mylogin">
    <input id="pass" type="password" name="mypass">
    <button id="button">Зарегистрироваться</button>

    <div id="results"></div>

    <script type="module" src="scripts/register.js"></script>
</body>
</html>