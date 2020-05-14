<?php

class DBConnector
{
  private $pdo;

  public function __construct(string $paramFilePath)
  {
    $params = parse_ini_file(__DIR__ . '/' . $paramFilePath);
    if (!$params)
    {
      throw new Exception("File not exists or unreadable");
    }
    $dsn = "pgsql:host={$params['db_host']};port={$params['db_port']};dbname={$params['db_name']};user={$params['username']};password={$params['passwd']}";
    $opt = [
        PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        PDO::ATTR_EMULATE_PREPARES   => false,
    ];
    $pdo = new PDO($dsn, $params['username'], $params['passwd'], $opt);
    $this->pdo = $pdo;
  }

  public function getArticles(string $expr, array $params)
  {
    $stmt = $this->pdo->prepare($expr);
    $stmt->execute($params);
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
  }

  public function storeArticle(int $id, string $article)
  {
    $stmt = $this->pdo->prepare("UPDATE articles SET article=:article WHERE id=:id");
    $stmt->execute(['article' => $article, 'id' => $id]);
    return $stmt->rowCount();
  }

}
