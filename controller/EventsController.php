<?php
class EventsController{


  public function index(){
    $view = new View('events');
    $view->title = 'DiscoverBern';
    $view->heading = 'Anlässe';
    $view->display();



  }
}



?>
