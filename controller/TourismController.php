<?php
require_once '../repository/PostRepository.php';

class TourismController{

  public function index(){
    if(isset($_SESSION['uid'])) {
    $_SESSION['uid'];
    }

    $postRepository = new PostRepository();

    $view = new View('posts');
    $view->title = 'DiscoverBern';
    $view->heading = 'Tourismus';
    $view->images = $postRepository->readByCategory('tourism');

    $view->display();

  }
}



?>
