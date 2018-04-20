<?php
require_once '../repository/PostRepository.php';

class BarsController{


  public function index(){
    session_start();

    $_SESSION['uid'];

    $postRepository = new PostRepository();
    $view = new View('posts');
    $view->title = 'DiscoverBern';
    $view->heading = 'Bars';

    $view->images = $postRepository->readByCategory('bars');
    $view->display();



  }
}



?>
