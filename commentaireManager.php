<?php

require_once 'BDD.php';
require_once 'commentaire.php';

class commentaireManager extends commentaire{
	//retourne la liste des commentaires liés à un article
    public static function findCommentaires($id_art){
		$sql = 'SELECT * FROM commentaires WHERE id_article = :identifiant';
		$bdd = new BDD();
		$co = $bdd->connexion();
		$req = $co->prepare($sql);
		$req->execute([
			'identifiant' => $id_art
		]);

		return $req->fetchAll(PDO::FETCH_OBJ);
	}

	//sauvegarder un commentaire

    public function saveCommentaire(){
		$sql = 'INSERT INTO commentaires(datee, commentaire, id_article) VALUES (:d, :c, :id_a)';

		$bdd = new BDD();
		$co = $bdd->connexion();
		$req = $co->prepare($sql);
		$req->execute([
			'd' => $this->getDate(),
            'c' => $this->getCommentaire(),
            'id_a' => $this->getArticleId() 
		]);

		return $req->rowCount();
	}
}