<?php
require_once '../repository/PostRepository.php';


class RestaurantsController{

  public function index(){
<<<<<<< HEAD
      session_start();
=======
    session_start();
    $_SESSION['uid'];
>>>>>>> e8a5381e1b090c4bee6fb4ec0375341834c9f424
    $view = new View('posts');
    $postRepository = new PostRepository();

    $view->title = 'DiscoverBern';
    $view->heading = 'Restaurants';
    $view->images = $postRepository->readByCategory('restaurants');


    $view->display();



  }
}



?>
