<?php

require_once '../lib/Repository.php';

/**
 * Das UserRepository ist zuständig für alle Zugriffe auf die Tabelle "user".
 *
 * Die Ausführliche Dokumentation zu Repositories findest du in der Repository Klasse.
 */
class UserRepository extends Repository
{
    /**
     * Diese Variable wird von der Klasse Repository verwendet, um generische
     * Funktionen zur Verfügung zu stellen.
     */
    protected $tableName = 'user';

    /**
     * Erstellt einen neuen benutzer mit den gegebenen Werten.
     *
     * Das Passwort wird vor dem ausführen des Queries noch mit dem SHA1
     *  Algorythmus gehashed.
     *
     * @param $firstName Wert für die Spalte firstName
     * @param $lastName Wert für die Spalte lastName
     * @param $email Wert für die Spalte email
     * @param $password Wert für die Spalte password
     *
     * @throws Exception falls das Ausführen des Statements fehlschlägt
     */
    public function create($uname,$email, $pw1)
    {
        $pw = sha1($pw1);

        $query = "INSERT INTO $this->tableName (uname, email, password) VALUES (?, ?, ?)";

        $statement = ConnectionHandler::getConnection()->prepare($query);
        $statement->bind_param('sss',$uname, $email, $pw);

        if($statement->execute()) {
            // Anfrage an die URI /user weiterleiten (HTTP 302)
            header('Location: /user');
        }
        else{
            header('Location /user/create');
            $_POST['meldung'] = "Es konnte kein Benutzer erstellt werden";
            throw new Exception($statement->error);
        }

        return $statement->insert_id;
    }
    public function getID($email,$password){
        $query = "SELECT uid FROM user WHERE password = sha1(?) AND email = ?";

        $statement = ConnectionHandler::getConnection()->prepare($query);
        $statement->bind_param('ss',$password,$email);
        $id =0;

        if($statement->execute()){

            $statement->bind_result($id);
            $statement->fetch();
            return $id;

        }
        else{
            $_POST['meldung'] = "Ihr Benutzerkonto konnte nicht gefunden werden!";
            throw new Exception($statement->error);
        }

    }
}
