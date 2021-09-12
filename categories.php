<?php
require_once 'categorieManager.php';

$categories = categorieManager::findAll();

echo "<p>Nombre de catégories : ".count($categories)."</p>";

?>

<!DOCTYPE html>
<html>
    <head>
    <title>Categories</title>
    </head>

    <body>

    <table>
        <th>La catégorie</th>
        <tr>
            <?php
                foreach ($categories as $cat) { ?>
                <tr>
                <td> <?php echo "<a href=http://localhost:81/blog/articles.php?id=".$cat->id.">".$cat->nom."</a>"; ?> </td>
                </tr>
            <?php } ?>
        </tr>
    </table>

    <h3>Ajout d'une categorie<h3>
    <form action="ajoutCategorie.php" method="POST">
		<label for="nom">Nom de la catégorie : </label>
		<input type="text" name="nom" id="nom">
		<br>
		<input type="submit" name="ajouter" value="Ajouter">
	</form>

    </body>
</html> 