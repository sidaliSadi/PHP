<?php

require_once 'categorieManager.php';

if(!isset($_POST['nom']) && !empty($_POST['nom'])){
	echo 'Veuillez renseigner un nom de catégorie';
}else{
	// Création de l'objet
	$c = new categorieManager();
	$c->setNom($_POST['nom']);
	// Sauvegarde
	if($c->save() > 0){
		echo "<p>Categorie sauvegardée</p>";
	}
	else{
		echo "<p>Une erreur est survenue</p>";
	}
}