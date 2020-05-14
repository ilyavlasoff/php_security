<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <h3>Поиск новости</h3>
    <form class="" action="DbExecutor.php" method="post">
      <label for="queryBox">Id новости</label>
      <input type="text" name="userQuery" id="queryBox" value="<?=$userQuery?>">
      <p><input type="checkbox" value="1" name="useProtection" checked>Безопасный поиск</p>
      <p><input type="checkbox" value="1" name="usePdo" checked>Использовать PDO</p>
      <p><input type="submit" name="searchSubmit" value="Поиск"></p>
    </form>
    <br>
    <?php
    if (isset($error))
    {
      echo "<p style='color: red;'>$error</p>";
    }
    if (empty($news))
    {
      echo 'Ничего не найдено';
    }
    else
    {
      foreach ($news as $article) {
        echo "<br>Новость ${article['id']}<br>";
        echo $article['article'];
      }
    }
    ?>
  </body>
</html>
