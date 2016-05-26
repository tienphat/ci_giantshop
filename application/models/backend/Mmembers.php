<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Mmembers extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->table = $this->db->dbprefix('members');
    }

    public function count_all() {
        $this->db->order_by('created', 'desc');
        $query = $this->db->get($this->table);
        return count($query->result_array());
    }

    public function members_all($limit, $first) {
        $this->db->order_by('created', 'desc');
        $query = $this->db->get($this->table, $limit, $first);
        return $query->result_array();
    }


    public function members_list() {
        $this->db->where('trash', 1);
        $this->db->order_by('id', 'desc');
        $query = $this->db->get($this->table);
        return $query->result_array();
    }

    public function members_detail($id) {
        $this->db->where('trash', 1);
        $this->db->where('id', $id);
        $query = $this->db->get($this->table);
        return $query->row_array();
    }

    public function members_insert($mydata) {
        $this->db->insert($this->table, $mydata);
    }

    public function members_delete($id) {
        $this->db->where('id', $id);
        $query = $this->db->delete($this->table);
        if ($query) {
            return true;
        } else {
            return false;
        }
    }

}

?>
