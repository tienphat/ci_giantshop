<h3><i class="fa fa-shopping-cart"></i>  Liên hệ</h3>
<div class="map">
		<div class="row">
		  	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.269535097734!2d105.83050801432836!3d21.02189859338978!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab9cdf0159c5%3A0x4e9be7feabb2d863!2zTmfDtSAxODEsIEjDoG5nIELhu5l0LCDEkOG7kW5nIMSQYSwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2svn!4v1459175043036" width="100%" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
		</div>
</div>
<div class="info-contact">
	<h3>Liên hệ với chúng tôi</h3>
	<div class="row">
		<div class="col-md-5">

			<?php
				echo validation_errors();
				echo form_open(base_url('/lien-he'));
			?>
			<div class="form-contact form-group">
				<div class="text-left">Tên<span class="star">*</span></div>
					<input type="text" class="form-control" name="fullname">
			</div>
			<div class="form-contact form-group">
				<div class="text-left">Email<span class="star">*</span></div>
					<input type="text" class="form-control" name="email">
			</div>
			<div class="form-contact form-group">
				<div class="text-left">Điện thoại<span class="star">*</span></div>
					<input type="text" class="form-control" name="phone">
			</div>
			<div class="form-contact form-group">
				<div class="text-left">Tiêu đề liên hệ<span class="star">*</span></div>
					<input type="text" class="form-control" name="title">
			</div>
			<div class="form-contact form-group">
				<div class="text-left">Nội dung liên hệ<span class="star">*</span></div>
					<textarea name="content" id="content" class="form-control" cols="33" rows="10"></textarea>
			</div>
			<div class="form-contact form-group">
				<div class="text-left"></div>
					<input type="submit" class=" btn btn-default btn-danger" name="send" value="Send">
			</div>
		</form>
		</div>
		<div class="col-md-7">
			<a class="logo" href="<?php echo CI_BASE_URL; ?>" style="margin: 30px 0;float: left;width: 100%; ">
				<img alt="Bike-themes" src="<?php echo CI_BASE_URL; ?>public/img/ic_shop.png">
			</a>
			<p style="font-size:14px; color:#777;margin-bottom: 20px; margin-top:20px;">GiantShop được thành lập với niềm đam mê và khát vọng thành công trong lĩnh vực Thương mại điện tử. Chúng tôi đã và đang khẳng định được vị trí hàng đầu bằng những sản phẩm</p>
			<ul style="list-style:none; margin:0px;">
				<li>
					<p style="color:#333">
					<span style="color:#777" class="glyphicon glyphicon-map-marker"></span> &nbsp; Địa chỉ: Ngõ 181 Tôn Đức Thắng - Đống Đa - Hà Nội</p>
				</li>
				<li>
					<p style="color:#333">
					<span style="color:#777" class="glyphicon glyphicon-earphone"></span> &nbsp;  (+84)967 085 852
				</p></li>
				<li>
					<p style="color:#333">
						<i style="color:#777" class="fa fa-archive"></i> &nbsp;  (+84)967 085 852
					</p>
				</li>
				<li>
					<p style="color:#383838">
						<span style="color:#777" class="glyphicon glyphicon-envelope"></span> &nbsp;<span style="color:#777"> quangphatc3@gmailcom</span>
					</p>
				</li>
			</ul>
		</div>
	</div>

</div>
