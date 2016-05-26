<h3><i class="fa fa-shopping-cart"></i>  Tin tức</h3>
<?php foreach ($list as $v): ?>
    <h3><a href="tin-tuc/<?php echo $v['alias']; ?>"><?php echo $v['title']; ?></a></h3>
    <div class="row">
        <div class="col-md-4 col-sm-4 col-xs-4">
            <a href="tin-tuc/<?php echo $v['alias']; ?>">
                <img src="public/img/content/<?php echo $v['img']; ?>" alt="<?php echo $v['img']; ?>">
            </a>
        </div>
        <div class="col-md-8 col-sm-7 col-xs-7">
            <p><?php echo $v['introtext']; ?></p>
            <div class="text-right">
                <a href="tin-tuc/<?php echo $v['alias']; ?>">More</a>
            </div>
        </div>
    </div>
<?php endforeach; ?>
<div class="text-center">
    <ul class="pagination">
        <?php echo $links; ?>
    </ul>
</div>
