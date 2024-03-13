<?php
function getProductsFromCategory($id)
{
    global $pdo;
    $query = $pdo-> prepare('SELECT * FROM anime WHERE category_id = :id');
    $query->bindParam('id', $id);
    $query->execute();
    $animes = $query->fetchAll(PDO::FETCH_CLASS, 'Anime');
    return $animes;
}

function getAnime($id)
{
    global $pdo;
    $query =$pdo->prepare('SELECT * FROM anime WHERE id = :id');
    $query->bindParam('id',$id);
    $query->execute();
    $query->setFetchMode(PDO::FETCH_CLASS,'Anime');
    $animes = $query->fetch();
    return $animes;
}

function addAnime()
{
    global $pdo;

}