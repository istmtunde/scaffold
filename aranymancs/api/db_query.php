<?php
function s_query($sql) {
    $array=false;
    $e=connect()->query($sql);
    if ($e) {
        $array=[];
        while ($row=$e->fetch_assoc())
            $array[]=$row;
    }
    connect()->close();
    return $array;
}

function readAll($table) {
    $sql="SELECT * FROM $table";
    return s_query($sql);
}

function readItem($table, $field, $value){
    $sql="SELECT * FROM $table WHERE $field = $value";
    return s_query($sql);
}

function readByFajEsVaros($faj, $varos){
    $sql="SELECT * FROM allatok WHERE 1=1";
    if ($faj !== "mind" && $faj !== NULL) {
        $sql = $sql." AND faj='$faj'";
    }
    if ($varos !== "mind" && $varos !== NULL) {
        $sql = $sql." AND menhely_varos='$varos'";
    }
    return s_query($sql);
}

function readAllVaros(){
    $sql="SELECT DISTINCT menhely_varos FROM allatok ORDER BY menhely_varos";
    return s_query($sql);
}

function readAllFaj(){
    $sql="SELECT DISTINCT faj FROM allatok ORDER BY faj";
    return s_query($sql);
}

?>