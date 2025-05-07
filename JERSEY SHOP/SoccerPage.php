<?php

$conn = mysqli_connect("localhost", "root", "", "jersey_shop");
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Get products in the Soccer category 
$sql = "SELECT * FROM products WHERE LOWER(category) = 'soccer'";
$result = mysqli_query($conn, $sql);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Soccer Jerseys</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: url("images/soccer_field.jpg") no-repeat center center fixed;
            background-size: cover;
            font-family: Arial, sans-serif;
            text-align: center;
            color: #ffffff;
        }

        h1 {
            margin-top: 40px;
            font-size: 40px;
            background-color: rgba(0, 0, 0, 0.6);
            display: inline-block;
            padding: 10px 30px;
            border-radius: 10px;
        }

        .jersey-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 30px;
        }

        .product {
            background-color: rgba(0, 0, 0, 0.6);
            width: 250px;
            margin: 20px;
            padding: 15px;
            border: 2px solid white;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.5);
            color: #ffffff;
        }

        .product img {
            width: 100%;
            border-radius: 10px;
            border: 2px solid #ffffff;
        }

        .product h3 {
            font-size: 20px;
            margin: 10px 0;
        }

        .product p {
            margin: 8px 0;
            font-size: 16px;
        }

        .product button {
            padding: 10px 18px;
            font-size: 14px;
            background-color: white;
            color: darkgreen;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }

        .product button:hover {
            background-color: #e0ffe0;
        }
    </style>
</head>
<body>

    <h1>Soccer Jerseys</h1>

    <div class="jersey-container">
        <?php if (mysqli_num_rows($result) > 0): ?>
            <?php while ($jersey = mysqli_fetch_assoc($result)): ?>
                <div class="product">
                    <img src="images/<?php echo htmlspecialchars($jersey['image']); ?>" alt="<?php echo htmlspecialchars($jersey['title']); ?>">
                    <h3><?php echo htmlspecialchars($jersey['title']); ?></h3>
                    <p>Price: $<?php echo number_format($jersey['price'], 2); ?></p>
                    <p><strong>In stock: <?php echo $jersey['stock']; ?></strong></p>

                    	
		    <form action="cart.php" method="post">
  			<input type="hidden" name="product" value="<?php echo htmlspecialchars($jersey['title']); ?>">
    			<input type="hidden" name="price" value="<?php echo $jersey['price']; ?>">
    			<button type="submit">Add to Cart</button>
		    </form>

			
		    <form action="add_to_collection.php" method="post">
   			<input type="hidden" name="product" value="<?php echo htmlspecialchars($jersey['title']); ?>">
    			<input type="hidden" name="image" value="<?php echo htmlspecialchars($jersey['image']); ?>">
   			<button type="submit" name="add_to_collection">Add to My Collection</button>
		    </form>
                </div>
            <?php endwhile; ?>
        <?php else: ?>
            <p style="background-color: rgba(0,0,0,0.6); display: inline-block; padding: 15px; border-radius: 10px;">No soccer jerseys found.</p>
        <?php endif; ?>
    </div>

</body>
</html>

<?php mysqli_close($conn); ?>
