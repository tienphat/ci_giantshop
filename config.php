<?php

define('CI_BASE_URL', '/ci_giantshop/');
$v_debug = 0;
if (isset($_REQUEST['debug'])) {
    $v_debug = 999;
}
define('DEBUG_MODE', $v_debug);

//Duong dan dia chi goc
//          o   /virtual-directory/: Chay bang thu muc ao (Virtual Directory)
//          o   /                  : Chay bang domain

//KHONG DIEU CHINH cac tham so duoi day
if (defined('CLI') == false)
{
    if (!preg_match('/^http:/', CI_BASE_URL) OR !preg_match('/^https:/', CI_BASE_URL))
    {
        if (empty($_SERVER['HTTPS']))
        {
            define('FULL_SITE_ROOT','http://' . $_SERVER['HTTP_HOST'] . CI_BASE_URL);
        }
        else
        {
            define('FULL_SITE_ROOT','https://' . $_SERVER['HTTP_HOST'] . CI_BASE_URL);
        }
    }
    else
    {
        define('FULL_SITE_ROOT', CI_BASE_URL);
    }
}
?>
