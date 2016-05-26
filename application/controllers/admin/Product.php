<?php

    if (!defined('BASEPATH'))
        exit('No direct script access allowed');

    class Product extends CI_Controller {

        public function __construct() {
            parent::__construct();
            if (!$this->session->userdata('user_admin')) {
                redirect('admin/user/login', 'refresh');
            }
            $this->load->model('backend/Mproduct');
            $this->load->model('backend/Mcategory');
            $this->data['count'] = $this->Mproduct->count_trash_all();
            $this->data['folder'] = 'product';
        }

        #Quan ly chu de

        public function view() {

            //Load thu vien Pagination Class
            $this->load->library('pagination');
            //======= Pagination =======
            $config['base_url'] = 'admin/product/view';
            $config['total_rows'] = $this->Mproduct->count_all();
            $config['per_page'] = 10;
            // $config ['display_pages'] = FALSE;  //An hien so trang
            $config['num_links'] = 5; //Tong so link truoc va sau link hien tai
            $limit = $config['per_page'];
            $first = $this->uri->segment(4);

            //Khoi tao phan trang
            $pagination = $this->pagination->initialize($config);
            //======= End Pagination =======

            $this->data['links'] = $this->pagination->create_links();

            $this->data['list'] = $this->Mproduct->product_all($limit, $first);
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
                $config['upload_path'] = './public/img/product';
                $config['allowed_types'] = 'gif|jpg|png';
                // $config['max_size']	= '100';
                // $config['max_width'] = '1024';
                // $config['max_height'] = '768';
                $this->load->library('upload', $config);
                if ($this->upload->do_upload("img")) {
                    $data = $this->upload->data();
                    $mydata['img'] = $data['file_name'];
                } else {
                    $mydata['img'] = "default.jpg";
                }
                $this->Mproduct->product_insert($mydata);
                redirect('admin/product/view');
            } else {
                $this->data['view'] = 'insert';
                $this->load->view('backend/layout', $this->data);
            }
        }

        public function delete($id) {
            $this->Mproduct->product_delete($id);
            redirect('admin/product/recyclebin', 'refresh');
        }

        public function show_update() {
            header('Content-Type: application/json');
            $id = isset($_POST["id"]) ? $_POST["id"] : "";
            $result = $this->Mproduct->product_detail($id);
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
            $name = isset($_POST['name']) ? $_POST['name'] : "";
            $alias = isset($_POST['alias']) ? $_POST['alias'] : "";
            $catid = isset($_POST['catid']) ? $_POST['catid'] : "";
            $image = isset($_POST['image']) ? $_POST['image'] : "";
            $introtext = isset($_POST['introtext']) ? $_POST['introtext'] : "";
            $detail = isset($_POST['detail']) ? $_POST['detail'] : "";
            $number = isset($_POST['number']) ? $_POST['number'] : "";
            $price = isset($_POST['price']) ? $_POST['price'] : "";
            $price_sale = isset($_POST['price_sale']) ? $_POST['price_sale'] : "";
            $access = isset($_POST['access']) ? $_POST['access'] : "";
            $status = isset($_POST['status']) ? $_POST['status'] : "";
            $d = getdate();
            $today = $d['year'] . "-" . $d['mon'] . "-" . $d['mday'] . " " . $d['hours'] . ":" . $d['minutes'] . ":" . $d['seconds'];
            $mydata = array(
                'name' => $name,
                'alias' => $alias,
                'catid' => $catid,
                'access' => $access,
                'img' => $image,
                'detail' => $detail,
                'introtext' => $introtext,
                'trash' => 1,
                'number' => $number,
                'number_buy' => 0,
                'price' => $price,
                'price_sale' => $price_sale,
                'status' => $status,
                'created' => $today,
                'created_by' => $this->session->userdata('fullname'),
                'modified' => $today,
                'modified_by' => $this->session->userdata('fullname'),
            );
            $query = $this->Mproduct->product_update($mydata, $id);
            if ($query)
                echo "1";
            else
                echo "0";
        }

        public function status() {
            $id = isset($_POST['id']) ? $_POST['id'] : '';
            $row = $this->Mproduct->product_detail($id);
            $status = ($row['status'] == 1) ? 0 : 1;
            $mydata = array('status' => $status);
            $this->Mproduct->product_update($mydata, $id);
            $result = $this->Mproduct->product_detail($id);
            print_r($result["status"]);
        }

        public function trash($id) {
            $mydata = array('trash' => 0);
            $this->Mproduct->product_update($mydata, $id);
            redirect('admin/product/view', 'refresh');
        }

        public function restore($id) {
            $mydata = array('trash' => 1);
            $this->Mproduct->product_update($mydata, $id);
            redirect('admin/product/recyclebin', 'refresh');
        }

        public function do_delete() {
            // Pagination
            $this->load->library('pagination');

            $config['base_url'] = 'admin/product/view';
            $config['total_rows'] = $this->Mproduct->count_all();
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
                    $query = $this->Mproduct->product_delete($value);
                }
            } else if (is_numeric($id)) {
                $query = $this->Mproduct->product_delete($id);
            }
            $result = $this->Mproduct->product_all($limit, $first);
            print_r(json_encode($result));
        }

    }
    