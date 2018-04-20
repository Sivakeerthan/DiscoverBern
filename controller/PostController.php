<?php
/**
 * Created by PhpStorm.
 * User: bvamas
 * Date: 19.04.2018
 * Time: 10:11
 */
require_once '../repository/PostRepository.php';

class PostController
{
    function create(){

<<<<<<< HEAD
            $title = htmlspecialchars($_POST['postTitle']);
            $category = $_POST['postCategory'];
            $postRepository = new PostRepository();
            $id = count($postRepository->readAll()) + 1;
            session_start();
            $uid = $_SESSION['uid'];
            $plz =$_POST['postPlace'];
            $imageFileType = strtolower(pathinfo($_FILES['fileToUpload']['name'],PATHINFO_EXTENSION));
            $target_dir = "images/" . $category . "/";
            $target_file = $target_dir."img".$id.'.'.$imageFileType;
            $this->upload($target_file);
            $postRepository->insertPost($id,$title, $target_file, $category, $plz,$uid);
            header('Location: /user');
=======
      $title = htmlspecialchars($_POST['postTitle']);
      $category = $_POST['postCategory'];
      $postRepository = new PostRepository();
      $id = count($postRepository->readAll()) + 1;
      session_start();
      $uid = $_SESSION['uid'];
      $plz =$_POST['postPlace'];
      $imageFileType = strtolower(pathinfo($_FILES['fileToUpload']['name'],PATHINFO_EXTENSION));
      $target_dir = "/images/" . $category . "/";
      $target_file = $target_dir."img".$id.'.'.$imageFileType;
      $this->upload($target_file);
      $postRepository->insertPost($id,$title, $target_file, $category, $plz,$uid);
      header('Location: /user');
      exit();
>>>>>>> e8a5381e1b090c4bee6fb4ec0375341834c9f424
    }
    function upload($target_file){
        $uploadOk = 1;
        $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
        // Check if image file is a actual image or fake image
        if(isset($_POST["submit"])) {
            $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
            if($check !== false) {
                echo "File is an image - " . $check["mime"] . ".";
                $uploadOk = 1;
            } else {
                echo "File is not an image.";
                $uploadOk = 0;
            }
        }
        // Check if file already exists
        if (file_exists($target_file)) {
            echo "Sorry, file already exists.";
            $uploadOk = 0;
        }
        // Check file size
        if ($_FILES["fileToUpload"]["size"] > 500000) {
            echo "Sorry, your file is too large.";
            $uploadOk = 0;
        }
        echo "Hallo".$imageFileType;
// Allow certain file formats
        if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg") {
            echo "Sorry, only JPG, JPEG, PNG files are allowed.";
            $uploadOk = 0;
        }
// Check if $uploadOk is set to 0 by an error
        if ($uploadOk == 0) {
            echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
        } else {
            if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
                echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
            } else {
                echo "Sorry, there was an error uploading your file.";
            }
        }

    }
    public function rateAdd(){
        $view = new View('user_index');
        $postRepository = new PostRepository();
        $post = $postRepository->getPostByUrl($view->img->imgurl);
        $postRepository->doRateAdd($post);
        header('Location: /'.$view->img->category);
        exit();
    }
    public function rateRmv(){
        $view = new View('user_index');
        $postRepository = new PostRepository();
        $post = $postRepository->getPostByUrl($view->img->imgurl);
        $postRepository->doRateRmv($post);
        header('Location: /'.$view->img->category);
        exit();
    }
}