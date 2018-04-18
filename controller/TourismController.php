<?php
class TourismController{


  public function index(){
    $view = new View('tourism');
    $view->title = 'DiscoverBern';
    $view->heading = 'Tourismus';
    $view->display();



  }
}



?>
