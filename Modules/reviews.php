<?php
function getReviews($id)
{
    global $pdo;
    $query = $pdo->prepare("SELECT * FROM review WHERE product_id=:id");
    $query->bindParam(':id', $id);
    $query->execute();
    return $query->fetchAll(PDO::FETCH_ASSOC);
}

function setReview($id)
{
    if (isset($_POST['verzenden'])) {
        $name = filter_input(INPUT_POST, 'name');
        $subject = filter_input(INPUT_POST, 'subject');
        $text = filter_input(INPUT_POST, 'text');
        $rating = filter_input(INPUT_POST, 'rating', FILTER_VALIDATE_INT, array('options' => array('min_range' => 0, 'max_range' => 5)));

        if (empty($name) || empty($subject) || empty($text) || !$rating) {
            return  "Vul alle velden in en geef een geldige beoordeling (0-5 sterren).";
        } else {
            global $pdo;
            $query = $pdo->prepare("INSERT INTO review (name, subject, text, rating, product_id) VALUES(:name, :subject, :text, :rating, :product_id)");
            $query->bindParam(":name", $name);
            $query->bindParam(":subject", $subject);
            $query->bindParam(":text", $text);
            $query->bindParam(":rating", $rating);
            $query->bindParam(":product_id", $id);
            $query->execute();
            return 'Review gemaakt';
        }
    }
}