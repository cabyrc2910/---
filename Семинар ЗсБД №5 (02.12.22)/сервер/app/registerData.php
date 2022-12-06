<?php
    $dataPOST = trim(file_get_contents('php://input'));
    $xmlData = simplexml_load_string($dataPOST);
    // var_dump($xmlData);

    header("Content-type: text/xml; charset=utf-8");

    //echo $xmlData->login;
    //echo $xmlData->pass;
    echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>
        <response>
            <date>" . date('d.m.Y') . "</date>
            <login>" . $xmlData->login . "</login>
            <pass>" . $xmlData->pass . "</pass>
        </response>
    ";
?>