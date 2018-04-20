<?php
require_once '../repository/PostRepository.php';

class TourismController{

  public function index(){
    session_start();
    $postRepository = new PostRepository();

    $view = new View('posts');
    $view->title = 'DiscoverBern';
    $view->heading = 'Tourismus';
    $view->images = $postRepository->readByCategory('tourism');

    $view->display();

  }
}



?>
