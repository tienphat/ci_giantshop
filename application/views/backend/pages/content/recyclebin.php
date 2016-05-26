<table class="table table-bordered table-hover" style="border: 1px solid gainsboro;">
  	<thead>
     <tr>
        <th width="40px">ID</th>
        <th>Tên chủ đề</th>
        <th>Ảnh</th>
        <th>Ngày đăng</th>
        <th>Người đăng</th>
        <th width="120px">Xoá vĩnh viễn</th>
        <th width="100px">Khôi phục</th>
     </tr>
    </thead>
    <tbody>
    <?php  foreach ($list as $row): ?>
    <?php $id = $row['id']; ?>
      <tr>
        <td><?php echo $id; ?></td>
        <td><a href='admin/content/update/$id'><?php echo $row['title']; ?></a></td>
        <td><img src='public/img/content/<?php echo $row['img']; ?> 'height='50px'></td>
        <td> <?php echo $row['created']; ?></td>
        <td> <?php echo $row['created_by']; ?></td>
        <td><a href='admin/content/delete/$id'><i class='fa fa-trash-o fa-lg'></i></a></td>
        <td><a href='admin/content/restore/$id'><i class='fa fa-edit fa-lg'></i></a></td>
      </tr>
    <?php  endforeach; ?>  
    </tbody>

</table>
<div class="text-center">
  <?php
      echo $links;
  ?>
</div>
