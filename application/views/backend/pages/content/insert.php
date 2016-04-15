<?php
  echo validation_errors();
  echo form_open_multipart('admin/content/insert');
?>
<div>

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Thông tin bài viết</a></li>
    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Chi tiết bài viết</a></li>
    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Bài viết sản phẩm</a></li>

  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="home">
      <!-- Home -->
      <div class="row form">
        <div class="col-md-3 text-right">Tên sản phẩm</div>
        <div class="col-md-9">
          <input name="name" placeholder="Tên sản phẩm" class="form-control" autocomplete=off type="text" style="width='90%'" >
        </div>
      </div>
      <div class="row form">
        <div class="col-md-3 text-right">Alias</div>
        <div class="col-md-9">
          <input name="alias" placeholder="Alias" class="form-control" autocomplete=off type="text" style="width='90%'" >
        </div>
      </div>
      <div class="row form">
        <div class="col-md-3 text-right">Chủ đề</div>
        <div class="col-md-9">
          <select name="catid" class="form-control">
            <option value="0">Chọn chủ đề</option>
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
        <div class="col-md-3 text-right">Số lượng</div>
        <div class="col-md-9">
          <input class="form-control" type="number" name="number" value="1" min="1" max="100" step="1">
        </div>
        <div class="col-md-3 text-right">Giá bán</div>
        <div class="col-md-9">
          <input class="form-control" type="number" name="price" value="10000" min="10000" max="10000000" step="1000">
        </div>
        <div class="col-md-3 text-right">Giá khuyến mãi</div>
        <div class="col-md-9">
          <input class="form-control" type="number" name="price_sale" value="10000" min="10000" max="10000000" step="1000">
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
        <div class="col-md-3 text-right">Xuất bản</div>
        <div class="col-md-9">
          <input type="submit" class="btn btn-success" name="them" value="Thêm">
        </div>
      </div>
      <!-- End Home -->
    </div>
    <div role="tabpanel" class="tab-pane" id="profile">
      <textarea name="detail" rows="8" cols="40"></textarea>
      <script type="text/javascript">
        CKEDITOR.replace('detail')
      </script>
    </div>
    <div role="tabpanel" class="tab-pane" id="messages">
      <textarea name="introtext" rows="8" cols="40"></textarea>
      <script type="text/javascript">
        CKEDITOR.replace('introtext')
      </script>
    </div>

  </div>

</div>





</form>
