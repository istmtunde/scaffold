<?php
function connect(){
    $host="localhost";
    $user="root";     
    $pass="";         
    $dbname="aranymancs";

    $connect = new mysqli($host,$user,$pass,$dbname);
    if ($connect->connect_error) {
        die("Sikertelen kapcsolódás!");
    }

    $connect->query("set names 'utf8'");
    $connect->query("set character set 'utf8'");

    return $connect;
}
?>