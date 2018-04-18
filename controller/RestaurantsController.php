<?php
class RestaurantsController{


  public function index(){
    $view = new View('restaurants');
    $view->title = 'DiscoverBern';
    $view->heading = 'Restaurants und Bars';
    $view->display();



  }
}



?>
