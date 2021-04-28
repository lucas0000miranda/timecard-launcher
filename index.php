<?php

require __DIR__."/vendor/autoload.php";
require_once('./database/config.php');
require_once('./database/Connection.php');

$connection = new Connection(HOST, USER, PASSWORD, DB);

$test = $connection->getRow('select * from users');

var_dump(json_encode($test));


