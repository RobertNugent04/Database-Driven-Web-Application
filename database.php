<?php
    $dsn = 'mysql:host=localhost;dbname=D00244618';
    $username = 'D00244618';
    $password = 'exL29xLx';


    try {
        $db = new PDO($dsn, $username, $password);
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        include('database_error.php');
        exit();
    }
?>