<?php
//kapcsolódás az adatbázishoz

function connect(){
    $host = "localhost";
    $user = "root";
    $pass = "";
    $dbname = "aranymancs";

    $connect = new mysqli($host,$user,$pass,$dbname);
    if ($connect->connect_error) {
        die("Sikertelen kapcsolódás");
    }

    return $connect;
}

?>