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

    <?php


    try {
        global $pdo;
        $userData = isset($_SESSION['user']) ? $_SESSION['user'] : null;

        if ($userData) {
            $user_id = $userData->id;

            $query = $pdo->prepare("SELECT * FROM user WHERE id = :id");
            $query->bindParam(':id', $user_id, PDO::PARAM_INT);
            $query->execute();
            $result = $query->fetch(PDO::FETCH_ASSOC);

            if ($result) {
                ?>

    <h4><h4>Welkom admin <?= $result['first_name']  ?> bij Anime<span class="text-danger">Hub</span></h4></h4>
    Bij AnimeHub geloven we in het verbinden van anime-liefhebbers met de beste content die deze boeiende kunstvorm te bieden heeft.
    Dompel jezelf onder in de rijke verhalen, levendige personages en visueel verbluffende animaties die anime zo geliefd maken over de hele wereld.
    Ontdek jouw favoriete genres en laat AnimeHub je gids zijn in de uitgestrekte wereld van anime-entertainment. Welkom bij de ultieme anime-ervaring, welkom bij AnimeHub!
    <hr>

    <?php
            } else {
                echo "Gebruiker niet gevonden.";
            }
        } else {
            echo "Gebruiker niet ingelogd.";
        }
    } catch (PDOException $e) {
        echo "Niet gelukt: " . $e->$Message();
    }
    ?>

    <?php
    include_once ('defaults/footer.php');
    ?>
</div>
</body>
</html>
