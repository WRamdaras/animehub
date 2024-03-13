<!DOCTYPE html>
<html>
<?php
include_once('defaults/head.php');
?>
<body>
<style>
    /* Add your custom styles here */
    .rating {
        color: #FFD700; /* Set star color to gold */
    }
</style>
<div class="container">
    <?php
    include_once ('defaults/header.php');
    include_once ('defaults/menu.php');
    include_once ('defaults/pictures.php');
    ?>

    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <a href="/member/categories" class="btn btn-primary">Terug</a>
        </ol>
    </nav>

<div class="container mt-4">
    <h2 class="text-white">Reviews</h2>

    <div class="row">
        <?php global $anime?>
        <div class="card mb-3 review-img">
            <img src="/img/<?= $anime->image?>" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title"><?= $anime->name ?></h5>
            </div>
        </div>
    </div>

    <?php
    global $reviews;
    ?>

        <div class="row">
            <?php foreach ($reviews as $row): ?>
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title"> <?=$row['name']?></h5>

                            <p class="card-text"> <?=$row['subject']?></p>
                            <p class="card-text"> <?=$row['text']?></p>
                            <p class="card-text"> <?= displayStars($row['rating']) ?></p>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>


        <?php


    function displayStars($rating) {
        $stars = '';
        for ($i = 1; $i <= 5; $i++) {
            $class = ($i <= $rating) ? 'rating' : 'text-muted'; // Color stars based on rating
            $stars .= '<span class="' . $class . '">&#9733;</span>';
        }
        return $stars;
    }
    ?>

</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
