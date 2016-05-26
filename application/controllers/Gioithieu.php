<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Gioithieu extends CI_Controller {

	public function __construct(){
		parent:: __construct();
		$this->load->model('frontend/Mmenu');
		$this->load->model('frontend/Mcontent');
		$this->load->model('frontend/Mcategory');
		$this->data['mainmenu'] = $this->Mmenu->menu_level_parentid(1,0);
		$this->data['folder'] = 'gioithieu';

	}
	public function index()
	{
		$catlink = 'gioi-thieu';
		$catid = $this->Mcategory->category_id($catlink);
		$this->data['row'] = $this->Mcontent->content_gioithieu($catid);
		$this->data['view'] = 'default';
		$this->load->view('frontend/index', $this->data);
	}
}
