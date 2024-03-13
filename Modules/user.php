<?php
//
//function user()
//{
//    global $pdo;
//    $userData = isset($_SESSION['user']) ? $_SESSION['user'] : null;
//
//    if ($userData) {
//        $user_id = $userData->id;
//
//        $query = $pdo->prepare("SELECT * FROM user WHERE id = :id");
//        $query->bindParam(':id', $user_id, PDO::PARAM_INT);
//        $query->execute();
//        $result = $query->fetch(PDO::FETCH_ASSOC);
//
//        if ($result) {
//
//        }
//    }
//}
//
//function edit()
//{
//    global $pdo;
//    $userData = isset($_SESSION['user']) ? $_SESSION['user'] : null;
//    if ($userData) {
//        $user_id = $userData->id;
//
//        $query = $pdo->prepare("SELECT * FROM user WHERE id = :id");
//        $query->bindParam(':id', $user_id, PDO::PARAM_INT);
//        $query->execute();
//        $result = $query->fetch(PDO::FETCH_ASSOC);
//
//        if ($result) {
//            //hier gaat die updaten
//            if (isset($_POST['verzenden'])) {
//                $email = filter_input(INPUT_POST, 'email');
//                $password = filter_input(INPUT_POST, 'password');
//                $first_name = filter_input(INPUT_POST, 'first_name');
//                $last_name = filter_input(INPUT_POST, 'last_name');
//
//                // Update user details in the database
//                $query = $pdo->prepare("UPDATE user SET email=:email, password=:password, first_name=:first_name, last_name=:last_name WHERE id=:id");
//                $query->bindParam(":email", $email);
//                $query->bindParam(":password", $password);
//                $query->bindParam(":first_name", $first_name);
//                $query->bindParam(":last_name", $last_name);
//                $query->bindParam(":id", $user_id);
//
//                $query->execute();
//                header('Location: user');
//                exit;
//            }
//        }
//    }
//}
