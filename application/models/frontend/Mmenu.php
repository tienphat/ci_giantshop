<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Mmenu extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->table=$this->db->dbprefix('menu');
		
	}

	public function menu_level_parentid($level, $parentid){
		$this->db->where('level', $level);
		$this->db->where('parentid', $parentid);
		$this->db->where('status', 1);
		$this->db->order_by('id', 'asc');
		$query=$this->db->get($this->table);
		return $query->result_array();
	}

}

/* End of file mmenu.php */
/* Location: ./application/models/mmenu.php */