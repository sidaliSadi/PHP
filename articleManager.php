<?php

require_once 'BDD.php';
require_once 'article.php';

class articleManager extends article{
	//retourne les articles d'une categorie $id_cate
	public static function findArticles($id_cat){
		$sql = 'SELECT * FROM articles WHERE id_categorie = :identifiant';
		$bdd = new BDD();
		$co = $bdd->connexion();
		$req = $co->prepare($sql);
		$req->execute([
			'identifiant' => $id_cat
		]);

		return $req->fetchAll(PDO::FETCH_OBJ);
	}

	//retourne un article specifique
    public static function findArticle($id_art){
		$sql = 'SELECT * FROM articles WHERE id_article = :identifiant';
		$bdd = new BDD();
		$co = $bdd->connexion();
		$req = $co->prepare($sql);
		$req->execute([
			'identifiant' => $id_art
		]);

		return $req->fetchAll(PDO::FETCH_OBJ);
	}

	//sauvegarder un article
    public function saveArticle(){
		$sql = 'INSERT INTO articles(titre, contenu, id_categorie) VALUES (:t, :c, :id_c)';

		$bdd = new BDD();
		$co = $bdd->connexion();
		$req = $co->prepare($sql);
		$req->execute([
			't' => $this->getTitre(),
            'c' => $this->getContenu(),
            'id_c' => $this->getCategorieId()
		]);

		return $req->rowCount();
	}
}