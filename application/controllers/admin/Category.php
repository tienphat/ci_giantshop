<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Category extends CI_Controller {

    public function __construct() {
        parent::__construct();
        if (!$this->session->userdata('user_admin')) {
            redirect('admin/user/login', 'refresh');
        }
        $this->load->model('backend/Mcategory');
        $this->data['count'] = $this->Mcategory->count_trash_all();
        $this->data['folder'] = 'category';
    }

    #Quan ly chu de

    public function view() {
        //Load thu vien Pagination Class
        $this->load->library('pagination');
        //======= Pagination =======
        $config['base_url'] = 'admin/category/view';
        $config['total_rows'] = $this->Mcategory->count_all();
        $config['per_page'] = 20;
        $config['num_links'] = 10; //Tong so link truoc va sau link hien tai
        $limit = $config['per_page'];
        $first = $this->uri->segment(4);

        //Khoi tao phan trang
        $pagination = $this->pagination->initialize($config);
        //======= End Pagination =======

        $this->data['links'] = $this->pagination->create_links();

        $this->data['list'] = $this->Mcategory->category_all($limit, $first);
        $this->data['view'] = 'view';
        $this->load->view('backend/layout', $this->data);
    }

    public function insert() {
        $d = getdate();
        $today = $d['year'] . "-" . $d['mon'] . "-" . $d['mday'] . " " . $d['hours'] . ":" . $d['minutes'] . ":" . $d['seconds'];
        $this->load->library('form_validation');
        $this->form_validation->set_rules('title', 'Tên chủ đề', 'trim|required');
        $this->form_validation->set_rules('link', 'Liên kết', 'trim|required');
        if ($this->form_validation->run() == TRUE) {
            $mydata = array(
                'title' => $_POST['title'],
                'link' => $_POST['link'],
                'access' => $_POST['access'],
                'trash' => 1,
                'status' => $_POST['status'],
                'type' => $_POST['type'],
                'created' => $today,
                'created_by' => $this->session->userdata('fullname'),
                'modified' => $today,
                'modified_by' => $this->session->userdata('fullname'),
            );
            $id = $_POST['parentid'];
            if ($id == 0) {
                $mydata['level'] = 1;
                $mydata['parentid'] = $id;
            } else {
                $row = $this->Mcategory->category_detail($id);
                $mydata['level'] = $row['level'] + 1;
                $mydata['type'] = $row['type'];
                $mydata['parentid'] = $id;
            }
            $this->Mcategory->category_insert($mydata);
            redirect('admin/category/view');
        } else {
            $this->data['view'] = 'insert';
            $this->load->view('backend/layout', $this->data);
        }
    }

    public function delete($id) {
        $this->Mcategory->category_delete($id);
        redirect('admin/category/recyclebin', 'refresh');
    }

    public function show_update() {
        header('Content-Type: application/json');
        $id = isset($_POST["id"]) ? $_POST["id"] : "";
        $result = $this->Mcategory->category_detail($id);
        echo json_encode($result);
    }

    public function parent_id() {
        header('Content-Type: application/json');
        $id = isset($_POST["id"]) ? $_POST["id"] : "";
        $result = $this->Mcategory->category_list();
        echo json_encode($result);
    }

    public function update() {
        //Lay data
        $id = isset($_POST['id']) ? $_POST['id'] : "";
        $title = isset($_POST['title']) ? $_POST['title'] : "";
        $link = isset($_POST['link']) ? $_POST['link'] : "";
        $type = isset($_POST['type']) ? $_POST['type'] : "";
        $parent_id = isset($_POST['parent_id']) ? $_POST['parent_id'] : "";
        $access = isset($_POST['access']) ? $_POST['access'] : "";
        $status = isset($_POST['status']) ? $_POST['status'] : "";
        $d = getdate();
        $today = $d['year'] . "-" . $d['mon'] . "-" . $d['mday'] . " " . $d['hours'] . ":" . $d['minutes'] . ":" . $d['seconds'];
        $mydata = array(
            'title' => $title,
            'link' => $link,
            'access' => $access,
            'trash' => 1,
            'status' => $status,
            'type' => $type,
            'modified' => $today,
            'modified_by' => $this->session->userdata('fullname'),
        );

        $idtmp = $parent_id;
        if ($idtmp == 0) {
            $mydata['level'] = 1;
            $mydata['parentid'] = $idtmp;
        } else {
            $row = $this->Mcategory->category_detail($idtmp);
            $mydata['level'] = $row['level'] + 1;
            $mydata['type'] = $row['type'];
            $mydata['parentid'] = $idtmp;
        }
        $query = $this->Mcategory->category_update($mydata, $id);
        if ($query)
            echo "1";
        else
            echo "0";
    }

    public function status() {
        $id = isset($_POST['id']) ? $_POST['id'] : '';
        $row = $this->Mcategory->category_detail($id);
        $status = ($row['status'] == 1) ? 0 : 1;
        $mydata = array('status' => $status);
        $this->Mcategory->category_update($mydata, $id);
        $result = $this->Mcategory->category_detail($id);
        print_r($result["status"]);
    }

    public function trash($id) {
        $mydata = array('trash' => 0);
        $this->Mcategory->category_update($mydata, $id);
        redirect('admin/category/view', 'refresh');
    }

    public function restore($id) {
        $mydata = array('trash' => 1);
        $this->Mcategory->category_update($mydata, $id);
        redirect('admin/category/recyclebin', 'refresh');
    }

    public function do_delete() {
        // Pagination
        $this->load->library('pagination');

        $config['base_url'] = 'admin/category/view';
        $config['total_rows'] = $this->Mcategory->count_all();
        $config['per_page'] = 20;
        $config['num_links'] = 10;
        $limit = $config['per_page'];
        $first = $this->uri->segment(4);

        $pagination = $this->pagination->initialize($config);
        //======= End Pagination =======

        $this->data['links'] = $this->pagination->create_links();

        $id = isset($_POST['id']) ? $_POST['id'] : '';
        //xu ly delete

        if (is_array($id)) {
            foreach ($id as $value) {
                $this->Mcategory->category_delete($value);
            }
        } else if (is_numeric($id)) {
            $this->Mcategory->category_delete($id);
        }
        $result = $this->Mcategory->category_all($limit, $first);
        print_r(json_encode($result));
    }

}
