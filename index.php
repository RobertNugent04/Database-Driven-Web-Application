<?php
require_once('database.php');

// Get products
$queryPhones = 'SELECT * FROM phones';
$statement = $db->prepare($queryPhones);
$statement->execute();
$phones = $statement->fetchAll();
$statement->closeCursor();
?>
<!DOCTYPE html>
<html>

<!-- the head section -->
<head>
    <title>Product Manager</title>
    <link rel="stylesheet" type="text/css" href="main.css" />
</head>

<!-- the body section -->
<body>
<header><h1>Phone Store</h1></header>
<main>
    <h1>Product List</h1>
    <section>
        <!-- display a table of products -->
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Company</th>
                <th>RAM_GB</th>
                <th>Space</th>
                <th>Delete</th>
            </tr>

            <?php foreach ($phones as $phone) : ?>
            <tr>
                <td><?php echo $phone['phoneID']; ?></td>
                <td><?php echo $phone['phoneName']; ?></td>
                <td class="right"><?php echo $phone['company']; ?></td>
                <td><?php echo $phone['RAM_GB']; ?></td>
                <td><?php echo $phone['space']; ?></td>
                <td><form action="delete_product.php" method="post">
                    <input type="hidden" name="phone_id"
                           value="<?php echo $phone['phoneID']; ?>">
                    <input type="submit" value="Delete">
                </form></td>
            </tr>
            <?php endforeach; ?>
        </table>
    </section>
</main>
<footer>
    <p>&copy; <?php echo date("Y"); ?> Phone Store, Inc.</p>
</footer>
</body>
</html>