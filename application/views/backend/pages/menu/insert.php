<?php
$list = $this->Mmenu->menu_list();
$option_parentid = "";
if (is_array($list) || is_object($list)) {
    foreach ($list as $row) {
        $option_parentid.= " <option value='" . $row["id"] . "'>" . $row["title"] . "</option>";
    }
}

//show error validation
echo validation_errors();
//form_open -> Action
echo form_open('admin/menu/insert');
?>
<div class="row form">
    <div class="col-md-2 text-right">Tên chủ đề</div>
    <div class="col-md-10">
        <input name="title" class="form-control" autocomplete=off type="text" style="width:90%" >
    </div>
</div>
<div class="row form">
    <div class="col-md-2 text-right">Liên kết</div>
    <div class="col-md-10">
        <input name="link" class="form-control" autocomplete=off type="text" style="width:90%" >
    </div>
</div>
<div class="row form">
    <div class="col-md-2 text-right">Chủ đề cha</div>
    <div class="col-md-10">
        <select name="parentid" class="form-control">
            <option value="0">Chọn chủ đề</option>
            <?php echo $option_parentid ?>;
        </select>
    </div>
</div>
<div class="row form">
    <div class="col-md-2 text-right">Kiểu chủ đề</div>
    <div class="col-md-10">
        <select name="type" class="form-control">
            <option value="content">Bài viết</option>
            <option value="product">Sản phẩm</option>
        </select>
    </div>
</div>
<div class="row form">
    <div class="col-md-2 text-right">Quyền truy cập</div>
    <div class="col-md-10">
        <select name="access" class="form-control">
            <option value="1">Công khai</option>
            <option value="0">Riêng tư</option>
        </select>
    </div>
</div>
<div class="row form">
    <div class="col-md-2 text-right">Trạng thái</div>
    <div class="col-md-10">
        <select name="status" class="form-control">
            <option value="1">Xuất bản</option>
            <option value="0">Chưa xuất bản</option>
        </select>
    </div>
</div>
<div class="row form">
    <div class="col-md-2 text-right">Xuất bản</div>
    <div class="col-md-10">
        <input type="submit" class="btn btn-success" name="them" value="Thêm">
    </div>
</div>
</form>
