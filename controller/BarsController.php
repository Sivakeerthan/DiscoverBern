<?php
require_once '../repository/PostRepository.php';

class BarsController{


  public function index(){

    $postRepository = new PostRepository();
    $view = new View('posts');
    $view->title = 'DiscoverBern';
    $view->heading = 'Bars';

    $view->images = $postRepository->readByCategory('bars');
    $view->display();



  }
}



?>
