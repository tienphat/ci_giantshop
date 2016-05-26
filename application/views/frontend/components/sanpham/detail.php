<div class="row">
    <h3><i class="fa fa-shopping-cart"></i>   Chi tiết sản phẩm</h3>
    <h3 class="text-center" style="border-bottom: 1px solid rgba(128, 128, 128, 0.15);margin-bottom: 15px; padding-bottom: 15px;"><?php echo $row['name']; ?></h3>
    <div class="info-detail">
        <div class="col-md-4">
            <img src="<?php echo CI_BASE_URL; ?>public/img/product/<?php echo $row['img']; ?>" alt="Hinh anh san pham">
        </div>
        <div class="col-md-8">
            <p>
                <span style="color:red; font-size:18px">
                    <?php
                    if (number_format($row['price_sale']) != "") {
                        echo "<span>" . number_format($row['price_sale'], 0, '.', '.') . "<sup><u>đ</u></sup></span>";
                    } else {
                        echo "<span class='no_sale'>" . number_format($row['price'], 0, '.', '.') . "<sup><u>đ</u></sup></span>";
                    }
                    ?>
                </span>
            </p>
            <p><i class="fa fa-check-square-o"></i>  Đặt Online hoặc gọi: 19006868 ưu tiên khuyến mãi (SL có hạn)</p>
            <p><i class="fa fa-check-square-o"></i>  Bảo hành chính hãng: 12 tháng</p>
            <p><i class="fa fa-check-square-o"></i>  Giao hàng tận nơi miễn phí trong 30 phút</p>
            <p><i class="fa fa-check-square-o"></i>  Đổi trả sản phẩm lỗi trong 14 ngày</p>
            <p class="text-center">
                <button onclick="dat_mua('<?php echo $row['id']; ?>')" class="btn btn-danger btn-lg btn_mua_ngay" role="button">Mua ngay</button>
            </p>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="d_box"></div>
        <div class="dt_head">
            <h2>Giới thiệu sản phẩm</h2>
        </div>
        <div class="dt_content">
            <?php echo $row['introtext']; ?>
        </div>
    </div>
    <div class="col-md-12">
        <div class="d_box"></div>
        <div class="db_head">
            <h2>Thông tin sản phẩm</h2>
        </div>
        <div class="db_content">
            <?php echo $row['detail']; ?>
        </div>
    </div>

</div>
