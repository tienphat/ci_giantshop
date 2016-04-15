<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class User extends CI_Controller
{
  public function __construct()
	{
		parent::__construct();
		$this->load->model('backend/Muser');
	}
  function login()
  {
		$this->form_validation->set_rules('username', 'Username', 'required');
		$this->form_validation->set_rules('password', 'Password', 'required');
		if ($this->form_validation->run() == TRUE)
		{
			$username = $_POST['username'];
      $password = sha1($_POST['password']);
			if($this->Muser->user_login($username, $password) != FALSE)
			{
				$row = $this->Muser->user_login($username, $password);
				$this->session->set_userdata('user_admin', $row['username']);
				$this->session->set_userdata('fullname', $row['fullname']);
				$this->session->set_userdata('access', $row['access']);
				redirect('admin','refresh');
			}
			else
			{
          $data['error'] = "Tên đăng nhập hoặc mật khẩu không đúng!";
	        $this->load->view('backend/pages/user/login', $data);
	    }
		}
    else{
        $this->load->view('backend/pages/user/login');
    }
  }

	public function logout()
	{
			$this->session->sess_destroy();
			redirect('admin','refresh');
	}

}
