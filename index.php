<?php
include './CheckCookie.php';
$cookie_name = "bookshop_user";
$mo = "";
if (isset($_COOKIE[$cookie_name])) {

    $mo = chk_cookie($_COOKIE[$cookie_name]);

    if ($mo == "ok") {
        // header('Location: ' . "home.php");
        // exit();
    }
} else {
    header('Location: ' . "auth.php");
    exit();
}


// -----------------------
include 'head_res.php';
if (isset($_GET['url'])) {

    if ($_GET['url'] == "new_user") {
        include_once './new_user.php';
    }
    if ($_GET['url'] == "user_p") {
        include_once './user_permission.php';
    }
    if ($_GET['url'] == "change_password") {
        include_once './change_password.php';
    }


    // if ($_GET['url'] == "registration"){
    //   include 'm_registration.php';
    // }

    if ($_GET['url'] == "system_info") {
        include 'sys_info.php';
    }

    if ($_GET['url'] == "category") {
        include 'm_category.php';
    }

    if ($_GET['url'] == "sub_category") {
        include 'm_sub_category.php';
    }

    if ($_GET['url'] == "") {
        include 'dashboard.php';
    }

} else {
    include 'dashboard.php';
}

include 'foot_res.php'; ?>
