<div class="show-table">
    <table class="table table-bordered table-hover" style="border: 1px solid gainsboro;">
        <thead>
            <tr>
                <th width="40px"><input type="checkbox" id="check"><button id="delete-all" onclick="delete_all('category')">Xoá</button></th>
                <th width="40px">ID</th>
                <th>Tên chủ đề</th>
                <th>Liên kết</th>
                <th width="95px" class='text-center'>Trạng thái</th>
                <th>Ngày đăng</th>
                <th>Người đăng</th>
                <th width="20px">Xoá</th>
                <th width="20px">Sửa</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($list as $l) : ?>
                    <?php
                    $id = $l['id'];
                    $status = ($l['status'] == 1) ? "<span class='fa fa-check-circle-o mauxanh'></span>" : "<span class='fa fa-remove maudo'></span>";
                    ?>
                    <tr>
                        <td><div class="check"><input type="checkbox" class="check-delete" value="<?php echo $id; ?>"/></div></td>
                        <td><?php echo $id; ?></td>
                        <td>
                            <button class="btn-link" onclick="update('category', '<?php echo $id; ?>')" value="<?php echo $id; ?>" data-toggle="modal" data-target="#myModal"><?php echo $l["title"]; ?></button>
                        </td>
                        <td><?php echo $l["link"]; ?></td>
                        <td class='text-center status'><button onclick="change_status('category', '<?php echo $id; ?>')" class="btnStatus_<?php echo $id; ?>"><?php echo $status; ?></button></td>
                        <td><?php echo $l["created"]; ?></td>
                        <td><?php echo $l["created_by"]; ?></td>
                        <td><button class='fa fa-trash-o fa-lg btnDelete-category' onclick="add_event('category', '<?php echo $id; ?>')" ></button></td>
                        <td>
                            <button class="btn-link" onclick="update('category', '<?php echo $id; ?>')" value="<?php echo $id; ?>" data-toggle="modal" data-target="#myModal"><i class='fa fa-edit fa-lg'></i></button>
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

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Cập nhật</h4>
            </div>
            <div class="modal-body">
                <?php
                    echo validation_errors();
                ?>
                <div class="form_update">

                </div>

            </div>
        </div>
    </div>
</div>

