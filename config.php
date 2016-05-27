<?php

define('SITE_ROOT', '/project/ci_giantshop/');

if (!preg_match('/^http:/', SITE_ROOT) OR ! preg_match('/^https:/', SITE_ROOT)) {
    if (empty($_SERVER['HTTPS'])) {
        define('FULL_SITE_ROOT', 'http://' . $_SERVER['HTTP_HOST'] . SITE_ROOT);
    } else {
        define('FULL_SITE_ROOT', 'https://' . $_SERVER['HTTP_HOST'] . SITE_ROOT);
    }
} else {
    define('FULL_SITE_ROOT', SITE_ROOT);
}
define('CI_BASE_URL', SITE_ROOT);

