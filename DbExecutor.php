<?php

require_once('DbConnector.php');
require_once('DbConnectorUnsafe.php');

if (isset($_POST['searchSubmit']))
{
  $userQuery = $_POST['userQuery'];
  $useProtection = $_POST['useProtection'];
  $usePdo = $_POST['usePdo'];

  if (boolval($useProtection))
  {
    $cleanedQuery = htmlentities($userQuery);

    try {
      $databaseConnector = new DBConnector('db_param.ini');
      $news = $databaseConnector->getArticles('SELECT * FROM articles WHERE id = :expression', [
        'expression' => $cleanedQuery
      ]);
    }
    catch(Exception $ex)
    {
      $error = $ex->getMessage();
    }

  }
  else {
    $query = "SELECT * FROM articles WHERE id = " . $userQuery;
    try {
      if (boolval($usePdo)) {
        $databaseConnector = new DBConnector('db_param.ini');
        $news = $databaseConnector->getArticles($query, []);
      }
      else {
        $databaseConnector = new UnsafeDBConnector('db_param.ini');
        $news = $databaseConnector->getArticlesUnsafe($query);
      }
    }
    catch (Exception $ex)
    {
      $error = $ex->getMessage();
    }

  }

}

require_once('index.php');
