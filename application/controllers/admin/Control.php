<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Control extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('backend/muser');
		if(!$this->session->userdata('user_admin'))
		{
			redirect('admin/user/login','refresh');
		}
		$this->data['folder'] = 'control';
		$this->data['fullname'] = $this->session->userdata('fullname');
		$this->data['count'] = 10;
	}
	public function index()
	{
		$this->data['view'] = 'view';
		$this->load->view('backend/layout', $this->data);
	}

}

/* End of file control.php */
/* Location: ./application/models/control.php */
