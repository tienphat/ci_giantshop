
<!DOCTYPE html>
<html class=" js no-touch svg">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GiantShop | Cart</title>
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
            <div id="content" class="content">
                <div class="container">
                    <div class="row cart_page">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="cart-page">
                                <div class="row back_page">
                                    <a onclick="trackContinueShopping();" class="sel-continue-shopping continue-shopping" href="<?php echo base_url(); ?>">
                                        <i class="icon icon-continue-shopping"></i><< Tiếp tục mua hàng</a>
                                </div>
                                <div class="row myCart">
                                    <h5 class="txt-large txt-black pbs">Giỏ hàng của tôi</h5>
                                </div>
                                <div class="row info_product">
                                    <div class="col-md-7 ip_left">
                                        <table class="width_100 producttable">

                                            <thead id="tableheader">
                                                <tr>
                                                    <td class="width_20">
                                                        <?php echo isset($_SESSION['giohang']) ? count($_SESSION['giohang']) : "0"; ?> sản phẩm</td>
                                                    <td class="width_40"></td>
                                                    <td class="width_15 item-price-head">Giá</td>
                                                    <td class="size1of5 center">Số lượng</td>
                                                    <td class="right_align lastcolumn"></td>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <?php
                                                if (isset($_SESSION["giohang"])) {
                                                    $count = count($_SESSION["giohang"]);
                                                    $total = 0;
                                                    for ($i = 0; $i < $count; $i++) {
                                                        
                                                        $row = $this->Mproduct->detail_product($_SESSION["giohang"][$i]["id"]);
                                                        if ($row['price_sale'] != "0") {
                                                            $total += $_SESSION["giohang"][$i]["number"] * $row['price_sale'];
                                                        } else {
                                                            $total += $_SESSION["giohang"][$i]["number"] * $row['price'];
                                                        }
                                                        ?>

                                                        <tr>
                                                            <td class="width_20">
                                                                <a href="">
                                                                    <img src="<?php echo base_url(); ?>public/img/product/<?php echo isset($row['img']) ? $row['img'] : ""; ?>" width="117">
                                                                </a>
                                                            </td>
                                                            <td class="width_40 position-relative">
                                                                <div class="productdescription txt-medium mbm txt-light-black"><?php echo isset($row['name']) ? $row['name'] : ""; ?></div>
                                                                <div class="stock txt-dark-yellow txt-size-small instock">
                                                                    ✓ Còn hàng 
                                                                </div>
                                                            </td>
                                                            <td class="width_15 price txt-left">
                                                                <span class="txt-bold txt-medium txt-light-black sale-price"><?php echo isset($row['price_sale']) ? $row['price_sale'] : ""; ?> VND</span><br>
                                                                <span class="mbs cart-product-oldprice-value txt-light-grey old-price">
                                                                    <span><?php echo isset($row['price']) ? $row['price'] : ""; ?> VND</span>
                                                                </span><br>
                                                            </td>
                                                            <td class="size1of5 quantity center">
                                                                <div class="up-down-select txt-light-black">
                                                                    <span class="btn-up-down down disable">
                                                                        <a href="<?php echo base_url(); ?>user/cart/down/<?php echo isset($row['id']) ? $row['id'] : ""; ?>" class="glyphicon glyphicon-minus-sign"></a>
                                                                    </span>
                                                                    <span><?php echo $_SESSION['giohang'][$i]['number']; ?></span>
                                                                    <span class="btn-up-down up">
                                                                        <a href="<?php echo base_url(); ?>user/cart/up/<?php echo isset($row['id']) ? $row['id'] : ""; ?>" class="glyphicon glyphicon-plus-sign"></a>
                                                                    </span>
                                                                </div>
                                                            </td>

                                                        </tr>
                                                        <?php
                                                    }
                                                }
                                                ?>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="col-md-5 ip_right">
                                        <div class="cart-summary order-summary-cart-page">
                                            <h5 class="summary-header mbl">Thông tin đơn hàng</h5>
                                            <div class="summary-main table mtm">
                                                <div class="summary-subtotal row">
                                                    <span class="col">Tạm tính:</span>
                                                    <span class="col txt-right"><?php echo isset($total) ? $total : '0'; ?> VND</span>
                                                </div>
                                            </div>
                                            <div class="summary-total table border-grey-top mtm ptm">
                                                <div class="row">
                                                    <span class="col txt-size-small">
                                                        <span class="txt-bold txt-black">Thành tiền</span>
                                                        <span class="txt-grey">(Đã bao gồm VAT):</span>
                                                    </span>
                                                    <h3 class="col txt-right txt-large txt-bold txt-black"><?php echo isset($total) ? $total : '0'; ?> VND</h3>
                                                </div>
                                            </div>
                                            <div class="summary-control table mt15 mbs">
                                                <input type="hidden" id="totalAmountCartItems" value="1">
                                                <div class="row">
                                                    <a onclick="" class="btn-checkout col submit_btn mtssel-cart-checkout-button" href="javascript:void(0)">
                                                        <span class="btn btn-primary form-control btn-checkout-text">Tiến hành thanh toán</span>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</html>
