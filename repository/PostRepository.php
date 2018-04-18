<?php

class PostRepository extends Repository{

    protected $tableName='post';

    public function toArray($category)
    {
      $query = "SELECT imgurl FROM post WHERE password = sha1(?)";
    }

}


 ?>
