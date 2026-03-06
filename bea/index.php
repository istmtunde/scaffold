<?php
include_once("connect_sql.php");
include_once("db_function.php");

//api végpont, json jöjjön vissza
function json_send($response_code,$message){
    http_response_code($response_code);
    header('Content-Type: application/json; charset=utf-8');
    print json_encode($message);
}

//paraméterek kiolvasása az urlből
$allat = isset($_GET['allat']) ? $_GET['allat'] : null;
$varos = isset($_GET['varos']) ? $_GET['varos'] : null;


$adatok = null;
$response_code = 200;

if ($varos == 'lista'){
    $adatok = getVarosLista();
    }
else if ($allat != null && $varos != null){
   $adatok = getVarosbanAllat($allat, $varos);
    }

else if ($allat != null){
    $adatok = getAllatFaj($allat);
}
else if ($varos != null){
    $adatok = getVaros($varos);
}
else{
    $response_code = 404;
    $adatok = ["minta1" => "/?allat=mind", "minta2" => "/?allat=kutya", "minta3" => "/?varos=mind", "minta4" => "/?varos=győr", "minta5" => "/?varos=gyor&allat=kutya"];
}

if ($adatok == []){
    $response_code = 404;
    $adatok = ["hiba" => "nincs találat"];
}

json_send($response_code, $adatok);

?>