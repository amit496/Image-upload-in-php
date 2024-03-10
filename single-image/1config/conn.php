<?php
    $hostname = 'localhost';
    $username = 'root';
    $password = '';
    $database = 'php_image';
    $conn = mysqli_connect($hostname, $username, $password, $database);
    if(!$conn)
    {
        die('Not Connected');
    }
?>