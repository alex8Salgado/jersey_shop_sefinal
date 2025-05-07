<?php
session_start();


if (!isset($SESSION['loggedin']) || $_SESSION['loggedin'] !== true) {
	header("Location: index1.php");
	exit();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
</head>
<body>
    <h1>Welcome, <?php echo htmlspecialchars($_SESSION['username']); ?>!</h1>
    <p>You have successfully logged in as an admin.</p>

    <a href="logout.php">Logout</a>
</body>
</html>
