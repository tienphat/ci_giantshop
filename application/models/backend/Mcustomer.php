<?php

    if (!defined('BASEPATH'))
        exit('No direct script access allowed');

    class Mcustomer extends CI_Model {

        public function __construct() {
            parent::__construct();
            $this->table = $this->db->dbprefix('customer');
        }

        public function count_all() {
            $this->db->order_by('created', 'desc');
            $query = $this->db->get($this->table);
            return count($query->result_array());
        }

        public function customer_all($limit, $first) {
            $this->db->order_by('created', 'desc');
            $query = $this->db->get($this->table, $limit, $first);
            return $query->result_array();
        }

        public function count_trash_all() {
            $this->db->order_by('created', 'desc');
            $query = $this->db->get($this->table);
            return count($query->result_array());
        }

        public function customer_trash_all($limit, $first) {
            $this->db->order_by('created', 'desc');
            $query = $this->db->get($this->table, $limit, $first);
            return $query->result_array();
        }

        public function customer_list() {
            $this->db->order_by('created', 'desc');
            $query = $this->db->get($this->table);
            return $query->result_array();
        }

        #Thông tin chi tiết chủ đề

        public function customer_detail($id) {
            $this->db->where('id', $id);
            $query = $this->db->get($this->table);
            return $query->row_array();
        }

        #Thêm chủ đề

        public function customer_insert($mydata) {
            $this->db->insert($this->table, $mydata);
        }

        #Cập nhật chủ đề

        public function customer_update($mydata, $id) {
            $this->db->where('id', $id);
            $this->db->update($this->table, $mydata);
            return true;
        }

        #Xoá chủ đề

        public function customer_delete($id) {
            $this->db->where('id', $id);
            $query = $this->db->delete($this->table);
            if ($query) {
                return true;
            } else {
                return false;
            }
        }

    }

    /* End of file Mcustomer.php */
/* Location: ./application/models/Mcustomer.php */
