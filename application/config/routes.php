<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'Trangchu';
$route['admin'] = 'admin/Control';

$route['trang-chu'] = 'Trangchu';

$route['san-pham'] = 'Sanpham';
$route['lien-he'] = 'Lienhe';
$route['lien-he'] = 'Lienhe';
$route['gioi-thieu'] = 'Gioithieu';

$route['dich-vu'] = 'Dichvu';
$route['dich-vu/(:num)'] = 'Dichvu/index/$1';
$route['dich-vu/(:any)'] = 'Dichvu/detail';

$route['tin-tuc'] = 'Tintuc';
$route['tin-tuc/(:num)'] = 'Tintuc/index/$1';
$route['tin-tuc/(:any)'] = 'Tintuc/detail';

$route['san-pham/(:num)'] = 'Sanpham/index/$1';
$route['san-pham/(:any)'] = 'Sanpham/category';
$route['san-pham/(:any)/(:num)'] = 'Sanpham/category/$1';
$route['(:any)'] = 'Sanpham/detail';

$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
