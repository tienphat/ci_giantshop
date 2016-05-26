<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Members extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('backend/Mmembers');
        $this->data['folder'] = 'members';
    }

    public function view() {
        //Load thu vien Pagination Class
        $this->load->library('pagination');
        //======= Pagination =======
        $config['base_url'] = 'admin/members/view';
        $config['total_rows'] = $this->Mmembers->count_all();
        $config['per_page'] = 10;
        $config['num_links'] = 5; //Tong so link truoc va sau link hien tai
        $limit = $config['per_page'];
        $first = $this->uri->segment(4);

        //Khoi tao phan trang
        $pagination = $this->pagination->initialize($config);
        //======= End Pagination =======

        $this->data['links'] = $this->pagination->create_links();
        $this->data['list'] = $this->Mmembers->members_all($limit, $first);

        $this->data['view'] = 'view';
        $this->load->view('backend/layout', $this->data);
    }
    public function do_delete() {
        // Pagination
        $this->load->library('pagination');

        $config['base_url'] = 'admin/members/view';
        $config['total_rows'] = $this->Mmembers->count_all();
        $config['per_page'] = 20;
        $config['num_links'] = 10;
        $limit = $config['per_page'];
        $first = $this->uri->segment(4);

        $pagination = $this->pagination->initialize($config);
        //======= End Pagination =======

        $this->data['links'] = $this->pagination->create_links();

        //xu ly delete
        $id = isset($_POST['id']) ? $_POST['id'] : '';

        //xu ly delete
        if (is_array($id)) {
            foreach ($id as $value) {
                $query = $this->Mmembers->members_delete($value);
            }
        } else if (is_numeric($id)) {
            $query = $this->Mmembers->members_delete($id);
        }
        $result = $this->Mmembers->members_all($limit, $first);
        print_r(json_encode($result));
    }

}
