<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Dichvu extends CI_Controller {

    public function __construct() {
        parent:: __construct();
        $this->load->model('frontend/Mmenu');
        $this->load->model('frontend/Mcontent');
        $this->load->model('frontend/Mcategory');
        $this->data['mainmenu'] = $this->Mmenu->menu_level_parentid(1, 0);
        $this->data['folder'] = 'dichvu';
    }

    public function index() {
        $url = explode('/', uri_string());
        $catlink = $url[0];
        $catid = $this->Mcategory->category_id($catlink);

        $this->load->library('pagination');
//Phan trang
        $config['base_url'] = base_url('/dich-vu');
        $config['total_rows'] = $this->Mcontent->content_count($catid);
        $config['per_page'] = 5;
        $limit = $config['per_page'] = 5;
        $first = $this->uri->segment(2);

        $pagination = $this->pagination->initialize($config);

        $this->data['links'] = $this->pagination->create_links();

//Day du lieu ra view

        $this->data['list'] = $this->Mcontent->content_dichvu($catid, $limit, $first);
        $this->data['view'] = 'default';
        $this->load->view('frontend/index', $this->data);
    }

    public function detail() {
        $url = explode('/', uri_string());
        $alias = $url[1];

        $catlink = $url[0];
        $this->data['category'] = $catlink;

        $this->data['row'] = $this->Mcontent->content_detail($alias);
        $this->data['view'] = 'detail';
        $this->load->view('index', $this->data);
    }

}
