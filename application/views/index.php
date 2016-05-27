<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <base href="<?php echo CI_BASE_URL; ?>">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="wclassth=device-wclassth, initial-scale=1">
        <link rel="shortcut icon" type="image/x-icon" href="<?php echo CI_BASE_URL; ?>public/img/shortcut.png" />
        <title>GiantShop - Mua hàng trực tuyến giá rẻ</title>

        <!-- Bootstrap CSS -->
        <link href="<?php echo CI_BASE_URL; ?>public/frontend/css/bootstrap.css" rel="stylesheet">
        <link href="<?php echo CI_BASE_URL; ?>public/frontend/css/opensans.css" rel="stylesheet">
        <link href="<?php echo CI_BASE_URL; ?>public/frontend/css/template.css" rel="stylesheet">
        <link href="<?php echo CI_BASE_URL; ?>public/frontend/css/font-awesome.min.css" rel="stylesheet">
        <!-- jQuery -->
        <script src="<?php echo CI_BASE_URL; ?>public/frontend/js/js_frontend.js"></script>
        <!--<script src="<?php echo CI_BASE_URL; ?>public/frontend/js/jquery.min.js"></script>-->
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="<?php echo CI_BASE_URL; ?>public/frontend/js/jquery2.js"></script>
        <!-- Bootstrap JavaScript -->
        <script src="<?php echo CI_BASE_URL; ?>public/frontend/js/bootstrap.js"></script>
    </head>
    <body>
        <!-- Header -->
        <div class="header">
            <?php $this->load->view('frontend/modules/header'); ?>
        </div>

        <!-- Mainmenu -->
        <div class="mainmenu">
            <?php $this->load->view('frontend/modules/mainmenu'); ?>
        </div>

        <!-- Service -->
        <div class="service ">
            <?php $this->load->view('frontend/modules/service') ?>
        </div>

        <!-- Slideshow -->
        <div class="slideshow">
            <?php $this->load->view('frontend/modules/slideshow') ?>
        </div>

        <!-- Main -->
        <div class="main">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-4 col-xs-12 main_left">
                        <div class="ml-box-left">
                            <?php $this->load->view('frontend/modules/main_left'); ?>
                        </div>
                    </div>
                    <div class="col-md-9 col-sm-8 col-xs-12 main_right">
                        <div class="ml-box-right">
                            <?php $this->load->view('frontend/modules/main_right'); ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer -->
        <div class="footer">

            <?php $this->load->view('frontend/modules/footer'); ?>

        </div>

        <!-- Copyright -->
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <h4>&copy; Bản quyền thuộc về TienPhat</h4>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
