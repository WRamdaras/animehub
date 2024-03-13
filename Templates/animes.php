<!DOCTYPE html>
<html>
<?php
include_once('defaults/head.php');
?>
<body>
<div class="container">
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
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <a href="/categories" class="btn btn-primary">Terug</a>
        </ol>
    </nav>
    <div class="row">
        <?php global $animes?>
        <?php foreach ($animes as $anime):?>
            <div class="col-3">
                <div class="card" style="width: 18rem;">
                    <img src="/img/<?= $anime->image?>" class="card-img-top img-fluid" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><?= $anime->name ?></h5>
                        <p class="card-text"><?= $anime->info ?> </p>
                        <a href="/review/<?= $anime->id ?>" class="btn btn-primary">review</a>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
    <hr>
    <?php
    include_once ('defaults/footer.php');
    ?>
</div>
</body>
</html>

