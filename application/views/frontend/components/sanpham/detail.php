<div class="row">
	<h3><i class="fa fa-shopping-cart"></i>   Chi tiết sản phẩm</h3>
	<h3 class="text-center" style='border-bottom: 1px solid rgba(128, 128, 128, 0.15);margin-bottom: 15px; padding-bottom: 15px;'><?php echo $row['name']; ?></h3>
	<div class="info-detail">
		<div class="col-md-4">
			<img src="<?php echo CI_BASE_URL; ?>public/img/product/<?php echo $row['img']; ?>" alt="Hinh anh san pham">
		</div>
		<div class="col-md-8">
			<p>Gia: <span style="color:red; font-size:18px"><?php echo number_format($row['price']); ?> vnd</span></p>
			<p><i class="fa fa-check-square-o"></i>  Đặt Online hoặc gọi: 19006868 ưu tiên khuyến mãi (SL có hạn)</p>
			<p><i class="fa fa-check-square-o"></i>  Bảo hành chính hãng: 12 tháng</p>
			<p><i class="fa fa-check-square-o"></i>  Giao hàng tận nơi miễn phí trong 30 phút</p>
			<p><i class="fa fa-check-square-o"></i>  Đổi trả sản phẩm lỗi trong 14 ngày</p>
			<p class="text-center">
				<a href="" class="btn btn-danger btn-lg" style="width:100%;" role="button">Đặt mua</a>
			</p>
		</div>
	</div>
</div>
