<div class="show-table">
    <table class="table table-bordered table-hover" style="border: 1px solid gainsboro;">
        <thead>
            <tr>
                <th width="40px"><input type="checkbox" id="check"><button id="delete-all" onclick="delete_member('members')">Xoá</button></th>
                <th width="40px">ID</th>
                <th>Họ tên</th>
                <th class='text-center'>Username</th>
                <th class='text-center'>Email</th>
                <th class='text-center'>Địa chỉ</th>
                <th class='text-center'>Điện thoại</th>
                <th width="95px" class='text-center'>Trạng thái</th>
                <th>Ngày tạo</th>
                <th width="20px">Xoá</th>
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
                    <td><?php echo $row["name"]; ?></td>
                    <td class='text-center'><?php echo $row["username"]; ?></td>
                    <td class='text-center'><?php echo $row["email"] ?></td>
                    <td class='text-center'><?php echo $row["address"] ?></td>
                    <td class='text-center'><?php echo $row["phone"] ?></td>
                    <td class='text-center status'><?php echo $status; ?></td>
                    <td><?php echo $row["created"]; ?></td>
                    <td>
                        <button class='fa fa-trash-o fa-lg btnDelete-members' onclick="del_member('members', '<?php echo $id; ?>')" ></button>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>

    </table>
</div>
<div class="text-center">
    <?php
    echo $links;
    ?>
</div>

