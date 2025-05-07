<?php
$conn = mysqli_connect("localhost", "root", "", "jersey_shop");

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$message = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $title = mysqli_real_escape_string($conn, $_POST['title']);
    $price = floatval($_POST['price']);
    $category = $_POST['category'];

    // Image upload
    $image = $_FILES['image']['name'];
    $tmp = $_FILES['image']['tmp_name'];
    $uploadPath = "../images/" . $image;

    if (move_uploaded_file($tmp, $uploadPath)) {
        $sql = "INSERT INTO products (title, price, image, category) VALUES ('$title', $price, '$image', '$category')";
        if (mysqli_query($conn, $sql)) {
            $message = "Product added successfully!";
        } else {
            $message = "Error: " . mysqli_error($conn);
        }
    } else {
        $message = "Failed to upload image.";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Add New Jersey</title>
</head>
<body>
    <h2>Add New Jersey</h2>

    <?php if ($message): ?>
        <p style="color: green;"><?php echo $message; ?></p>
    <?php endif; ?>

    <form method="post" enctype="multipart/form-data">
        <label>Jersey Title:</label><br>
        <input type="text" name="title" required><br><br>

        <label>Price ($):</label><br>
        <input type="number" name="price" step="0.01" required><br><br>

        <label>Category:</label><br>
        <select name="category" required>
            <option value="Soccer">Soccer</option>
            <option value="Basketball">Basketball</option>
            <option value="Baseball">Baseball</option>
            <option value="Football">Football</option>
	    <option value="Add To My Collection">My Collection</option>
        </select><br><br>

        <label>Jersey Image:</label><br>
        <input type="file" name="image" accept="image/*" required><br><br>

        <input type="submit" value="Add Jersey">
    </form>
</body>
</html>

<?php mysqli_close($conn); ?>