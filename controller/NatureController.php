<?php
require_once '../repository/PostRepository.php';
class NatureController{

  public function index(){


    if(isset($_SESSION['uid'])) {
    $_SESSION['uid'];
    }
      $postRepository = new PostRepository();

    $view = new View('posts');
    $view->title = 'DiscoverBern';
    $view->heading = 'Wandern und Natur';
    $view->images = $postRepository->readByCategory('wandern');
    $view->display();



  }
}



?>
