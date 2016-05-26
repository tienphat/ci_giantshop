<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Trangchu extends CI_Controller {

    public function __construct() {
        parent:: __construct();
        $this->load->model('frontend/Mmenu');
        $this->load->model('frontend/Mproduct');
        $this->load->model('frontend/Mmembers');
        $this->data['mainmenu'] = $this->Mmenu->menu_level_parentid(1, 0);
        $this->data['folder'] = 'trangchu';
    }

    public function index() {

        $ses = $this->session->userdata('is_logged');
        if ($ses) {
            $data['user'] = $ses['username'];
        }

        $limit = 12;
        $this->data['list'] = $this->Mproduct->product_home($limit);
        $this->data['view'] = 'default';
        $this->load->view('frontend/index', $this->data);
    }

    public function signup_email() {
        $email = isset($_POST["email"]) ? $_POST["email"] : "";
        $mydata = array(
            'email' => $email,
        );
        $query = $this->db->insert("ci_email", $mydata);
        if ($query)
            echo "1";
        else
            echo "0";
    }

    public function sign_in() {
        $username = isset($_POST["user"]) ? $_POST["user"] : "";
        $password = isset($_POST["pass"]) ? $_POST["pass"] : "";
        $row = $this->Mmembers->validate_login($username, $password);
        if ($row) {
            $this->session->set_userdata('user', $row['username']);
            $this->session->set_userdata('name', $row['name']);
            $this->session->set_userdata('access', $row['access']);
            echo "1";

        } else {
            echo "0";
        }
    }

}
