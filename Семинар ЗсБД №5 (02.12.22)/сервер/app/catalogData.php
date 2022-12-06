<?php
header('Content-Type: application/json');

$data = [
    [
        "name" => "product1",
        "price" => 44.8,
        "image" => "https://picsum.photos/id/501/200/300"
    ],
    [
        "name" => "product2",
        "price" => 109.3,
        "image" => "https://picsum.photos/id/502/200/300"
    ],
    [
        "name" => "product3",
        "price" => 55,
        "image" => "https://picsum.photos/id/503/200/300"
    ],
];

$myJSON = json_encode($data);

echo $myJSON;
?>