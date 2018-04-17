<?php

require_once '../repository/UserRepository.php';

/**
 * Siehe Dokumentation im DefaultController.
 */
class UserController
{
    public $meldung;
    public function index()
    {
        $userRepository = new UserRepository();

        $view = new View('user_index');
        $view->title = 'Benutzer';
        $view->heading = 'Benutzer';
        $view->users = $userRepository->readAll();
        $view->display();
    }

    public function create()
    {
        $view = new View('user_create');
        $view->title = 'Benutzer erstellen';
        $view->heading = 'Benutzer erstellen';
        $view->display();
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
                $meldung = "Ihre Passwörter stimmen nicht überein";
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
