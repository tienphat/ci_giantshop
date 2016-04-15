<div class="row">
	<h3><i class="fa fa-shopping-cart"></i>   Danh mục sản phẩm</h3>
	<?php foreach($list as $row): ?>
	<div class="col-xs-6 col-sm-4 col-md-3">
		<div class="thumbnail">
			<div class="img-product">
				<a href="<?php echo $row['alias']; ?>">
					<img src="<?php echo CI_BASE_URL; ?>public/img/product/<?php echo $row['img']; ?>" alt="Hình ảnh sản phẩm">
				</a>
			</div>
			<div class="caption">
				<div class="item-title">
					<a href="<?php echo $row['alias']; ?>">
						<h3><?php echo $row['name']; ?></h3>
					</a>
				</div>
				<div class="item-content">
					<p>
						<?php
						if(number_format($row['price_sale']) != 0){
							echo "<span>".$row['price_sale']."<sup><u>đ</u></sup></span>";
						  echo " <span class='is_sale'>".number_format($row['price'])."<sup><u>đ</u></sup></span>";
						}else{
						  echo "<span class='no_sale'>".number_format($row['price'])."<sup><u>đ</u></sup></span>";
						}
						?>
					</p>
				</div>
			</div>
			<div class="bg_hidden">
				<a href="<?php echo $row['alias']; ?>" class="over_bg"></a>
				<a href="" class="btn btn-primary" role="button">Đặt mua</a>
			</div>
		</div>
	</div>
	<?php endforeach; ?>
</div>
