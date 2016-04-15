<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Phantrang{

	public function PageCurrent()
	{
		$url = explode('/',uri_string());
		print_r($url);
	}

	public function PageFirst($limit, $pgcurrent)
	{
		return 10;
	}

}

/* End of file phantrang.php */
/* Location: ./application/models/phantrang.php */