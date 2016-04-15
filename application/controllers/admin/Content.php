<?php

    if (!defined('BASEPATH'))
        exit('No direct script access allowed');

    class Content extends CI_Controller {

        public function __construct() {
            parent::__construct();
            if (!$this->session->userdata('user_admin')) {
                redirect('admin/user/login', 'refresh');
            }
            $this->load->model("backend/Mcontent");
            $this->load->model("backend/Mcategory");
            $this->data['folder'] = 'content';
            $this->data['count'] = $this->Mcontent->count_trash_all();
        }

        public function view() {
            //Load thu vien Pagination Class
            $this->load->library('pagination');
            //======= Pagination =======
            $config['base_url'] = 'admin/content/view';
            $config['total_rows'] = $this->Mcontent->count_all();
            $config['per_page'] = 10;
            $config['num_links'] = 5; //Tong so link truoc va sau link hien tai
            $limit = $config['per_page'];
            $first = $this->uri->segment(4);

            //Khoi tao phan trang
            $pagination = $this->pagination->initialize($config);
            //======= End Pagination =======

            $this->data['links'] = $this->pagination->create_links();
            $this->data['list'] = $this->Mcontent->content_all($limit, $first);

            $this->data['view'] = 'view';
            $this->load->view('backend/layout', $this->data);
        }

        public function insert() {
            $d = getdate();
            $today = $d['year'] . "-" . $d['mon'] . "-" . $d['mday'] . " " . $d['hours'] . ":" . $d['minutes'] . ":" . $d['seconds'];
            $this->load->library('form_validation');
            $this->form_validation->set_rules('name', 'Tên sản phẩm', 'trim|required');
            $this->form_validation->set_rules('alias', 'Alias', 'trim|required');
            $this->form_validation->set_rules('catid', 'Chủ đề', 'trim|required');
            if ($this->form_validation->run() == TRUE) {
                $mydata = array(
                    'name' => $_POST['name'],
                    'alias' => $_POST['alias'],
                    'catid' => $_POST['catid'],
                    'access' => $_POST['access'],
                    'detail' => $_POST['detail'],
                    'introtext' => $_POST['introtext'],
                    'trash' => 1,
                    'number' => $_POST['number'],
                    'number_buy' => 0,
                    'price' => $_POST['price'],
                    'price_sale' => $_POST['price_sale'],
                    'status' => $_POST['status'],
                    'created' => $today,
                    'created_by' => $this->session->userdata('fullname'),
                    'modified' => $today,
                    'modified_by' => $this->session->userdata('fullname'),
                );
                #Hình ảnh sản phẩm
                $config['upload_path'] = './public/img/content';
                $config['allowed_types'] = 'gif|jpg|png';
                $this->load->library('upload', $config);
                if ($this->upload->do_upload("img")) {
                    $data = $this->upload->data();
                    $mydata['img'] = $data['file_name'];
                } else {
                    $mydata['img'] = "default.jpg";
                }
                $this->Mcontent->content_insert($mydata);
                redirect('admin/content/view');
            } else {
                $this->data['view'] = 'insert';
                $this->load->view('backend/layout', $this->data);
            }
        }

        public function delete($id) {
            $this->Mcontent->content_delete($id);
            redirect('admin/content/recyclebin', 'refresh');
        }

        public function show_update() {
            header('Content-Type: application/json');
            $id = isset($_POST["id"]) ? $_POST["id"] : "";
            $result = $this->Mcontent->content_detail($id);
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
            $alias = isset($_POST['alias']) ? $_POST['alias'] : "";
            $catid = isset($_POST['catid']) ? $_POST['catid'] : "";
            $image = isset($_POST['image']) ? $_POST['image'] : "";
            $introtext = isset($_POST['introtext']) ? $_POST['introtext'] : "";
            $fulltext = isset($_POST['fulltext']) ? $_POST['fulltext'] : "";
            $access = isset($_POST['access']) ? $_POST['access'] : "";
            $status = isset($_POST['status']) ? $_POST['status'] : "";
            $d = getdate();
            $today = $d['year'] . "-" . $d['mon'] . "-" . $d['mday'] . " " . $d['hours'] . ":" . $d['minutes'] . ":" . $d['seconds'];
            $mydata = array(
                'name' => $title,
                'alias' => $alias,
                'catid' => $catid,
                'access' => $access,
                'img' => $image,
                'detail' => $fulltext,
                'introtext' => $introtext,
                'trash' => 1,
                'status' => $status,
                'created' => $today,
                'created_by' => $this->session->userdata('fullname'),
                'modified' => $today,
                'modified_by' => $this->session->userdata('fullname'),
            );
            $query = $this->Mcontent->content_update($mydata, $id);
            if ($query)
                echo "1";
            else
                echo "0";
        }

        public function status() {
            $id = isset($_POST["id"]) ? $_POST["id"] : "";
            $row = $this->Mcontent->content_detail($id);
            $status = ($row['status'] == 1) ? 0 : 1;
            $mydata = array('status' => $status);
            $this->Mcontent->content_update($mydata, $id);
            $result = $this->Mcontent->content_detail($id);
            print_r($result["status"]);
        }

        public function trash($id) {
            $mydata = array('trash' => 0);
            $this->Mcontent->content_update($mydata, $id);
            redirect('admin/content/view', 'refresh');
        }

        public function restore($id) {
            $mydata = array('trash' => 1);
            $this->Mcontent->content_update($mydata, $id);
            redirect('admin/content/recyclebin', 'refresh');
        }

        public function do_delete() {
            // Pagination
            $this->load->library('pagination');

            $config['base_url'] = 'admin/content/view';
            $config['total_rows'] = $this->Mcontent->count_all();
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
                    $query = $this->Mcontent->content_delete($value);
                }
            } else if (is_numeric($id)) {
                $query = $this->Mcontent->content_delete($id);
            }
            $result = $this->Mcontent->content_all($limit, $first);
            print_r(json_encode($result));
        }

    }
    