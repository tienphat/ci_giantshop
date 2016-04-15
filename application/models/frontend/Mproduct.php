<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mproduct extends CI_Model {
	public function __construct()
	{
		parent::__construct();
		$this->table=$this->db->dbprefix('product');
		
	}
	#Trang chu, moi dang
	function product_home($limit){
		$this->db->where('status','1');
		$this->db->where('trash','1');
		$this->db->order_by('created','desc');
		$this->db->limit($limit);
		$query=$this->db->get($this->table);
		return $query->result_array();
	}
	#Chi tiet
	function product_detail($alias){
		$this->db->where('status','1');
		$this->db->where('trash','1');
		$this->db->where('alias',$alias);
		$this->db->limit(1);
		$query=$this->db->get($this->table);
		return $query->row_array();
	}
	#Tat ca san pham
	function count_all(){
		$this->db->where('status','1');
		$this->db->where('trash','1');
		$query=$this->db->get($this->table);
		return count($query->result_array());
	}
	function product_all($limit, $first){
		$this->db->where('status','1');
		$this->db->where('trash','1');
		$this->db->order_by('created','desc');
		$query=$this->db->get($this->table,$limit,$first);
		return $query->result_array();
	}

	function product_category_all($cat){
		$this->db->where('status','1');
		$this->db->where('trash','1');
		$d=1;
		foreach ($cat as $value) {
			if($d==1)
			{
				$this->db->where('catid',$value);
			}
			else{
				$this->db->or_where('catid',$value);
			}
			$d++;
		}
		
		$query=$this->db->get($this->table);
		return count($query->result_array());
	}
	public function product_category($cat, $limit,$first){
		$this->db->where('status','1');
		$this->db->where('trash','1');
		$d=1;
		foreach ($cat as $value) {
			if($d==1)
			{
				$this->db->where('catid',$value);
			}
			else{
				$this->db->or_where('catid',$value);
			}
			$d++;
		}
		$this->db->order_by('created','desc');
		$query=$this->db->get($this->table,$limit,$first);
		return $query->result_array();
	}
}
