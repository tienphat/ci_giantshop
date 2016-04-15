<?php 
	if(isset($folder) && isset($view))
	{
		$this->load->view('frontend/components/'.$folder.'/'.$view);

	} 
?>

