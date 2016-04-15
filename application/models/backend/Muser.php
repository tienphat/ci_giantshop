<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Muser extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->table = $this->db->dbprefix('user');
	}
	public function user_login($username, $password)
	{
		$this->db->where('username',$username);
		$this->db->where('password',$password);
		$query = $this->db->get($this->table);
		if(count($query->result_array()) == 1)
		{
				return $query->row_array();
		}
		else
		{
			return FALSE;
		}
	}
}

?>
