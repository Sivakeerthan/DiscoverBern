<?php
class BarsController{


  public function index(){
    $view = new View('bars');
    $view->title = 'DiscoverBern';
    $view->heading = 'Bars';
    $view->display();



  }
}



?>
