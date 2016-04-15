
			<h3><i class="fa fa-shopping-cart"></i>  Dịch vụ</h3>
			<?php foreach ($list as $v): ?>
			<h3><a href="dich-vu/<?php echo $v['alias']; ?>"><?php echo $v['title']; ?></a></h3>
			<div class="row">
				<div class="col-md-4">
					<a href="dich-vu/<?php echo $v['alias']; ?>">
						<img src="<?php echo CI_BASE_URL; ?>public/img/content/<?php echo $v['img']; ?>" alt="<?php echo $v['img']; ?>" style="width: 100%;">
					</a>
				</div>
				<div class="col-md-8">
					<p><?php echo $v['introtext']; ?></p>
					<div class="text-right">
						<a href="dich-vu/<?php echo $v['alias']; ?>">More</a>
					</div>
				</div>
			</div>
			<?php endforeach; ?>




<div class="text-center">
	<ul class="pagination">
		<?php echo $links; ?>
	</ul>
</div>
