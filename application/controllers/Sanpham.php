<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Sanpham extends CI_Controller {

    public function __construct() {
        parent:: __construct();
        $this->load->model('frontend/Mmenu');
        $this->load->model('frontend/Mproduct');
        $this->load->model('frontend/Mcategory');
        $this->data['mainmenu'] = $this->Mmenu->menu_level_parentid(1, 0);
        $this->data['folder'] = 'sanpham';

    }

    public function index() {
        //Load thu vien Pagination Class
        $this->load->library('pagination');
        //======= Pagination =======
        $config['base_url'] = 'san-pham';
        $config['total_rows'] = $this->Mproduct->count_all();
        $config['per_page'] = 12;
        $config['num_links'] = 10; //Tong so link truoc va sau link hien tai
        $limit = $config['per_page'];
        $first = $this->uri->segment(2);

        //Khoi tao phan trang
        $pagination = $this->pagination->initialize($config);
        //======= End Pagination =======

        $this->data['links'] = $this->pagination->create_links();

        $this->data['list'] = $this->Mproduct->product_all($limit, $first);
        $this->data['view'] = 'default';
        $this->load->view('index', $this->data);
    }

    public function search_product() {
        header('Content-Type: application/json');
        $keyword = isset($_POST["keyword"]) ? $_POST["keyword"] : "";
        $result = $this->Mproduct->all_product($keyword);
        echo json_encode($result);
    }

    public function mua_hang() {
//        session_start();
        $id = isset($_POST["id"]) ? $_POST["id"] : "";
        if (isset($_SESSION["giohang"]) && is_array($_SESSION["giohang"])) {
            $count = count($_SESSION["giohang"]);
            $flag = false;
            for ($i = 0; $i < $count; $i++) {
                if ($_SESSION["giohang"][$i]["id"] == $id) {
                    $_SESSION["giohang"][$i]["number"]+=1;
                    $flag = true;
                    break;
                }
            }
            if ($flag == false) {
                $_SESSION["giohang"][$count]["id"] = $id;
                $_SESSION["giohang"][$count]["number"] = 1;
            }
        } else {
            $_SESSION["giohang"] = array();
            $_SESSION["giohang"][0]["id"] = $id;
            $_SESSION["giohang"][0]["number"] = 1;
        }
//        session_destroy();
        echo json_encode($_SESSION["giohang"]);
    }

    public function category() {
        $url = explode('/', uri_string());
        //Tra ve ten category
        $catlink = $url[1];
        //Tra ve id category
        $catid = $this->Mcategory->category_id($catlink);
        $cat[] = $catid;
        if ($this->Mcategory->category_parentid($catid) != false) {
            $chude = $this->Mcategory->category_parentid($catid);
            foreach ($chude as $key) {
                $cat[] = $key['id'];
            }
        }
        //Load thu vien Pagination Class
        $this->load->library('pagination');
        //======= Pagination =======
        $config['base_url'] = 'san-pham/' . $catlink;
        $config['total_rows'] = $this->Mproduct->product_category_all($cat);
        $config['per_page'] = 8;
        $limit = $config['per_page'];
        $first = $this->uri->segment(3);

        //Khoi tao phan trang
        $pagination = $this->pagination->initialize($config);
        //======= End Pagination =======

        $this->data['links'] = $this->pagination->create_links();

        $this->data['list'] = $this->Mproduct->product_category($cat, $limit, $first);

        $this->data['view'] = 'category';
        $this->load->view('index', $this->data);
    }

    public function detail() {
        $alias = uri_string();
        $this->data['row'] = $this->Mproduct->product_detail($alias);
        $this->data['view'] = 'detail';
        $this->load->view('index', $this->data);
    }

}
