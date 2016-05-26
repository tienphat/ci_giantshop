<?php

    if (!defined('BASEPATH'))
        exit('No direct script access allowed');

    class Mcontent extends CI_Model {

        public function __construct() {
            parent::__construct();
            $this->table = $this->db->dbprefix('content');
        }

        public function count_all() {
            $this->db->where('trash', '1');
            $this->db->order_by('created', 'desc');
            $query = $this->db->get($this->table);
            return count($query->result_array());
        }

        public function content_all($limit, $first) {
            $this->db->where('trash', '1');
            $this->db->order_by('created', 'desc');
            $query = $this->db->get($this->table, $limit, $first);
            return $query->result_array();
        }

        public function count_trash_all() {
            $this->db->where('trash', '0');
            $this->db->order_by('created', 'desc');
            $query = $this->db->get($this->table);
            return count($query->result_array());
        }

        public function content_trash_all($limit, $first) {
            $this->db->where('trash', '0');
            $this->db->order_by('created', 'desc');
            $query = $this->db->get($this->table, $limit, $first);
            return $query->result_array();
        }

        public function content_list() {
            $this->db->where('trash', 1);
            $this->db->order_by('created', 'desc');
            $query = $this->db->get($this->table);
            return $query->result_array();
        }

        #Thông tin chi tiết chủ đề

        public function content_detail($id) {
            $this->db->where('trash', 1);
            $this->db->where('id', $id);
            $query = $this->db->get($this->table);
            return $query->row_array();
        }

        #Thêm chủ đề

        public function content_insert($mydata) {
            $this->db->insert($this->table, $mydata);
        }

        #Cập nhật chủ đề

        public function content_update($mydata, $id) {
            $this->db->where('id', $id);
            $this->db->update($this->table, $mydata);
            return true;
        }

        #Xoá chủ đề

        public function content_delete($id) {
            $this->db->where('id', $id);
            $query = $this->db->delete($this->table);
            if ($query) {
                return true;
            } else {
                return false;
            }
        }

    }

    /* End of file Mcontent.php */
/* Location: ./application/models/Mcontent.php */
