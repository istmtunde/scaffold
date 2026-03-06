<?php

include_once("db_connect.php");
include_once("db_query.php");
include_once("json_encode.php");

$adatok = readAllFaj();
$fajok = array_map(fn($item) => $item['faj'], $adatok);

json_send(200, $fajok);

?>
