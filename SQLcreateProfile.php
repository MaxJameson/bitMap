<?php

var_dump($_POST);


// logs into the sql database
$user = 'root';
$pass = '';
$db = 'bitmap';

// estavlishes a connection
$db = new mysqli ('localhost', $user, $pass, $db) or die("unable to connect");


// stores data to be uploaded
$userName = $_POST["userName"];
$password = $_POST["password"];
$bio = $_POST["bio"];
$profilePic = $_POST["profilePic"];
$date = $_POST["date"];



// runs a query to insert new record
$query = mysqli_query($db, "INSERT INTO `tblprofiles`(`UserName`,`Password`,`ProfilePicture`,`Bio`,`DateJoined`) VALUES ('$userName','$password','$profilePic','$bio','$date')");