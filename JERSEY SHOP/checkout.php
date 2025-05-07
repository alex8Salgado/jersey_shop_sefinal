<?php
session_start();

// Redirect if cart is empty
if (!isset($_SESSION['cart']) || empty($_SESSION['cart'])) {
    echo "<p style='text-align:center; color:red;'>Your cart is empty. <a href='index.php'>Shop now</a></p>";
    exit();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Checkout</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #1f4037, #99f2c8); /* soft green gradient */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #fff;
            text-align: center;
        }

        h1 {
            margin-top: 40px;
            font-size: 36px;
        }

        .form-container {
            background-color: rgba(0, 0, 0, 0.5);
            padding: 40px;
            margin: 40px auto;
            width: 80%;
            max-width: 600px;
            border-radius: 15px;
        }

        input[type="text"],
        input[type="number"] {
            width: 90%;
            padding: 15px;
            margin: 10px 0;
            border: none;
            border-radius: 8px;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: #00c9a7;
            color: white;
            padding: 15px 40px;
            font-size: 18px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            margin-top: 20px;
        }

        input[type="submit"]:hover {
            background-color: #02a98d;
        }

        label {
            display: block;
            margin-top: 20px;
            font-size: 18px;
        }
    </style>
</head>
<body>

    <h1>Checkout</h1>

    <div class="form-container">
        <form method="post" action="place_order.php">
            <h2>Shipping Information</h2>

            <label for="first_name">First Name:</label>
            <input type="text" name="first_name" required>

            <label for="last_name">Last Name:</label>
            <input type="text" name="last_name" required>

            <label for="address">Street Address:</label>
            <input type="text" name="address" required>

            <label for="state">State:</label>
            <input type="text" name="state" required>

            <label for="zip">ZIP Code:</label>
            <input type="text" name="zip" required>

            <h2>Payment Information</h2>

            <label for="card_number">Credit Card Number:</label>
            <input type="text" name="card_number" required>

            <label for="exp_date">Expiration Date (MM/YY):</label>
            <input type="text" name="exp_date" required>

            <label for="cvv">Security Code (CVV):</label>
            <input type="text" name="cvv" required>

            <input type="submit" value="Place Order">
        </form>
    </div>

</body>
</html>

