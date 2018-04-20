<?php

require_once '../lib/Repository.php';

class PostRepository extends Repository
{

    protected $tableName='post';

    public function readByCategory($category)
    {
      $query = "SELECT p.pid, p.imgurl, p.title,c.category_name,u.uname, p.rateadd, p.ratermv FROM $this->tableName AS p JOIN user AS u ON p.user_id=u.uid JOIN category AS c ON p.category_id = c.cid WHERE c.category_name = ?";
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

    public function showPosts($uid){
      $query = "SELECT * FROM {$this->tableName} AS p JOIN user AS u ON p.user_id = u.uid WHERE user_id = ?";
      $statement = ConnectionHandler::getConnection()->prepare($query);
      $statement->bind_param('i',$uid);
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
    public function readById($id)
    {
        // Query erstellen
        $query = "SELECT * FROM {$this->tableName} WHERE pid=?";

        // Datenbankverbindung anfordern und, das Query "preparen" (vorbereiten)
        // und die Parameter "binden"
        $statement = ConnectionHandler::getConnection()->prepare($query);
        $statement->bind_param('i', $id);

        // Das Statement absetzen
        $statement->execute();

        // Resultat der Abfrage holen
        $result = $statement->get_result();
        if (!$result) {
            throw new Exception($statement->error);
        }

        // Ersten Datensatz aus dem Reultat holen
        $row = $result->fetch_object();

        // Datenbankressourcen wieder freigeben
        $result->close();

        // Den gefundenen Datensatz zurückgeben
        return $row;
    }

    public function doRateAdd($pid){
        $currQuery = "Select rateadd FROM {$this->tableName} WHERE pid = ?";
       echo "PID:".$pid;
        $stmtCurr = ConnectionHandler::getConnection()->prepare($currQuery);
        $stmtCurr->bind_param('i',$pid);
        $stmtCurr->execute();
        $currRate = $stmtCurr->get_result()->fetch_assoc();

        if(!$currRate){
            throw new Exception($stmtCurr->error);
        }
        $newRate = $currRate['rateadd'] +1;
        $addQuery = "UPDATE {$this->tableName} SET rateadd = ? WHERE pid = ?";
        $stmtAdd = ConnectionHandler::getConnection()->prepare($addQuery);
        $stmtAdd->bind_param('ii',$newRate,$pid);
        $stmtAdd->execute();

    }
    public function doRateRmv($pid){
        $currQuery = "Select ratermv FROM {$this->tableName} WHERE pid = ?";
        echo "PID:".$pid;
        $stmtCurr = ConnectionHandler::getConnection()->prepare($currQuery);
        $stmtCurr->bind_param('i',$pid);
        $stmtCurr->execute();
        $currRate = $stmtCurr->get_result()->fetch_assoc();
        if(!$currRate){
            throw new Exception($stmtCurr->error);
        }
        $newRate = $currRate['ratermv'] +1;
        $addQuery = "UPDATE {$this->tableName} SET ratermv = ? WHERE pid = ?";
        $stmtRmv = ConnectionHandler::getConnection()->prepare($addQuery);
        $stmtRmv->bind_param('ii',$newRate,$pid);
        $stmtRmv->execute();


    }
    public function deleteById($id)
    {
        $query = "DELETE FROM {$this->tableName} WHERE pid=?";

        $statement = ConnectionHandler::getConnection()->prepare($query);
        $statement->bind_param('i', $id);

        if (!$statement->execute()) {
            throw new Exception($statement->error);
        }
    }
    public function updateById($title,$id){
        echo $title." ".$id;
        $query = "UPDATE {$this->tableName} SET title = ? WHERE pid = ?";

        $statement = ConnectionHandler::getConnection()->prepare($query);
        $statement->bind_param('si',$title, $id);
        echo "st:".print_r($statement);
        $statement->execute();
    }
}


 ?>
