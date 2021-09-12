<?php
    require_once 'articleManager.php';
    require_once 'categorieManager.php';

   
    
    //on recupere l'id de la categorie passé en parametres
    $id = htmlspecialchars($_GET["id"]);

    //on cherche les articles de cette categorie
    $articles = articleManager::findArticles($id);

    //on affiche la categorie pour que lutilisateur sache ou il est
    $categorie = categorieManager::findCategorie($id);
    foreach ($categorie as $ca){
        echo 'la categorie est : ' .$ca->nom;
    }
    
    //ici on affiche le nombre d'articles qu'il ya dans la categorie
    echo "<p>Nombre d'articles est : ".count($articles)."</p>";
?>

<!DOCTYPE html>
<html>
    <head>
    <title>Articles</title>
    <style>
        label,
textarea {
    font-size: .8rem;
    letter-spacing: 1px;
}
textarea {
    padding: 10px;
    max-width: 100%;
    line-height: 1.5;
    border-radius: 5px;
    border: 1px solid #ccc;
    box-shadow: 1px 1px 1px #999;
}

label {
    display: block;
    margin-bottom: 10px;
}

    </style>
    </head>

    <body>

    <table>
        <th>La liste des articles</th>
        <tr>
            <?php
                foreach ($articles as $a) { ?>
                <tr>
                <td> <?php echo "<a href=http://localhost:81/blog/affiche.php?id_article=".$a->id_article.">".$a->titre."</a>"; ?> </td>
                </tr>
            <?php } ?>
        </tr>
    </table>

    <h3>Ajout d'un article<h3>
    <form <?php echo "action=ajoutArticle.php?id=".$id; ?> method="POST">
		<label for="nom">titre de l'article : </label>
		<input type="text" name="titre" id="titre">
		<br>
        <label for="contenu">Contenu de l'article:</label>

        <textarea id="story" name="contenu"
                rows="10" cols="40">
        c'est ici qu'il faut ecrire l'article...
        </textarea>
        <br>
		<input type="submit" name="ajouter" value="Ajouter">
	</form>

    </body>
</html> 