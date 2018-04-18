<?php
class NatureController{


  public function index(){



    $view = new View('nature');
    $view->title = 'DiscoverBern';
    $view->heading = 'Wandern und Natur';
    
    $view->display();



  }
}



?>
