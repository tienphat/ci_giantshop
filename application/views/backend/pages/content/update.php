<?php
    $list = $this->Mcategory->category_list_product('content', 1);
    $option_parentid = "";
    if (is_array($list) || is_object($list)) {
        foreach ($list as $r) {
            $option_parentid.= " <option value='" . $r["id"] . "'>" . $r["title"] . "</option>";
        }
    }
//show error validation
    echo validation_errors();
    echo form_open_multipart('admin/content/update/' . $r['id']);
?>
<div>
    <div class="content_update">
        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Thông tin sản phẩm</a></li>
            <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Chi tiết sản phẩm</a></li>
            <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Bài viết sản phẩm</a></li>

        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="home">
                <!-- Home -->
                <div class="row form">
                    <div class="col-md-3 text-right">Tên bài viết </div>
                    <div class="col-md-9">
                        <input name="name" value="<?php echo $row['title']; ?>" class="form-control" type="text"  >
                    </div>
                </div>
                <div class="row form">
                    <div class="col-md-3 text-right">Alias</div>
                    <div class="col-md-9">
                        <input name="alias" value="<?php echo $row['alias']; ?>" class="form-control" type="text" style="width='90%'" >
                    </div>
                </div>
                <div class="row form">
                    <div class="col-md-3 text-right">Chủ đề</div>
                    <div class="col-md-9">
                        <select name="catid" class="form-control">
                            <option value="0">Chọn chủ đề</option>
                            <?php echo $option_parentid ?>;
                        </select>
                    </div>
                </div>
                <div class="row form">
                    <div class="col-md-3 text-right">Hình ảnh</div>
                    <div class="col-md-9">
                        <input type="file" name="img" value="">
                    </div>
                </div>
                <div class="row form">
                    <div class="col-md-3 text-right">Quyền truy cập</div>
                    <div class="col-md-9">
                        <select name="access" class="form-control">
                            <option value="1">Công khai</option>
                            <option value="0">Riêng tư</option>
                        </select>
                    </div>
                </div>
                <div class="row form">
                    <div class="col-md-3 text-right">Trạng thái</div>
                    <div class="col-md-9">
                        <select name="status" class="form-control">
                            <option value="1">Xuất bản</option>
                            <option value="0">Chưa xuất bản</option>
                        </select>
                    </div>
                </div>
                <div class="row form">
                    <div class="col-md-3 text-right"></div>
                    <div class="col-md-9">
                        <input type="submit" class="btn btn-success" name="capnhat" value="Cập nhật">
                    </div>
                </div>
                <!-- End Home -->
            </div>
            <div role="tabpanel" class="tab-pane" id="profile">
                <textarea name="detail" rows="8" cols="40"><?php echo $row['fulltext']; ?></textarea>
                <script type="text/javascript">
                    CKEDITOR.replace('detail')
                </script>
            </div>
            <div role="tabpanel" class="tab-pane" id="messages">
                <textarea name="introtext" rows="8" cols="40"><?php echo $row['introtext']; ?></textarea>
                <script type="text/javascript">
                    CKEDITOR.replace('introtext')
                </script>
            </div>

        </div>
    </div>


</div>





</form>
