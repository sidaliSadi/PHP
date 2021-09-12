<?php
    require_once 'articleManager.php';
    require_once 'commentaireManager.php';

   
    
    //on recupere l'id de l'article passé en parametres
    $id_article = htmlspecialchars($_GET["id_article"]);

    //on recupere les commentaires d'un article donné $id_article
    $commentaires = commentaireManager::findCommentaires($id_article);

    //on recupere l'article dans notre base de données
    $article = articleManager::findArticle($id_article);

    foreach ($article as $a){
        echo '<strong>Titre</strong> : ' .$a->titre;
        $titre = $a->titre;
        $contenu = $a->contenu;
    }
    
?>

<!DOCTYPE html>
<html>
    <head>
    <title><?php $titre ?></title>
    </head>

    <body>
        

    <table>
        <th>Contenu</th>
        <tr>
            <td><?php echo $contenu ?></td>
        </tr>
    </table>
    <p>Le nombre total de commentaires est : <?php echo count($commentaires); ?></p>

    <?php
            foreach ($commentaires as $c) { ?>
            <tr>
                <td> <?php echo "<strong>".$c->datee.":   </strong>"; ?> </td>
                
                <td> <?php echo $c->commentaire; ?> </td>
                <br><br>
            </tr>
    <?php } ?>

    <h4>Ajouter un commentaire<h4>
    <form <?php echo "action=ajoutCommentaire.php?id_article=".$id_article; ?> method="POST">
        <label for="commentaire">Commentaire :</label>

        <textarea id="commentaire" name="commentaire"
                rows="5" cols="30">
        </textarea>
        <br>
		<input type="submit" name="ajouter" value="Ajouter">
	</form>

    </body>
</html> 