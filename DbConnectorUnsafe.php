<?php

class UnsafeDBConnector
{
  private $conn;

  function __construct(string $paramFilePath)
  {
    $params = parse_ini_file(__DIR__ . '/' . $paramFilePath);
    $this->conn = pg_connect("host={$params['db_host']} dbname={$params['db_name']}
    user={$params['username']} password={$params['passwd']}")
    or die('Ошибка: ' . pg_last_error());
  }

  function getArticlesUnsafe($query)
  {
    $result = pg_query($query);
    return pg_fetch_all($result);
  }
}
