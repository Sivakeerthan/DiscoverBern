<?php
require_once '../repository/PostRepository.php';


class RestaurantsController{

  public function index(){
    $view = new View('array');
    $postRepository = new PostRepository();

    $view->title = 'DiscoverBern';
    $view->heading = 'Restaurants';
    $view->images = $postRepository->readByCategory('restaurants');


    $view->display();



  }
}



?>
