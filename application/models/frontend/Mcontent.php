<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mcontent extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->table=$this->db->dbprefix('content');
		
	}
	public function content_gioithieu($catid)
	{
		$this->db->where('trash',1);
		$this->db->where('status',1);
		$this->db->where('catid',$catid);
		$this->db->limit(1);
		$query = $this->db->get($this->table);
		return $query->row_array();
	}
	public function content_count($catid)
	{
		$this->db->where('trash',1);
		$this->db->where('status',1);
		$this->db->where('catid',$catid);
		$query = $this->db->get($this->table);
		return count($query->result_array());
	}
	public function content_tintuc($catid,$limit, $first)
	{
		$this->db->where('trash',1);
		$this->db->where('status',1);
		$this->db->where('catid',$catid);
		$query = $this->db->get($this->table,$limit, $first);
		return $query->result_array();
	}
	public function content_dichvu($catid,$limit, $first)
	{
		$this->db->where('trash',1);
		$this->db->where('status',1);
		$this->db->where('catid',$catid);
		$query = $this->db->get($this->table,$limit, $first);
		return $query->result_array();
	}
	public function content_detail($alias)
	{
		$this->db->where('trash',1);
		$this->db->where('status',1);
		$this->db->where('alias',$alias);
		$this->db->limit(1);
		$query = $this->db->get($this->table);
		return $query->row_array();
	}
}

/* End of file Mcontent.php */
/* Location: ./application/models/Mcontent.php */