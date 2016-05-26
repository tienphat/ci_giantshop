<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Muser extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->table = $this->db->dbprefix('user');
    }

    public function user_login($username, $password) {
        $this->db->where('username', $username);
        $this->db->where('password', $password);
        $query = $this->db->get($this->table);
        if (count($query->result_array()) == 1) {
            return $query->row_array();
        } else {
            return FALSE;
        }
    }

    public function count_all() {
        $this->db->order_by('created', 'desc');
        $query = $this->db->get($this->table);
        return count($query->result_array());
    }

    public function user_all($limit, $first) {
        $this->db->order_by('created', 'desc');
        $query = $this->db->get($this->table, $limit, $first);
        return $query->result_array();
    }

    public function user_delete($id) {
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
