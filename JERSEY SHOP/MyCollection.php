<?php
$conn = mysqli_connect("localhost", "root", "", "jersey_shop");
$result = mysqli_query($conn, "SELECT * FROM collection");
?>

<!DOCTYPE html>
<html>
<head>
    <title>My Jersey Collection</title>
    <style>
        body {
            background: linear-gradient(to bottom right, #003300, #228B22);
            color: white;
            font-family: 'Segoe UI', sans-serif;
            text-align: center;
        }
        h1 {
            margin-top: 40px;
            font-size: 40px;
            border-bottom: 3px solid white;
            display: inline-block;
            padding-bottom: 10px;
        }
        .collection-grid {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin: 40px 20px;
        }
        .card {
            background-color: rgba(0, 0, 0, 0.6);
            border: 2px solid white;
            border-radius: 12px;
            padding: 20px;
            margin: 15px;
            width: 220px;
            color: white;
        }
        .card img {
            width: 100%;
            border-radius: 8px;
            border: 2px solid white;
        }
        .card p {
            margin-top: 10px;
            font-weight: bold;
        }
    </style>
</head>
<body>

    <h1>My Jersey Collection</h1>

    <?php if (mysqli_num_rows($result) == 0): ?>
        <p style="margin-top: 20px;">You haven’t added any jerseys to your collection yet.</p>
    <?php else: ?>
        <div class="collection-grid">
            <?php while ($row = mysqli_fetch_assoc($result)): ?>
                <div class="card">
                    <img src="images/<?php echo htmlspecialchars($row['image']); ?>" alt="<?php echo htmlspecialchars($row['title']); ?>">
                    <p><?php echo htmlspecialchars($row['title']); ?></p>
                </div>
            <?php endwhile; ?>
        </div>
    <?php endif; ?>

</body>
</html>
