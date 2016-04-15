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
          <div class="col-md-1 col-sm-1 col-xs-1">

          </div>
          <div class="col-md-9 col-sm-9 col-xs-7">
            <img src="<?php echo base_url() ?>public/img/ic_shop.png " alt="Logo" />
          </div>
          <div class="col-md-2 col-sm-2 col-xs-2">
            <a href="<?php echo base_url(); ?>" class="btn btn-default">Trang chủ</a>
          </div>
      	</div>
      </div>
    </div>
    <div id="content">
      <div class="container">
        <div class="row">
          <div class="col-md-4 col-md-offset-4 col-sm-4 col-xs-12">
            <div class="sign-up-show">
              <?php
  							echo form_open(base_url('user/create_account'));
  						?>
                  <label >Họ và tên</label>
                  <?php echo form_error('name'); ?>
                    <input type="text" class="form-control" value="<?php echo isset($name)?$name:""; ?>" name="name" placeholder="Name">
                  <label>Tên đăng nhập</label><?php echo isset($error)?$error:"" ?>
                  <?php echo form_error('username'); ?>
                    <input type="text" class="form-control" value="<?php echo isset($username)?$username:""; ?>" name="username"  placeholder="Username">
                  <label>Mật khẩu</label>
                  <?php echo form_error('password'); ?>
                    <input type="password" class="form-control" value="<?php echo isset($pass)?$pass:""; ?>" name="password" id="pass" placeholder="**********">
                  <label>Xác thực mật khẩu</label>
                  <?php echo form_error('repassword'); ?>
                    <input type="password" class="form-control" name="repassword" id="repass" placeholder="**********">
                  <label>Email</label>
                  <?php echo form_error('email'); ?>
                    <input type="email" class="form-control" value="<?php echo isset($email)?$email:""; ?>" name="email" placeholder="Email">
                  <label>Số điện thoại</label>
                  <?php echo form_error('phone'); ?>
                    <input type="text" class="form-control" value="<?php echo isset($phone)?$phone:""; ?>" name="phone" placeholder="0123456789">
                  <label>Địa chỉ</label>
                  <?php echo form_error('address'); ?>
                    <input type="text" class="form-control" value="<?php echo isset($address)?$address:""; ?>" name="address" placeholder="Address">
                  <div class="btnSub text-center">
                    <input type="submit" name="btnSignup"  class="btn btn-default" value="Đăng ký"/>
                  </div>
              </form>
            </div>
          </div>

        </div>
      </div>
    </div>
    <div id="footer">
      <div class="container">
        <div class="row">
          <div class="col-md-4 col-md-offset-4 col-sm-4 col-xs-12">
            <div class="copyright">© 2016 TienPhat</div>
          </div>
        </div>
      </div>
    </div>
  </div>
</html>
