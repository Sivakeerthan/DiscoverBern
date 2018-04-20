<?php
require_once '../repository/PostRepository.php';
require_once '../repository/UserRepository.php';


class RestaurantsController{

  public function index(){



    $view = new View('posts');
    $postRepository = new PostRepository();
    $view->title = 'DiscoverBern';
    $view->heading = 'Restaurants';
    $view->images = $postRepository->readByCategory('restaurants');


    $view->display();



  }
}



?>
