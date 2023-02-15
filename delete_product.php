<?php
require_once('database.php');

// Get IDs
$phone_id = filter_input(INPUT_POST, 'phoneID', FILTER_VALIDATE_INT);

// Delete the product from the database
if ($phone_id != false) {
    $query = 'DELETE FROM phones
              WHERE phoneID = :phone_id';
    $statement = $db->prepare($query);
    $statement->bindValue(':phone_id', $phone_id);
    $success = $statement->execute();
    $statement->closeCursor();    
}

// Display the Product List page
include('index.php');