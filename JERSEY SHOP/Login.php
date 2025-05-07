<?php
session_start();

// Correct admin credentials
$adminUsername = "Admin1";
$adminPassword = "AdminPass";


if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] === true) {
    header("Location: loginsuccess.php");
    exit();
}


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $inputUser = $_POST['username'];
    $inputPass = $_POST['password'];

    if ($inputUser === $adminUsername && $inputPass === $adminPassword) {
        $_SESSION['loggedin'] = true;
        $_SESSION['username'] = $inputUser;
        header("Location: loginsuccess.php");
        exit();
    } else {
        $error = "Incorrect admin username or password.";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
</head>
<body>
    <h2>Admin Login</h2>

    <?php if (isset($error)) {
        echo "<p style='color:red;'>$error</p>";
    } ?>

    <form method="post" action="">
        Username:<br>
        <input type="text" name="username" required><br><br>
        Password:<br>
        <input type="password" name="password" required><br><br>
        <input type="submit" value="Login">
    </form>
</body>
</html>
