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
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Contactinformatie</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 20px;
            }
        </style>
    </head>
    <body>

    <h2>Contactinformatie</h2>

    <?php
    // Informatie over de contactpersoon
    $bedrijfsNaam = "AnimeHUB";
    $contactPersoon = "Randy";
    $emailAdres = "AnimeHUB@gmail.com";
    $telefoonNummer = "+31 123 456 789";
    $locatie = "Rocmondriaan Brasserskade";

    // Weergave van contactinformatie
    echo "<p>Welkom bij $bedrijfsNaam!</p>";
    echo "<p>Heeft u vragen? Neem gerust contact op met $contactPersoon.</p>";
    echo "<p>Stuur een e-mail naar: <a href='mailto:$emailAdres'>$emailAdres</a></p>";
    echo "<p>Bel ons op: $telefoonNummer</p>";
    echo "<p>We zijn gevestigd op: $locatie</p>";
    ?>

    </body>
    </html>
    <hr>
    <?php
    include_once ('defaults/footer.php');
    ?>
</div>
</body>
</html>