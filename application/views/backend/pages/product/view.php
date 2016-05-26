<div class="show-table">
    <table class="table table-bordered table-hover table-responsive" style="border: 1px solid gainsboro;">
        <thead>
            <tr>
                <th width="40px"><input type="checkbox" id="check"><button id="delete-all" onclick="delete_all('product')">Xoá</button></th>
                <th width="40px">ID</th>
                <th>Tên sản phẩm</th>
                <th class='text-center'>Hình ảnh</th>
                <th class='text-center'>Số lượng</th>
                <th class='text-center'>Giá</th>
                <th class='text-center'>Giảm giá</th>
                <th width="95px" class='text-center'>Trạng thái</th>
                <th>Ngày đăng</th>
                <th>Người đăng</th>
                <th width="20px">Xoá</th>
                <th width="20px">Sửa</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($list as $row): ?>
                    <?php
                    $id = $row['id'];
                    $status = ($row['status'] == 1) ? "<span class='fa fa-check-circle-o mauxanh'></span>" : "<span class='fa fa-remove maudo'></span>";
                    ?>
                    <tr>
                        <td><div class="check"><input type="checkbox" class="check-delete" value="<?php echo $id; ?>"/></div></td>
                        <td><?php echo $id; ?></td>
                        <td>
                            <button class="btn-link" onclick="update_name('product', '<?php echo $id; ?>')" value="<?php echo $id; ?>" data-toggle="modal" data-target="#myModal"><?php echo $row["name"]; ?></button>
                        </td>
                        <td class='text-center'><img src="public/img/product/<?php echo $row["img"]; ?>" height="50px" alt="<?php echo $row["name"]; ?>"></td>
                        <td class='text-center'><?php echo $row["number"]?></td>
                        <td class='text-center'><?php echo $row["price"]?></td>
                        <td class='text-center'><?php echo $row["price_sale"]?></td>
                        <td class='text-center status'><button onclick="change_status('product', '<?php echo $id; ?>')" class="btnStatus_<?php echo $id; ?>"><?php echo $status; ?></button></td>
                        <td><?php echo $row["created"]; ?></td>
                        <td><?php echo $row["created_by"]; ?></td>
                        <td><button class='fa fa-trash-o fa-lg btnDelete-product' onclick="add_event('product', '<?php echo $id; ?>')" ></button></td>
                        <td>
                            <button class="btn-link" onclick="update_name('product', '<?php echo $id; ?>')" value="<?php echo $id; ?>" data-toggle="modal" data-target="#myModal"><i class='fa fa-edit fa-lg'></i></button>
                        </td>

                    </tr>
                <?php endforeach; ?>
        </tbody>

    </table>
</div>
<div class="ul_pag text-center">
    <?php
        echo $links;
    ?>
</div>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Cập nhật</h4>
            </div>
            <div class="modal-body">
                <div class="form_update">
                    
                </div>
            </div>
        </div>
    </div>

