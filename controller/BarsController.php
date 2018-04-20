<?php
require_once '../repository/PostRepository.php';

class BarsController{


  public function index(){
    session_start();
<<<<<<< HEAD
=======
    $_SESSION['uid'];
>>>>>>> e8a5381e1b090c4bee6fb4ec0375341834c9f424
    $postRepository = new PostRepository();
    $view = new View('posts');
    $view->title = 'DiscoverBern';
    $view->heading = 'Bars';

    $view->images = $postRepository->readByCategory('bars');
    $view->display();



  }
}



?>
