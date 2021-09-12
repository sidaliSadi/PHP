<?php

require_once 'BDD.php';
require_once 'categorie.php';

class CategorieManager extends categorie{
	public static function findAll(){
		$sql = 'SELECT * FROM categories';

		$bdd = new BDD();
		$co = $bdd->connexion();
		$req = $co->prepare($sql);
		$req->execute();

		return $req->fetchAll(PDO::FETCH_OBJ);
	}
	//cherche une categorie selon $idd
	public static function findCategorie($idd){
		$sql = 'SELECT * FROM categories WHERE id = :identifiant';
		$bdd = new BDD();
		$co = $bdd->connexion();
		$req = $co->prepare($sql);
		$req->execute([
			'identifiant' => $idd
		]);

		return $req->fetchAll(PDO::FETCH_OBJ);
	}

	//sauvegarder une categorie
    public function save(){
		$sql = 'INSERT INTO categories(nom) VALUES (:n)';

		$bdd = new BDD();
		$co = $bdd->connexion();
		$req = $co->prepare($sql);
		$req->execute([
			'n' => $this->getNom()
		]);

		return $req->rowCount();
	}
}