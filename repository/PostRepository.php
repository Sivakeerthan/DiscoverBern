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
    public function insertPost($title,$imgurl,$category,$place,$uid){
        $mainquery = "INSERT INTO {$this->tableName}(`title`,  `imgurl`,`category_id`, `ort_id`,`user_id` )
VALUES                              (?,?,?,?,?);";
        $cidquery = "SELECT cid FROM category WHERE category_name = ?";
        $oidquery = "SELECT oid FROM ort WHERE ort = ?";
        $statement1 = ConnectionHandler::getConnection()->prepare($cidquery);
        $statement1->bind_param('s',$category);
        $statement1->execute();
        $cid = $statement1->get_result();
        if(!$cid){
            throw new Exception($statement1->error);
        }
        $statement2 = ConnectionHandler::getConnection()->prepare($oidquery);
        $statement2->bind_param('s',$place);
        $statement2->execute();
        $oid = $statement2->get_result();
        if(!$oid){
            throw new Exception($statement2->error);
        }
        $statement3 = ConnectionHandler::getConnection()->prepare($mainquery);
        $statement3->bind_param('ssssi',$title,$imgurl,$cid,$oid,$uid);
        $statement3->execute();
        if(!$statement3->execute()){
            throw new Exception($statement3->error);
        }
    }

}


 ?>
