<?php
global $params;

//check if user has role admin
if (!isAdmin()) {
    logout();
    header ("location:/home");
} else {
/* $params[2] is de action
   $params[3] is een getal die de delete action nodig heeft
*/
    switch ($params[2]) {

        case 'home':
            include_once ('../Templates/admin/home.php');
            break;


        case 'products':
            break;

        case 'add':
            include_once "../Templates/admin/add-anime.php";
            break;

        case 'delete':
            include_once "../Templates/admin/delete-anime.php";
            break;

        case 'contact':
            $titleSuffix = ' | Contact';
            include_once "../Templates/admin/contact.php";
            break;

        case 'categories':
            //adds " | Categories:" to the title
            $titleSuffix = ' | Categories';
            /*
             * calls the function getCategories from categories.php in the modules folder.
             * check categories.php for more information.
             */
            $categories = getCategories();
            //var_dump($categories);die;

            /*
             * includes the template categories.php from the templates folder.
             * check categories.php for more information.
             */
            include_once "../Templates/admin/categories.php";
            break;
            break;

        case 'category':
            $animes = getProductsFromCategory($params[3]);
            include_once "../Templates/admin/animes.php";
            break;
            break;

        case 'review':
            $reviews = getReviews($params[3]);
            $anime=getAnime($params[3]);
            include_once '../Templates/admin/review.php';
            break;

        default:
            break;
    }
}