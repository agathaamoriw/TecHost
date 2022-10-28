<?php

$host = 'localhost';
$user = 'root';
$senha = '';
$bd = 'Gerenciador_BD';

$conn = mysqli_connect($host, $user, $senha, $bd);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully";
mysqli_close($conn);

?> 