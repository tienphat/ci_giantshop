<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Module extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		if(!$this->session->userdata('user_admin'))
		{
			redirect('admin/user/login','refresh');
		}

	}

}
