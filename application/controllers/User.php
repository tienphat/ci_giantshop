<?php defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller{

  public function __construct()
  {
    parent::__construct();
    $this->load->model('frontend/Mmembership');
    $this->load->model('frontend/Mmenu');
    $this->load->model('frontend/Mproduct');
  }

  function index()
  {

  }
  function login()
  {
    $this->data['folder'] = 'trangchu';
    $this->data['mainmenu'] = $this->Mmenu->menu_level_parentid(1,0);
    $data['view'] = "default";
    $limit = 12;
		$this->data['list'] = $this->Mproduct->product_home($limit);

    $this->load->library('form_validation');
		$this->form_validation->set_rules('username', 'Username', 'required');
		$this->form_validation->set_rules('password', 'Password', 'required');
		if ($this->form_validation->run() == TRUE)
		{
			$username = $_POST['username'];
      $password = sha1($_POST['password']);
			if($this->Mmembership->validate_login($username, $password) != FALSE)
			{
				$row = $this->Mmembership->validate_login($username, $password);
				$this->session->set_userdata('user', $row['username']);
        $this->session->set_userdata('name', $row['name']);
				$this->session->set_userdata('access', $row['access']);
				redirect(base_url(),'refresh');
			}
			else
			{
          echo "<script>alert('Tên đăng nhập hoặc mật khẩu không đúng!')</script>";
	        redirect(base_url());
	    }
		}
    else{
        redirect(base_url(),'refresh');
    }
  }
  function signout(){
    $this->session->unset_userdata('user');
    $this->session->unset_userdata('name');
    $this->session->unset_userdata('access');
    redirect(base_url(),'refresh');
  }

  function forgot_password(){
    $this->load->view("frontend/forgot_password");
  }
  function send_email(){
    $this->load->library('form_validation');
		$this->form_validation->set_rules('email', 'Email', 'required');
		if($this->form_validation->run() == TRUE){
      $data = array(
         'email' => $_POST["email"]
      );

      $this->db->insert('ci_email_forgot_pw', $data);
			echo "<script>alert('Gửi email thành công. Xin kiểm tra email để xác nhận!');</script>";
      redirect(base_url(),"refresh");
		}else{
      $this->load->view("frontend/forgot_password", $data);
    }
  }
  function create_account()
  {
      $data["pass"] = $this->input->post('password');
      $data = array(
        "name" => $this->input->post('name'),
        "username" => $this->input->post('username'),
        "password" => sha1($this->input->post('password')),
        "email" => $this->input->post('email'),
        "address" => $this->input->post('address'),
        "created" => date('Y-m-d h:i:s'),
        "phone" => $this->input->post('phone'),
        "access" => 1,
        "level" => 1
      );
      $this->form_validation->set_rules('name', 'Họ và tên', 'trim|required|min_length[6]|max_length[60]');
      $this->form_validation->set_rules('username', 'Tài khoản', 'trim|required|min_length[6]|max_length[30]|regex_match[/^([a-z0-9_])+$/i]');
      $this->form_validation->set_rules('password', 'Mật khẩu', 'trim|required|min_length[6]|max_length[50]|regex_match[/^([a-z0-9_])+$/i]');
      $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');
  		$this->form_validation->set_rules('address', 'Địa chỉ', 'trim|required|max_length[255]');
      $this->form_validation->set_rules('phone', 'Số điện thoại', 'trim|required|max_length[15]|regex_match[/^([0-9_])+$/i]');

  		if ($this->form_validation->run() == TRUE)
  		{
         $result = $this->Mmembership->validate_signup($_POST['username']);
         if($result == TRUE){
            if($this->Mmembership->create_account($data)){
              $this->session->set_userdata('user', $data['username']);
              $this->session->set_userdata('name', $data['name']);
      				$this->session->set_userdata('access', $data['access']);
              echo "<script>alert('Đăng ký thành công!')</script>";
              redirect(base_url(),"refresh");
            }
        }else{
          echo "<script>alert('Tên đăng nhập đã có người sử dụng!')</script>";
          $data["error"] = "<span class='error-span'>*</span>";
          $this->load->view("frontend/signup",$data);
        }

      }else{
          $this->load->view("frontend/signup",$data);
      }
  }
  function signup(){

    $this->load->view("frontend/signup");
  }


}
