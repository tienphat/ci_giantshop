<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mcontact extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->table=$this->db->dbprefix('contact');
	}

	public function contact_insert($mydata)
	{
		$this->db->insert($this->table,$mydata);
	}
}

/* End of file Mcontact.php */
/* Location: ./application/models/frontend/Mcontact.php */