<?php

require_once '../repository/UserRepository.php';
require_once '../repository/PlaceRepository.php';


/**
 * Siehe Dokumentation im DefaultController.
 */
class UserController
{

    public function index()
    {
        $userRepository = new UserRepository();
        $view = new View('user_index');
        $view->title = 'Profil';
        session_start();
        if(isset($_SESSION['uid'])) {
            $view->user = $userRepository->readById($_SESSION['uid']);
            $view->heading = $view->user->uname;
            $placeRepository = new PlaceRepository();
            $view->places = $placeRepository->readAll();
            $view->display();
        }
        else{
            $view->heading = "Access Denied!";
            $view->display();
        }
    }

    public function create()
    {
        $view = new View('user_create');
        $view->title = 'Benutzer erstellen';
        $view->heading = 'Benutzer erstellen';
        $view->display();
    }

    public function login(){
        $view = new View('user_login');
        $view->title = 'Anmelden';
        $view->heading = 'Anmelden';
        $view->display();
    }

    /**
     * @return mixed
     */
    public function checkLogin(){
        if ($_POST['send']){
            $email = $_POST['email'];
            $pw = $_POST['password'];
            $userRepo = new UserRepository();
            $id = $userRepo->getID($email,$pw);
            echo "ID:".$id;
            if($id>0){
                session_start();
                $_SESSION['uid'] = $id;
                if(isset($_SESSION['uid'])) {
                    header('Location: /user');
                    exit();
                    print_r($_SESSION);
                }
            }
            else{
                header('Location: /user/login');
                $_POST['meldung'] = "Ihre Anmeldedaten sind Falsch!!";
            }
        }
    }
    public function logout(){
        session_start();
        $_SESSION['uid'];
        session_destroy();
        unset($_SESSION['uid']);
        header('Location: /');
    }
    public function doCreate()
    {
        if ($_POST['send']) {

            $uname = $_POST['username'];
            $email = $_POST['email'];
            $pw1 = $_POST['password1'];
            $pw2 = $_POST['password2'];
            if($pw1==$pw2) {
                $userRepository = new UserRepository();
                $userRepository->create($uname, $email, $pw1);

            }
            else{

                echo '<label>Ihre Passwörter stimmen nicht überein</label>';
            }
        }


    }
    public function delete()
    {
        $userRepository = new UserRepository();
        $userRepository->deleteById($_GET['id']);

        // Anfrage an die URI /user weiterleiten (HTTP 302)
        header('Location: /user');
    }
}
