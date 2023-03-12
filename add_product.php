<?php
require_once('database.php');

// Get fields
$phone_name = $_POST['phone_name'];
$os_id = $_POST['os_id'];
$company_id = $_POST['company_id'];
$ram = $_POST['ram'];
$storage = $_POST['storage'];
$stars = $_POST['stars'];
$price = $_POST['price'];


// Delete the product from the database
$query = 'INSERT INTO phones (phoneID, osID, companyID, phoneName, RAM, storage, stars, price, images)
           VALUES (null, :os_id, :company_id, :phone_name, :ram, :storage, :stars, :price, "https://p.kindpng.com/picc/s/722-7224478_transparent-nexus-5-png-cell-phone-android-png.png")';
$statement = $db->prepare($query);
$statement->bindValue(':os_id', $os_id);
$statement->bindValue(':company_id', $company_id);
$statement->bindValue(':phone_name', $phone_name);
$statement->bindValue(':ram', $ram);
$statement->bindValue(':storage', $storage);
$statement->bindValue(':stars', $stars);
$statement->bindValue(':price', $price);
$success = $statement->execute();
$statement->closeCursor();

// Display the Product List page
include('adminPhones.php');