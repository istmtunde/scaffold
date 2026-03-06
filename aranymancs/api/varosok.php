<?php

include_once("db_connect.php");
include_once("db_query.php");
include_once("json_encode.php");

$adatok = readAllVaros();
$varosok = array_map(fn($item) => $item['menhely_varos'], $adatok);

json_send(200, $varosok);

?>
