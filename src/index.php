<?php

require "vendor/autoload.php";

const USERNAME = 'postgres';
const PASSWORD = 'secret';

const DSN = 'pgsql:host=postgres-db;port=5432;dbname=test;';

try {


    $pdo = new PDO(DSN, USERNAME, PASSWORD, [PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC]);

    $query = $pdo->prepare("SELECT * FROM students;");
    $query->execute();

    dd($query->fetchAll());
}
catch (Throwable $exception)
{
    dd("Are you shure you run all the instructions from README ?");
}



