<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Lienhe extends CI_Controller {

	public function __construct(){
		parent:: __construct();
		$this->load->model('frontend/Mmenu');
		$this->load->model('frontend/Mcontact');
		$this->data['mainmenu'] = $this->Mmenu->menu_level_parentid(1,0);
		$this->data['folder'] = 'lienhe';

	}
	public function index()
	{
		$this->load->library('form_validation');
		$this->form_validation->set_rules('fullname', 'Ho ten', 'required');
		$this->form_validation->set_rules('email', 'Email', 'required');
		$this->form_validation->set_rules('phone', 'Phone', 'required');
		$this->form_validation->set_rules('title', 'Title', 'required');
		$this->form_validation->set_rules('content', 'Content', 'required');
		if($this->form_validation->run() == TRUE)
		{
			$mydata = array(
				'fullname' => $_POST['fullname'],
				'email' => $_POST['email'],
				'phone' => $_POST['phone'],
				'title' => $_POST['title'],
				'content' => $_POST['content']
			);
			$this->Mcontact->contact_insert($mydata);
			echo "<script>alert('Cảm ơn bạn đã liên hệ với chúng tôi!');</script>";
		}

		$this->data['view'] = 'default';
		$this->load->view('index', $this->data);
	}
}
