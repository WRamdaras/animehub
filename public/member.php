<?php
global $params;
//$params[2] is de action en $params[3] een getal die de action nodig heeft
//check if user has role admin
if (!isMember()) {
    logout();
    header ("location:/home");
} else {

    switch ($params[2]) {

        case 'home':
            include_once ('../Templates/member/home.php');
            break;

        case 'products':
            break;
        case 'profile':
            break;
//        case 'editprofile':
//            break;
        case 'changepassword':
            break;

        case 'edit-profile':
            include_once '../Templates/member/edit-profile.php';
            break;
        case 'user':
            include_once '../Templates/member/user.php';
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
            include_once "../Templates/member/categories.php";
            break;
            break;

        case 'category':
            $animes = getProductsFromCategory($params[3]);
            include_once "../Templates/member/animes.php";
            break;

        case 'contact':
            $titleSuffix = ' | Contact';
            include_once "../Templates/member/contact.php";
            break;

        case 'product':
            break;

        case 'review':
            $message = setReview($params[3]);
            $reviews = getReviews($params[3]);
            $anime=getAnime($params[3]);
            include_once '../Templates/member/review.php';
            include_once '../Templates/member/insert-review.php';
            break;



        default:
            break;
    }
}