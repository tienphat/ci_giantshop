<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <base href="<?php echo CI_BASE_URL; ?>">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Administrator</title>

        <!-- Bootstrap CSS -->
        <link href="public/backend/css/bootstrap.css" rel="stylesheet">
        <link href="public/backend/css/template.css" rel="stylesheet">
        <link href="public/backend/css/font-awesome.min.css" rel="stylesheet">
        <!-- jQuery -->
        <script src="public/frontend/js/jquery.js"></script>
        <script src="public/backend/ckeditor/ckeditor.js"></script>
        <script src="public/backend/js/ajax-backend.js"></script>
        <script src="public/backend/js/ajax_action.js"></script>
        <!-- Bootstrap JavaScript -->
        <script src="public/frontend/js/bootstrap.js"></script>

    </head>
    <body>
        <!-- Nav -->
        <div class="header">
            <div class="container">
                <?php $this->load->view('backend/modules/mainmenu'); ?>
            </div>

        </div>
        <div class="content">
            <div class="container">
                <div class="row tieu_de">
                    <div class="container">
                        <nav class="navbar navbar-default">
                            <div class="col-md-4">
                                <p><strong><i class="fa fa-database fa-lg"></i>  Tiêu đề quản lý</strong></p>
                            </div>
                            <div class="col-md-8 text-right">
                                <?php $this->load->view('backend/modules/toolbar'); ?>
                            </div>
                        </nav>
                    </div>
                </div>
                <div class="row noi_dung">
                    <div class="container">
                        <!-- Noi dung -->
                        <?php
                        if (isset($folder) && isset($view)) {
                            $this->load->view('backend/pages/' . $folder . '/' . $view);
                        }
                        ?>
                        <!-- End noi dung -->
                    </div>
                </div>
            </div>
        </div>


    </body>
</html>
