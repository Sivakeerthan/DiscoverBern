<?php
require_once '../repository/PostRepository.php';


class RestaurantsController{

  public function index(){

    if(isset($_SESSION['uid'])) {
    $_SESSION['uid'];
    }

    $view = new View('posts');
    $postRepository = new PostRepository();

    $view->title = 'DiscoverBern';
    $view->heading = 'Restaurants';
    $view->images = $postRepository->readByCategory('restaurants');


    $view->display();



  }
}



?>
