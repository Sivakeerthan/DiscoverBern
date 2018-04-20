<?php
require_once '../repository/PostRepository.php';
class NatureController{

  public function index(){
<<<<<<< HEAD

  session_start();
    $postRepository = new PostRepository();

=======
      session_start();
      $_SESSION['uid'];
      $postRepository = new PostRepository();
>>>>>>> e8a5381e1b090c4bee6fb4ec0375341834c9f424
    $view = new View('posts');
    $view->title = 'DiscoverBern';
    $view->heading = 'Wandern und Natur';
    $view->images = $postRepository->readByCategory('wandern');
    $view->display();



  }
}



?>
