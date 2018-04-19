<?php

require_once '../lib/Repository.php';

class PostRepository extends Repository
{

    protected $tableName='post';

    public function readByCategory($category)
    {
      $query = "SELECT p.imgurl, p.title, u.uname FROM $this->tableName AS p JOIN user AS u ON p.user_id=u.uid WHERE category_id = (SELECT cid FROM category where category_name = ?)";
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
    public function readAll($max=1000)
    {
        $query = "SELECT * FROM {$this->tableName}";

        $statement = ConnectionHandler::getConnection()->prepare($query);
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
    public function insertPost($pid,$title,$imgurl,$category,$plz,$uid){
        $mainquery = "INSERT INTO post(`pid`,`title`, `imgurl`,`category_id`, `ort_id`,`user_id` ) VALUES (?,?,?,(SELECT cid FROM category WHERE category_name = ?), ? ,?)";
        $statement = ConnectionHandler::getConnection()->prepare($mainquery);
        $statement->bind_param('isssii',$pid,$title,$imgurl,$category,$plz,$uid);
        $statement->execute();

    }

}


 ?>
