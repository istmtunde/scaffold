<?php
function connect(){
    $host="";
    $user="";     
    $pass="";         
    $dbname="";

    $connect = new mysqli($host,$user,$pass,$dbname);
    if ($connect->connect_error) {
        die("Sikertelen kapcsolódás!");
    }

    $connect->query("set names 'utf8'");
    $connect->query("set character set 'utf8'");

    return $connect;
}
?>