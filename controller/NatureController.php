<?php
require_once '../repository/PostRepository.php';
class NatureController{

  public function index(){

  session_start();
    $postRepository = new PostRepository();


      session_start();
      $_SESSION['uid'];
      $postRepository = new PostRepository();

    $view = new View('posts');
    $view->title = 'DiscoverBern';
    $view->heading = 'Wandern und Natur';
    $view->images = $postRepository->readByCategory('wandern');
    $view->display();



  }
}



?>
