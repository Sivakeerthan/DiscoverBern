<?php
class RestaurantsController{


  public function index(){
    $view = new View('array');
    $restaurantRepository = new PostRepository();

    $view->title = 'DiscoverBern';
    $view->heading = 'Restaurants';
    $images = $restaurantRepository->readByCategory('restaurants');
    foreach ($images as $img) {
      $view->img = $img;
    }

    $view->display();



  }
}



?>
