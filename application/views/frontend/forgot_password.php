<!DOCTYPE html>
<html class=" js no-touch svg">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>GiantShop | Forgot password</title>
  <link rel="stylesheet" href="<?php echo CI_BASE_URL ?>public/frontend/css/bootstrap.css" media="screen" title="no title" charset="utf-8">
  <link href="<?php echo CI_BASE_URL ?>public/frontend/css/user.css" media="all" rel="stylesheet" type="text/css">
</head>
<body>

  <div id="page">
    <div id="header">
      <div class="container">
      	<div class="row">
          <div class="col-md-1">

          </div>
          <div class="col-md-9">
            <img src="<?php echo base_url() ?>public/img/ic_shop.png " alt="Logo" />
          </div>
          <div class="col-md-2">
            <a href="<?php echo base_url(); ?>" class="btn btn-default">Trang chủ</a>
          </div>
      	</div>
      </div>
        <div class="row head">

        </div>
      </div>
    </div>
    <div id="content">
      <div class="container">
        <div class="row">
          <div class="col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4 col-xs-12">
            <h1 class="has_font text-center">Quên mật khẩu tài khoản</h1>
          	<p>Nhập thông tin email của bạn</p>
            <?php
              echo validation_errors();
              echo form_open(base_url('user/send_email'));
            ?>
              <div class="form-group">
                <label class="control-label col-md-2" for="email">Email:</label>
                <div class="col-md-10">
                  <input type="email" name="email" class="form-control" placeholder="Nhập email">
                </div>
              </div>
              <div class="form-group">
                <div class="col-md-10">
                  <input type="submit" class="btn btn-default" value="Gứi"/>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <div id="footer">
      <div class="container">
        <div class="row">
          <div class="col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4 col-xs-12">
            <div class="copyright">© 2016 TienPhat</div>
          </div>
        </div>
      </div>
    </div>
  </div>
</html>
