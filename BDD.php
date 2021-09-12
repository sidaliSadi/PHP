<?php

class BDD{
    const HOST =  'localhost:8888';
    const USER = 'root';
    const MDP = 'root';

    public function connexion(){
        try {
        
            return new PDO('mysql:host='.self::HOST.';dbname=blog', self::USER, self::MDP);
            
        } catch (Exception $e) {
            die('ERREUR : '. $e -> getMessage());
        }
    }
}
?>