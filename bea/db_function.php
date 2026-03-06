<?php 
//lekérdezés az adatbázisból
function s_query($sql) {
    $array = false;
    $connection = connect();
    $e = $connection->query($sql);
    if ($e) {
        $array=[];
        while ($row = $e->fetch_assoc()){
            $array[]=$row;
        }
    }
    $connection->close();
    return $array;
}

function getAllatMind() {
    $sql = "SELECT * FROM allatok";
    return s_query($sql);
}

function getAllatFaj($allat) {
    $sql = "SELECT * FROM allatok WHERE faj LIKE '%".$allat."%'";
    return s_query($sql);
}

function getVaros($varos) {
    $sql = "SELECT * FROM allatok WHERE menhely_varos LIKE '%".$varos."%'";
    return s_query($sql);
}

function getVarosbanAllat($allat, $varos) {
    if ($varos == "mind"){
        $varos = "";
    }
    if ($allat == "mind"){
        $allat = "";
    }
    $sql = "SELECT * FROM allatok WHERE menhely_varos LIKE '%".$varos."%' AND faj LIKE '%".$allat."%'";
    return s_query($sql);
}
function getVarosLista() {
    $sql = "SELECT DISTINCT menhely_varos FROM allatok ORDER BY menhely_varos ASC";
    return s_query($sql);
}
?>