<div class="header-top">
    <div class='container '>
        <div class="row contact">
            <div class="col-md-5 col-sm-6 col-xs-6">
                <div class="row">
                    Chào mừng bạn đến với <a href="<?php echo CI_BASE_URL; ?>">GiantShop</a><span></span>  |
                    HOTLINE: <span>(+84)967 085 852</span>
                </div>
            </div>
            <div class="col-md-7 col-sm-6 col-xs-6">
                <?php
                if (isset($_SESSION['name'])) {
                    echo "Xin chào <span class='name'>" . $_SESSION['name'] . "</span> | ";
                    echo "<a href='";
                    echo CI_BASE_URL . "user/signout";
                    echo "' class='sign_out'>Đăng xuất</a>";
                } else {
                    echo "<span class='sign_in'>Đăng nhập</span> | ";
                    echo "<a href='";
                    echo CI_BASE_URL . "user/signup";
                    echo "' class='sign_up'>Đăng ký</a>";
                }
                ?>
            </div>
        </div>
    </div>
    <div class="container sign-in-show">
        <div class="row">
            <div class="col-md-9">

            </div>
            <div class="col-md-3 login-form">
                <div class="form-group">
                    <label>Tài khoản</label>
                    <input type="text" name="username" class="form-control" autocomplete="off" >
                </div>
                <div class="password form-group">
                    <label>Mật khẩu</label>
                    <input type="password" name="password" class="form-control" autocomplete="off">
                </div>
                <div class="sign-in">
                    <button type="button" name="login" class="btn btn-danger sign-in-button btnLogin"><i class="sign-in-i fa fa-lock"></i>Đăng nhập</button>
                    <a href="<?php echo base_url("user/forgot_password"); ?> ">Quên mật khẩu?</a>
                </div>
            </div>
        </div>
    </div>

</div>
<div class="header-bottom">
    <div class="container">
        <div class="row header-main">
            <div class="col-md-4 col-sm-5 col-xs-12"><a href="<?php echo CI_BASE_URL; ?>"><img src="<?php echo CI_BASE_URL; ?>public/img/ic_shop.png" alt="Shop"></a></div>
            <div class="col-md-5 col-sm-5 col-xs-9">
                <div class="form-search">
                    <input type="text" id="search_product" class="search" placeholder="Nhập thông tin tìm kiếm">
                    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                </div>

            </div>
            <div class="col-md-3 col-sm-2 col-xs-3">
                <div class="cart-item">
                    <a href="<?php echo base_url("user/cart"); ?>"><i class="fa fa-shopping-cart"></i> </a>
                    <span class="number_cart"><?php echo isset($_SESSION["giohang"])?count($_SESSION["giohang"]):"0"; ?></span>
                </div>
            </div>
        </div>
    </div>
</div>
