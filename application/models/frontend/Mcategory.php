<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Mcategory extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->table=$this->db->dbprefix('category');
		
	}

	public function category_id($catlink){
		$this->db->where('link', $catlink);
		$this->db->where('trash', 1);
		$this->db->where('status', 1);
		$this->db->limit(1);
		$query=$this->db->get($this->table);
		$row = $query->row_array();
		return $row['id'];
	}
	public function category_parentid($catid){
		$this->db->select('id');
		$this->db->where('parentid', $catid);
		$this->db->where('trash', 1);
		$this->db->where('status', 1);
		$query=$this->db->get($this->table);
		$row = $query->result_array();
		if(count($row)){
			return $row;	
		} else return false;
	}
	
}

/* End of file mcategory.php */
/* Location: ./application/models/mcategory.php */