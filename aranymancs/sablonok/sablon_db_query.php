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

?>