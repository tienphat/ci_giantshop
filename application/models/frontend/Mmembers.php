<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mmembers extends CI_Model{
  function __construct(){
    parent::__construct();
    $this->table = $this->db->dbprefix("members");
  }
  function validate_login($username, $password)
  {
    $this->db->where('username',$username);
    $this->db->where('password',sha1($password));
    $query = $this->db->get($this->table);
    if($query)
    {
        return $query->row_array();
    }
    else
    {
      return FALSE;
    }
  }
  function validate_signup($username){
    $this->db->where('username',$username);
    $query = $this->db->get($this->table);
    if(count($query->result_array()) == 1)
    {
        return FALSE;
    }
    else
    {
      return TRUE;
    }
  }
  function create_account($mydata){
    $this->db->insert($this->table,$mydata);
    return TRUE;
  }

}

 ?>
