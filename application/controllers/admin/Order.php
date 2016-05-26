<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Order extends CI_Controller {

    public function __construct() {
        parent::__construct();
        if (!$this->session->userdata('user_admin')) {
            redirect('admin/user/login', 'refresh');
        }
        $this->load->model("backend/Morder");
        $this->data['folder'] = 'order';
    }

    public function view() {
        //Load thu vien Pagination Class
        $this->load->library('pagination');
        //======= Pagination =======
        $config['base_url'] = 'admin/order/view';
        $config['total_rows'] = $this->Morder->count_all();
        $config['per_page'] = 10;
        $config['num_links'] = 5; //Tong so link truoc va sau link hien tai
        $limit = $config['per_page'];
        $first = $this->uri->segment(4);

        //Khoi tao phan trang
        $pagination = $this->pagination->initialize($config);
        //======= End Pagination =======

        $this->data['links'] = $this->pagination->create_links();
        $this->data['list'] = $this->Morder->order_all($limit, $first);

        $this->data['view'] = 'view';
        $this->load->view('backend/layout', $this->data);
    }

}

/* End of file Order.php */
/* Location: ./application/models/Order.php */