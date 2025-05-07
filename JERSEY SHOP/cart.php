<?php
session_start();


if (!isset($_SESSION['cart'])) {
    $_SESSION['cart'] = [];
}

// Add to cart
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['product']) && isset($_POST['price'])) {
    $_SESSION['cart'][] = [
        'name' => $_POST['product'],
        'price' => $_POST['price']
    ];
}

// Remove item
if (isset($_POST['remove'])) {
    $index = $_POST['index'];
    array_splice($_SESSION['cart'], $index, 1);
}

// Clear cart
if (isset($_POST['clear_cart'])) {
    $_SESSION['cart'] = [];
}

// Calculate total
$total = 0;
foreach ($_SESSION['cart'] as $item) {
    $total += $item['price'];
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Your Cart</title>
    <style>
        body {
            background-color: #001f3f; /* Dark blue */
            color: #f5f5dc;            /* Beige */
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 30px;
        }

        ul {
            list-style: none;
            padding: 0;
        }

        li {
            margin: 15px 0;
            font-size: 18px;
        }

        button {
            background-color: #f5f5dc;
            color: #001f3f;
            border: none;
            padding: 6px 12px;
            margin-left: 10px;
            cursor: pointer;
            border-radius: 5px;
        }

        button:hover {
            background-color: #e6e6cc;
        }

        a {
            color: #f5f5dc;
            display: inline-block;
            margin-top: 20px;
            text-decoration: underline;
            font-size: 18px;
        }

        form {
            display: inline;
        }

        .cart-box {
            background-color: #003366;
            padding: 20px;
            border-radius: 10px;
            display: inline-block;
            min-width: 300px;
        }
    </style>
</head>
<body>
    <div class="cart-box">
        <h1>This is Your Shopping Cart </h1>

        <?php if (empty($_SESSION['cart'])): ?>
            <p>Your cart is empty.</p>
        <?php else: ?>
            <ul>
                <?php foreach ($_SESSION['cart'] as $index => $item): ?>
                    <li>
                        <?php echo htmlspecialchars($item['name']) . " — $" . number_format($item['price'], 2); ?>
                        <form method="post">
                            <input type="hidden" name="index" value="<?php echo $index; ?>">
                            <button type="submit" name="remove">Remove</button>
                        </form>
                    </li>
                <?php endforeach; ?>
            </ul>

            <p><strong>Total: $<?php echo number_format($total, 2); ?></strong></p>

            <form method="post">
                <button type="submit" name="clear_cart">Clear Cart</button>
            </form>

            <br>
            <a href="checkout.php">Proceed to Checkout</a>
        <?php endif; ?>
    </div>
</body>
</html>
