<?php

require_once 'articleManager.php';
//recuperer lid de la categorie passé dans lurl
$categorieId = htmlspecialchars($_GET["id"]);

if(!isset($_POST['titre']) && !empty($_POST['titre']) && !isset($_POST['contenu']) && !empty($_POST['contenu'])){
	echo 'Veuillez renseigner tout les champs !';
}else{
	// Création d'un article'
	$a = new articleManager();
	$a->setTitre($_POST['titre']);
    $a->setContenu($_POST['contenu']);
    $a->setCategorieId($categorieId);
	// On insere l'article dans la BDD
	if($a->saveArticle() > 0){
		echo "<p>Article inseré</p>";
	}
	else{
		echo "<p>Une erreur est survenue lors de l'insertion de larticle</p>";
	}
}