<?php

$html_tbody = '';
foreach ($list as $row) {
  $id = $row['id'];
  $html_tbody.= "<tr>";
    $html_tbody.="<td>".$id."</td>";
    $html_tbody.="<td><a href='admin/menu/update/$id'>".$row['title']."</a></td>";
    $html_tbody.="<td>".$row['link']."</td>";
    $html_tbody.="<td>".$row['created']."</td>";
    $html_tbody.="<td>".$row['created_by']."</td>";
    $html_tbody.="<td><a href='admin/menu/delete/$id'><i class='fa fa-trash-o fa-lg'></i></a></td>";
    $html_tbody.="<td><a href='admin/menu/restore/$id'><i class='fa fa-edit fa-lg'></i></a></td>";
  $html_tbody.="</tr>";
}
 ?>
<table class="table table-bordered table-hover" style="border: 1px solid gainsboro;">
  	<thead>
     <tr>
        <th width="40px">ID</th>
        <th>Tên chủ đề</th>
        <th>Liên kết</th>
        <th>Ngày đăng</th>
        <th>Người đăng</th>
        <th width="120px">Xoá vĩnh viễn</th>
        <th width="100px">Khôi phục</th>
     </tr>
    </thead>
    <tbody>
      <?php echo $html_tbody; ?>
    </tbody>

</table>
<div class="text-center">
  <?php
      echo $links;
  ?>
</div>
