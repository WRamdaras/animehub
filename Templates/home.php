<!DOCTYPE html>
<html>
    <?php
    include_once('defaults/head.php');
    ?>
    <body class="bg-black text-light">
        <div class="container bg-black">
            <?php
            include_once ('defaults/header.php');
            include_once ('defaults/menu.php');
            include_once ('defaults/pictures.php');
            ?>
            <?php if(!empty($message)): ?>
                <div class="alert alert-success" role="alert">
                    <?=$message?>
                </div>
            <?php endif;?>
            <h4>AnimeHub</h4>
            Bij AnimeHub geloven we in het verbinden van anime-liefhebbers met de beste content die deze boeiende kunstvorm te bieden heeft.
            Dompel jezelf onder in de rijke verhalen, levendige personages en visueel verbluffende animaties die anime zo geliefd maken over de hele wereld.
            Ontdek jouw favoriete genres en laat AnimeHub je gids zijn in de uitgestrekte wereld van anime-entertainment. Welkom bij de ultieme anime-ervaring, welkom bij AnimeHub!
            <hr>
            <?php
            include_once ('defaults/footer.php');
            ?>
        </div>
    </body>
</html>
