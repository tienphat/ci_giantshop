<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class User extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('backend/Muser');
        $this->data['folder'] = 'user';
    }

    function login() {
        $this->form_validation->set_rules('username', 'Username', 'required');
        $this->form_validation->set_rules('password', 'Password', 'required');
        if ($this->form_validation->run() == TRUE) {
            $username = $_POST['username'];
            $password = sha1($_POST['password']);
            if ($this->Muser->user_login($username, $password) != FALSE) {
                $row = $this->Muser->user_login($username, $password);
                $this->session->set_userdata('user_admin', $row['username']);
                $this->session->set_userdata('fullname', $row['fullname']);
                $this->session->set_userdata('access', $row['access']);
                redirect('admin', 'refresh');
            } else {
                $data['error'] = "Tên đăng nhập hoặc mật khẩu không đúng!";
                $this->load->view('backend/pages/user/login', $data);
            }
        } else {
            $this->load->view('backend/pages/user/login');
        }
    }

    public function logout() {
        $this->session->sess_destroy();
        redirect('admin', 'refresh');
    }
    public function view() {
        //Load thu vien Pagination Class
        $this->load->library('pagination');
        //======= Pagination =======
        $config['base_url'] = 'admin/user/view';
        $config['total_rows'] = $this->Muser->count_all();
        $config['per_page'] = 10;
        $config['num_links'] = 5; //Tong so link truoc va sau link hien tai
        $limit = $config['per_page'];
        $first = $this->uri->segment(4);

        //Khoi tao phan trang
        $pagination = $this->pagination->initialize($config);
        //======= End Pagination =======

        $this->data['links'] = $this->pagination->create_links();
        $this->data['list'] = $this->Muser->user_all($limit, $first);

        $this->data['view'] = 'view';
        $this->load->view('backend/layout', $this->data);
    }

    public function do_delete() {
        // Pagination
        $this->load->library('pagination');

        $config['base_url'] = 'admin/user/view';
        $config['total_rows'] = $this->Muser->count_all();
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
                $query = $this->Muser->user_delete($value);
            }
        } else if (is_numeric($id)) {
            $query = $this->Muser->user_delete($id);
        }
        $result = $this->Muser->user_all($limit, $first);
        print_r(json_encode($result));
    }
}
