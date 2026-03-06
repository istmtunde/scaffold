<?php
function json_send($response_code,$message) {
    http_response_code($response_code);
    header('Content-Type: application/json; charset=utf-8');
    print json_encode($message, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
}
?>