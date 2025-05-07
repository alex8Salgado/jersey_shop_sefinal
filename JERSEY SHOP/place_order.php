<?php
session_start();
$conn = mysqli_connect("localhost", "root", "", "jersey_shop");

// Validate and process order
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $first = htmlspecialchars($_POST['first_name']);
    $last = htmlspecialchars($_POST['last_name']);
    $address = htmlspecialchars($_POST['address']);
    $state = htmlspecialchars($_POST['state']);
    $zip = htmlspecialchars($_POST['zip']);
    $card = htmlspecialchars($_POST['card_number']);
    $exp = htmlspecialchars($_POST['exp_date']);
    $cvv = htmlspecialchars($_POST['cvv']);

    $orderedItems = $_SESSION['cart'] ?? [];

    // Update stock and validate availability
    foreach ($orderedItems as $item) {
        $title = mysqli_real_escape_string($conn, $item['name']);
        $qty = isset($item['quantity']) ? intval($item['quantity']) : 1;

        if ($qty < 1) $qty = 1;

        $result = mysqli_query($conn, "SELECT stock FROM products WHERE title = '$title'");
        $product = mysqli_fetch_assoc($result);

        if ($product['stock'] < $qty) {
            echo "<p style='color:yellow;'>Sorry, not enough stock for $title. Available: {$product['stock']}</p>";
            echo "<a href='cart.php' style='color:white;'>Back to Cart</a>";
            exit();
        }

        // Reduce stock
        mysqli_query($conn, "UPDATE products SET stock = stock - $qty WHERE title = '$title'");
    }

    // Clear the cart after purchase
    $_SESSION['cart'] = [];
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Order Confirmation</title>
    <style>
        body {
            margin: 0;
            padding: 40px;
            background: linear-gradient(to right, #8e2de2, #4a00e0); /* Purple gradient */
            color: #ffffff;
            font-family: 'Verdana', sans-serif;
            text-align: center;
        }

        .container {
            background-color: rgba(255,255,255,0.1);
            padding: 30px;
            margin: auto;
            max-width: 700px;
            border-radius: 15px;
        }

        h1 {
            font-size: 48px;
            color: #00ffcc;
            margin-bottom: 20px;
        }

        h3 {
            color: #ffccff;
        }

        .details {
            text-align: left;
            margin: 20px auto;
            max-width: 500px;
            background-color: rgba(0, 0, 0, 0.3);
            padding: 20px;
            border-radius: 10px;
        }

        .details p {
            font-size: 18px;
            line-height: 1.6;
        }

        .back-link {
            display: inline-block;
            margin-top: 30px;
            color: #ffffff;
            font-size: 18px;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>SUCCESS ✅</h1>
        <h3>Your order has been placed!</h3>

        <div class="details">
            <p><strong>Name:</strong> <?php echo $first . " " . $last; ?></p>
            <p><strong>Address:</strong> <?php echo $address . ", " . $state . " " . $zip; ?></p>
            <p><strong>Payment Info:</strong> Card ending in <?php echo substr($card, -4); ?></p>
        </div>

        <h3>Ordered Items:</h3>
        <div class="details">
            <?php
            $total = 0;
            foreach ($orderedItems as $item):
                $qty = isset($item['quantity']) ? intval($item['quantity']) : 1;
                $subtotal = $item['price'] * $qty;
                $total += $subtotal;
            ?>
                <p>
                    <?php echo htmlspecialchars($item['name']); ?> — 
                    Quantity: <?php echo $qty; ?> — 
                    $<?php echo number_format($subtotal, 2); ?>
                </p>
            <?php endforeach; ?>
            <hr>
            <p><strong>Total: $<?php echo number_format($total, 2); ?></strong></p>
        </div>

        <a class="back-link" href="index1.php">Return to Homepage</a>

    </div>
</body>
</html>
