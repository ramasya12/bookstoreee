<?php
    $host    = "localhost";
    $user    = "root";
    $pass    = "";
    $dbname = "tokobuku";

    $conn = mysqli_connect( $host, $user, $pass, $dbname) or die('Could not connect to mysql server.' );

    // mysqli_select_db($dbname, $conn) or die('Could not select database.');

    $baseurl="http://localhost/tokobuku/";
?>
