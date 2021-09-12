<?php

require_once 'commentaireManager.php';
//recuperer lid de larticle passé dans lurl
$id_article = htmlspecialchars($_GET["id_article"]);



if(!isset($_POST['commentaire']) && !empty($_POST['commentaire'])){
	echo 'Veuillez renseigner tout les champs !';
}else{
	// Création d'un commentaire'
	$c = new commentaireManager();
	$c->setDate(date(DATE_RFC2822));
    $c->setCommentaire($_POST['commentaire']);
    $c->setArticleId($id_article);
	// On insere le commentaire dans la BDD
	if($c->saveCommentaire() > 0){
		echo "<p>commentaire inseré</p>";
	}
	else{
		echo "<p>Une erreur est survenue</p>";
	}
}