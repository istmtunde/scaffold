<?php

include_once("db_connect.php");
include_once("db_query.php");
include_once("json_encode.php");

$adatok = NULL;

$allat = NULL;
$varos = NULL;
$kod = 200;

if (isset($_GET['allat'])) {
    $allat = $_GET['allat'];
}

if (isset($_GET['varos'])) {
    $varos = $_GET['varos'];
}

if ($allat === NULL && $varos === NULL) {
        $adatok=[
            "minta1" => "?allat=mind",
            "minta2" => "?allat=kutya",
            "minta3" => "?varos=mind",
            "minta4" => "?varos=győr",
            "minta5" => "?hely=győr&allat=kutya"  
    ];
    $kod = 404;
}
else {
    $adatok = readByFajEsVaros($allat, $varos);
}

if ($adatok === []){
    $adatok = [
        "hiba" => "nincs találat"
    ];
    $kod = 404;
}

json_send($kod, $adatok);

?>