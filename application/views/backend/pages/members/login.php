<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name='keywords' content="">
	<meta name="description" content="">
	<title>Đăng nhập hệ thống</title>
	<link rel="stylesheet" href="<?php echo CI_BASE_URL; ?>/public/backend/css/login.css" type="text/css">
	<link rel="stylesheet" href="<?php echo CI_BASE_URL; ?>/public/backend/css/reset.css" type="text/css">
	<script src="<?php echo CI_BASE_URL; ?>/public/backend/js/login.js"></script>
</head>
<body>
	<div id="contain">
	</div>
	<div id="form">
		<header></header>
		<section class="qp-wrapper">
			<?php echo validation_errors(); ?>
			<?php echo form_open('admin/user/login'); ?>
				<fieldset>
					<legend>Đăng nhập hệ thống</legend>
					<!-- <ul class="error">
						<li>^_^ Username and password is required!</li>
					</ul> -->
					<label><p>Tài khoản:</p><input type="text" name="username" class="txtUsername"></label>
					<label><p>Mật khẩu:</p><input type="password" name="password" class="txtPassword"></label>
					<ul>
						<li style="list-style-type:none; color:chartreuse;"><?php if(isset($error)){echo $error;} ?></li>
					</ul>
					<section>
						<input type="submit" value="Đăng nhập" class="btnLogin">
						<input type="reset" value="Khôi phục">
					</section>
					<!-- <nav>
						<ul>
							<li><a href="">Home </a></li>
							<li>/</li>
							<li><a href=""> Forgot password?</a></li>
						</ul>
					</nav> -->

				</fieldset>

			</form>
		</section>    <!-- .qp-wrapper -->

		<footer><p>Copyright &copy; 2016 - Powered by <a href="">QuangPhat</a></p></footer>
	</div>
</body>
</html>
