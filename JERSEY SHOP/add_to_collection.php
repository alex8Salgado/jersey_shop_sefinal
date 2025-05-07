<?php
session_start();
$conn = mysqli_connect("localhost", "root", "", "jersey_shop");

// Initialize session collection
if (!isset($_SESSION['collection'])) {
    $_SESSION['collection'] = [];
}

if (isset($_POST['add_to_collection']) && isset($_POST['product']) && isset($_POST['image'])) {
    $product = $_POST['product'];
    $image = $_POST['image'];

    // Prevent duplicates in session
    $alreadyAdded = false;
    foreach ($_SESSION['collection'] as $item) {
        if ($item['product'] === $product) {
            $alreadyAdded = true;
            break;
        }
    }

    if (!$alreadyAdded) {
        $_SESSION['collection'][] = [
            'product' => $product,
            'image' => $image
        ];

        // Also prevent duplicates in DB
        $check = mysqli_query($conn, "SELECT * FROM collection WHERE title = '$product'");
        if (mysqli_num_rows($check) === 0) {
            $stmt = mysqli_prepare($conn, "INSERT INTO collection (title, image) VALUES (?, ?)");
            mysqli_stmt_bind_param($stmt, "ss", $product, $image);
            mysqli_stmt_execute($stmt);
        }
    }
}

header("Location: " . $_SERVER['HTTP_REFERER']);
exit();
