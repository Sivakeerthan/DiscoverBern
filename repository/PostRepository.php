<?php

class PostRepository extends Repository{

    protected $tableName='post';

    public function readByCategory($category)
    {
      $query = "SELECT imgurl FROM post WHERE category = ?";
      $statement = ConnectionHandler::getConnection()->prepare($query);
      $statement->bind_param('s', $category);
      $statement->execute();

      $result = $statement->get_result();
      if (!$result) {
          throw new Exception($statement->error);
      }

      // Datensätze aus dem Resultat holen und in das Array $rows speichern
      $rows = array();
      while ($row = $result->fetch_object()) {
          $rows[] = $row;
      }

      return $rows;

    }

}


 ?>
