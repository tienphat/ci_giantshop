<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Trangchu extends CI_Controller {

	public function __construct(){
		parent:: __construct();
		$this->load->model('frontend/Mmenu');
		$this->load->model('frontend/Mproduct');
		$this->data['mainmenu'] = $this->Mmenu->menu_level_parentid(1,0);
		$this->data['folder'] = 'trangchu';

	}
	public function index()
	{
		$this->form_validation->set_rules('emailSubcribe', 'email', 'required');
		if($this->form_validation->run() == TRUE){
			$mydata = array(
				'email' => $_POST['emailSubcribe'],
			);
			$this->db->insert("ci_email",$mydata);
			echo "<script>alert('Đăng ký nhận tin thành công!');</script>";
		}
		$ses = $this->session->userdata('is_logged');
		if($ses)
		{
			$data['user'] = $ses['username'];
		}

		$limit = 12;
		$this->data['list'] = $this->Mproduct->product_home($limit);
		$this->data['view'] = 'default';
		$this->load->view('index', $this->data);
	}
}
