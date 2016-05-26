<?php
if(isset($folder) && isset($view))
{
	if($view == 'view')
	{
		echo "<a class='btn btn-default btn-sm' href='admin/".$folder."/insert' style='margin-right: 7px;'>";
			echo "<span class='fa fa-file fa-lg'></span>  Thêm ";
		echo "</a>";
	}
	else
	{
		echo "<a class='btn btn-danger btn-sm' href='admin/".$folder."/view' style='margin-right: 7px;'>";
			echo "<span class='fa fa-times-circle-o fa-lg'></span>  Thoát";
		echo "</a>";
	}
}
?>
