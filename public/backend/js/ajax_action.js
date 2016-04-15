function del_img() {
    $("#show_img").attr("src", "");
    $("#btnDelete").hide();
    $("#imageUpload").show();
}
function change_status(name, id) {
    $.ajax({
        url: 'admin/' + name + '/status',
        type: "post",
        dataType: "text",
        data: {id: id}
    }).done(function (result) {
        var status = "";
        var strVar = "";
        $(".btnStatus_" + id + "").html('');
        if (result == "1") {
            strVar += "<span class='fa fa-check-circle-o mauxanh'></span>";
        }
        else {
            strVar += "<span class='fa fa-remove maudo'></span>";
        }
        $(".btnStatus_" + id + "").html(strVar);
    });
}
//Update menu, category
function update(name, id) {
    $.ajax({
        url: 'admin/' + name + '/show_update',
        type: "post",
        dataType: 'json',
        data: {id: id}
    }).done(function (result) {
        var option_parentid = "";
        $.ajax({
            url: 'admin/' + name + '/parent_id',
            type: "post",
            dataType: 'json',
            async: false,
            data: {id: result["parentid"]}
        }).done(function (list) {
            $.each(list, function (index, r) {
                if (result["parentid"] == r["id"]) {
                    option_parentid += " <option selected value='" + r["id"] + "'>" + r["title"] + "</option>";
                }
                else {
                    option_parentid += " <option value='" + r["id"] + "'>" + r["title"] + "</option>";
                }
            });
        });
        var type_content = "", type_product = "";
        if (result["type"] == "content")
            type_content = "selected";
        if (result["type"] == "product")
            type_product = "selected";
        var access_1 = "", access_0 = "";
        if (result["access"] == "1")
            access_1 = "selected";
        if (result["access"] == "0")
            access_0 = "selected";
        var status_1 = "", status_0 = "";
        if (result["status"] == "1")
            status_1 = "selected";
        if (result["status"] == "0")
            status_0 = "selected";
        var html = "";
        html += "<div class=\"row form-group\">";
        html += "                        <div class=\"col-md-4 text-right\">Tên chủ đề<\/div>";
        html += "                        <div class=\"col-md-7\">";
        html += "                            <input name=\"title\" value='" + result["title"] + "' class=\"form-control\" autocomplete=off type=\"text\">";
        html += "                        <\/div>";
        html += "                    <\/div>";
        html += "                    <div class=\"row form-group\">";
        html += "                        <div class=\"col-md-4 text-right\">Liên kết<\/div>";
        html += "                        <div class=\"col-md-7\">";
        html += "                            <input name=\"link\" value='" + result["link"] + "' class=\"form-control\" autocomplete=off type=\"text\">";
        html += "                        <\/div>";
        html += "                    <\/div>";
        html += "                    <div class=\"row form-group\">";
        html += "                        <div class=\"col-md-4 text-right\">Chủ đề cha<\/div>";
        html += "                        <div class=\"col-md-7 parent_id\">";
        html += "                            <select id='parent_id' name=\"parentid\" class=\"form-control\">";
        html += "                                <option value=\"0\">Chọn chủ đề<\/option>" + option_parentid + "";
        html += "                            <\/select>";
        html += "                        <\/div>";
        html += "                    <\/div>";
        html += "                    <div class=\"row form-group\">";
        html += "                        <div class=\"col-md-4 text-right\">Kiểu chủ đề<\/div>";
        html += "                        <div class=\"col-md-7\">";
        html += "                            <select id='type' name=\"type\" class=\"form-control\">";
        html += "                                <option value=\"content\" " + type_content + ">Bài viết<\/option>";
        html += "                                <option value=\"product\" " + type_product + ">Sản phẩm<\/option>";
        html += "                            <\/select>";
        html += "                        <\/div>";
        html += "                    <\/div>";
        html += "                    <div class=\"row form-group\">";
        html += "                        <div class=\"col-md-4 text-right\">Quyền truy cập<\/div>";
        html += "                        <div class=\"col-md-7\">";
        html += "                            <select id='access' name=\"access\" class=\"form-control\">";
        html += "                                <option value=\"1\" " + access_1 + ">Công khai<\/option>";
        html += "                                <option value=\"0\" " + access_0 + ">Riêng tư<\/option>";
        html += "                            <\/select>";
        html += "                        <\/div>";
        html += "                    <\/div>";
        html += "                    <div class=\"row form-group\">";
        html += "                        <div class=\"col-md-4 text-right\">Trạng thái<\/div>";
        html += "                        <div class=\"col-md-7\">";
        html += "                            <select id='status' name=\"status\" class=\"form-control\">";
        html += "                                <option value=\"1\" " + status_1 + ">Xuất bản<\/option>";
        html += "                                <option value=\"0\" " + status_0 + ">Chưa xuất bản<\/option>";
        html += "                            <\/select>";
        html += "                        <\/div>";
        html += "                    <\/div>";
        html += "                <div class=\"modal-footer\">";
        html += "                    <div class=\"row form-group\">";
        html += "                        <div class=\"col-md-11 text-right\">";
        html += "                            <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close<\/button>";
        html += "                            <button type='button' onclick='btnUpdate(\"" + name + "\",\"" + result["id"] + "\")' class=\"btn btn-success\" name=\"update\">Cập nhật</button>";
        html += "                        <\/div>";
        html += "                    <\/div>";
        html += "";
        html += "                <\/div>";

        $(".form_update").html(html);
    });
}
//update product
function update_name(name, id) {
    $.ajax({
        url: 'admin/' + name + '/show_update',
        type: "post",
        dataType: 'json',
        data: {id: id}
    }).done(function (result) {
        var option_parentid = "";
        $.ajax({
            url: 'admin/' + name + '/parent_id',
            type: "post",
            dataType: 'json',
            async: false,
            data: {id: result["catid"]}

        }).done(function (list) {
            $.each(list, function (index, r) {
                if (result["catid"] == r["id"]) {
                    option_parentid += " <option selected value='" + r["id"] + "'>" + r["title"] + "</option>";
                }
                else {
                    option_parentid += " <option value='" + r["id"] + "'>" + r["title"] + "</option>";
                }
            });
        });

        var access_1 = "", access_0 = "";
        if (result["access"] == "1")
            access_1 = "selected";
        if (result["access"] == "0")
            access_0 = "selected";
        var status_1 = "", status_0 = "";
        if (result["status"] == "1")
            status_1 = "selected";
        if (result["status"] == "0")
            status_0 = "selected";
        var n = "";
        if (name == 'product') {
            n = "sản phẩm";
        }
        else {
            n = "bài viết";
        }
        var html = "";
        html += "<div class=\"content_update\">";
        html += "          <!-- Nav tabs -->";
        html += "          <ul class=\"nav nav-tabs form-group\" role=\"tablist\">";
        html += "              <li role=\"presentation\" class=\"active\"><a href=\"#home\" aria-controls=\"home\" role=\"tab\" data-toggle=\"tab\">Thông tin sản phẩm<\/a><\/li>";
        html += "              <li role=\"presentation\"><a href=\"#profile\" aria-controls=\"profile\" role=\"tab\" data-toggle=\"tab\">Chi tiết sản phẩm<\/a><\/li>";
        html += "              <li role=\"presentation\"><a href=\"#messages\" aria-controls=\"messages\" role=\"tab\" data-toggle=\"tab\">Bài viết sản phẩm<\/a><\/li>";
        html += "";
        html += "          <\/ul>";
        html += "";
        html += "         <div class=\"tab-content\">";
        html += "                            <div role=\"tabpanel\" class=\"tab-pane active\" id=\"home\">";
        html += "                                <!-- Home -->";
        html += "                                <div class=\"row form-group\">";
        html += "                                    <div class=\"col-md-4 text-right\">Tên " + n + " <\/div>";
        html += "                                    <div class=\"col-md-7\">";
        html += "                                        <input name=\"name\" value='" + result["name"] + "' class=\"form-control\" autocomplete=off type=\"text\">";
        html += "                                    <\/div>";
        html += "                                <\/div>";
        html += "                                <div class=\"row form-group\">";
        html += "                                    <div class=\"col-md-4 text-right\">Alias<\/div>";
        html += "                                    <div class=\"col-md-7\">";
        html += "                                       <input name=\"alias\" value='" + result["alias"] + "' class=\"form-control\" autocomplete=off type=\"text\">";
        html += "                                    <\/div>";
        html += "                                <\/div>";
        html += "                                <div class=\"row form-group\">";
        html += "                                    <div class=\"col-md-4 text-right\">Chủ đề<\/div>";
        html += "                                    <div class=\"col-md-7\">";
        html += "                                        <select name=\"catid\" class=\"form-control\">";
        html += "                                           <option value=\"0\">Chọn chủ đề<\/option>" + option_parentid + "";
        html += "                                        <\/select>";
        html += "                                    <\/div>";
        html += "                                <\/div>";
        html += "                                <div class=\"row form-group\">";
        html += "                                    <div class=\"col-md-4 text-right\">Hình ảnh<\/div>";
        html += "                                    <div class=\"col-md-7\">";
        html += "                                        <img id='show_img' src=\"" + "/public/img/product/" + result["img"] + "\" />";
        html += "                                        <button id='btnDelete' onclick='del_img()'>Delete</button> ";
        html += "                                        <input type=\"file\" id='imageUpload' name=\"img\" \">";
        html += "                                    <\/div>";
        html += "                                <\/div>";
        html += "                                <div class=\"row form-group\">";
        html += "                                    <div class=\"col-md-4 text-right\">Số lượng<\/div>";
        html += "                                    <div class=\"col-md-7\">";
        html += "                                        <input name=\"number\" value='" + result["number"] + "' class=\"form-control\" autocomplete=off type=\"text\">";
        html += "                                    <\/div>";
        html += "                                <\/div>";
        html += "                                <div class=\"row form-group\">";
        html += "                                    <div class=\"col-md-4 text-right\">Giá<\/div>";
        html += "                                    <div class=\"col-md-7\">";
        html += "                                        <input name=\"price\" value='" + result["price"] + "' class=\"form-control\" autocomplete=off type=\"text\">";
        html += "                                    <\/div>";
        html += "                                <\/div>";
        html += "                                <div class=\"row form-group\">";
        html += "                                    <div class=\"col-md-4 text-right\">Giảm giá<\/div>";
        html += "                                    <div class=\"col-md-7\">";
        html += "                                        <input name=\"price_sale\" value='" + result["price_sale"] + "' class=\"form-control\" autocomplete=off type=\"text\">";
        html += "                                    <\/div>";
        html += "                                <\/div>";
        html += "                                <div class=\"row form-group\">";
        html += "                                    <div class=\"col-md-4 text-right\">Quyền truy cập<\/div>";
        html += "                                    <div class=\"col-md-7\">";
        html += "                                        <select name=\"access\" class=\"form-control\">";
        html += "                                           <option value=\"1\" " + access_1 + ">Công khai<\/option>";
        html += "                                           <option value=\"0\" " + access_0 + ">Riêng tư<\/option>";
        html += "                                        <\/select>";
        html += "                                    <\/div>";
        html += "                                <\/div>";
        html += "                                <div class=\"row form-group\">";
        html += "                                    <div class=\"col-md-4 text-right\">Trạng thái<\/div>";
        html += "                                    <div class=\"col-md-7\">";
        html += "                                        <select name=\"status\" class=\"form-control\">";
        html += "                                           <option value=\"1\" " + status_1 + ">Xuất bản<\/option>";
        html += "                                           <option value=\"0\" " + status_0 + ">Chưa xuất bản<\/option>";
        html += "                                        <\/select>";
        html += "                                    <\/div>";
        html += "                                <\/div>";
        html += "                            <\/div>";
        html += "                            <div role=\"tabpanel\" class=\"tab-pane\" id=\"profile\">";
        html += "                                <textarea id='txt_detail' name=\"detail\" rows=\"8\" cols=\"40\">" + result["detail"] + "<\/textarea>";
        html += "                                <script type=\"text\/javascript\">";
        html += "                                    CKEDITOR.replace('detail')";
        html += "                                <\/script>";
        html += "                            <\/div>";
        html += "                            <div role=\"tabpanel\" class=\"tab-pane\" id=\"messages\">";
        html += "                                <textarea id='txt_introtext' name=\"introtext\" rows=\"8\" cols=\"40\">" + result["introtext"] + "<\/textarea>";
        html += "                                <script type=\"text\/javascript\">";
        html += "                                    CKEDITOR.replace('introtext')";
        html += "                                <\/script>";
        html += "                            <\/div>";
        html += "";
        html += "                        <\/div>";
        html += "                <div class=\"modal-footer\">";
        html += "                    <div class=\"row form-group\">";
        html += "                        <div class=\"col-md-11 text-right\">";
        html += "                            <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close<\/button>";
        html += "                            <button type='button' onclick='btnUpdate_name(\"" + name + "\",\"" + result["id"] + "\")' class=\"btn btn-success\" name=\"update\">Cập nhật</button>";
        html += "                        <\/div>";
        html += "                    <\/div>";
        html += "";
        html += "                <\/div>";
        html += "      <\/div>";

        $(".form_update").html(html);
    });
}
//Update Content
function update_content(name, id) {
    $.ajax({
        url: 'admin/' + name + '/show_update',
        type: "post",
        dataType: 'json',
        data: {id: id}
    }).done(function (result) {
        var option_parentid = "";
        $.ajax({
            url: 'admin/' + name + '/parent_id',
            type: "post",
            dataType: 'json',
            async: false,
            data: {id: result["catid"]}

        }).done(function (list) {
            $.each(list, function (index, r) {
                if (result["catid"] == r["id"]) {
                    option_parentid += " <option selected value='" + r["id"] + "'>" + r["title"] + "</option>";
                }
                else {
                    option_parentid += " <option value='" + r["id"] + "'>" + r["title"] + "</option>";
                }
            });
        });

        var access_1 = "", access_0 = "";
        if (result["access"] == "1")
            access_1 = "selected";
        if (result["access"] == "0")
            access_0 = "selected";
        var status_1 = "", status_0 = "";
        if (result["status"] == "1")
            status_1 = "selected";
        if (result["status"] == "0")
            status_0 = "selected";
        var n = "";
        if (name == 'product') {
            n = "sản phẩm";
        }
        else {
            n = "bài viết";
        }
        var html = "";
        html += "<div class=\"content_update\">";
        html += "          <!-- Nav tabs -->";
        html += "          <ul class=\"nav nav-tabs form-group\" role=\"tablist\">";
        html += "              <li role=\"presentation\" class=\"active\"><a href=\"#home\" aria-controls=\"home\" role=\"tab\" data-toggle=\"tab\">Thông tin sản phẩm<\/a><\/li>";
        html += "              <li role=\"presentation\"><a href=\"#profile\" aria-controls=\"profile\" role=\"tab\" data-toggle=\"tab\">Chi tiết sản phẩm<\/a><\/li>";
        html += "              <li role=\"presentation\"><a href=\"#messages\" aria-controls=\"messages\" role=\"tab\" data-toggle=\"tab\">Bài viết sản phẩm<\/a><\/li>";
        html += "";
        html += "          <\/ul>";
        html += "";
        html += "         <div class=\"tab-content\">";
        html += "                            <div role=\"tabpanel\" class=\"tab-pane active\" id=\"home\">";
        html += "                                <!-- Home -->";
        html += "                                <div class=\"row form-group\">";
        html += "                                    <div class=\"col-md-4 text-right\">Tên " + n + " <\/div>";
        html += "                                    <div class=\"col-md-7\">";
        html += "                                        <input name=\"name\" value='" + result["title"] + "' class=\"form-control\" autocomplete=off type=\"text\">";
        html += "                                    <\/div>";
        html += "                                <\/div>";
        html += "                                <div class=\"row form-group\">";
        html += "                                    <div class=\"col-md-4 text-right\">Alias<\/div>";
        html += "                                    <div class=\"col-md-7\">";
        html += "                                       <input name=\"alias\" value='" + result["alias"] + "' class=\"form-control\" autocomplete=off type=\"text\">";
        html += "                                    <\/div>";
        html += "                                <\/div>";
        html += "                                <div class=\"row form-group\">";
        html += "                                    <div class=\"col-md-4 text-right\">Chủ đề<\/div>";
        html += "                                    <div class=\"col-md-7\">";
        html += "                                        <select name=\"catid\" class=\"form-control\">";
        html += "                                           <option value=\"0\">Chọn chủ đề<\/option>" + option_parentid + "";
        html += "                                        <\/select>";
        html += "                                    <\/div>";
        html += "                                <\/div>";
        html += "                                <div class=\"row form-group\">";
        html += "                                    <div class=\"col-md-4 text-right\">Hình ảnh<\/div>";
        html += "                                    <div class=\"col-md-7\">";
        html += "                                        <img id='show_img' src=\"" + "/public/img/content/" + result["img"] + "\" />";
        html += "                                        <button id='btnDelete' onclick='del_img()'>Delete</button> ";
        html += "                                        <input type=\"file\" id='imageUpload' name=\"img\" \">";
        html += "                                    <\/div>";
        html += "                                <\/div>";
        html += "                                <div class=\"row form-group\">";
        html += "                                    <div class=\"col-md-4 text-right\">Quyền truy cập<\/div>";
        html += "                                    <div class=\"col-md-7\">";
        html += "                                        <select name=\"access\" class=\"form-control\">";
        html += "                                           <option value=\"1\" " + access_1 + ">Công khai<\/option>";
        html += "                                           <option value=\"0\" " + access_0 + ">Riêng tư<\/option>";
        html += "                                        <\/select>";
        html += "                                    <\/div>";
        html += "                                <\/div>";
        html += "                                <div class=\"row form-group\">";
        html += "                                    <div class=\"col-md-4 text-right\">Trạng thái<\/div>";
        html += "                                    <div class=\"col-md-7\">";
        html += "                                        <select name=\"status\" class=\"form-control\">";
        html += "                                           <option value=\"1\" " + status_1 + ">Xuất bản<\/option>";
        html += "                                           <option value=\"0\" " + status_0 + ">Chưa xuất bản<\/option>";
        html += "                                        <\/select>";
        html += "                                    <\/div>";
        html += "                                <\/div>";
        html += "                            <\/div>";
        html += "                            <div role=\"tabpanel\" class=\"tab-pane\" id=\"profile\">";
        html += "                                <textarea id='txt_fulltext' name=\"fulltext\" rows=\"8\" cols=\"40\">" + result["fulltext"] + "<\/textarea>";
        html += "                                <script type=\"text\/javascript\">";
        html += "                                    CKEDITOR.replace('fulltext')";
        html += "                                <\/script>";
        html += "                            <\/div>";
        html += "                            <div role=\"tabpanel\" class=\"tab-pane\" id=\"messages\">";
        html += "                                <textarea id='txt_introtext' name=\"introtext\" rows=\"8\" cols=\"40\">" + result["introtext"] + "<\/textarea>";
        html += "                                <script type=\"text\/javascript\">";
        html += "                                    CKEDITOR.replace('introtext')";
        html += "                                <\/script>";
        html += "                            <\/div>";
        html += "";
        html += "                        <\/div>";
        html += "                <div class=\"modal-footer\">";
        html += "                    <div class=\"row form-group\">";
        html += "                        <div class=\"col-md-11 text-right\">";
        html += "                            <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close<\/button>";
        html += "                            <button type='button' onclick='btnUpdate_content(\"" + name + "\",\"" + result["id"] + "\")' class=\"btn btn-success\" name=\"update\">Cập nhật</button>";
        html += "                        <\/div>";
        html += "                    <\/div>";
        html += "";
        html += "                <\/div>";
        html += "      <\/div>";

        $(".form_update").html(html);
    });
}
function btnUpdate(name, id) {

    var title = $("input[name=title]").val();
    var link = $("input[name=link]").val();

    var parent_id = $('select[name=parentid]').val();
    var type = $('select[name=type]').val();
    var access = $('select[name=access]').val();
    var status = $('select[name=status]').val();
    $.ajax({
        url: 'admin/' + name + '/update',
        type: "post",
        data: {id: id, title: title, link: link, parent_id: parent_id, type: type, access: access, status: status}
    }).done(function (result) {
        if (result == "1")
            alert("Thành công!");
        else
            alert("Thất bại!");

    });
    location.reload();
}
//btnUpdate product
function btnUpdate_name(n, id) {
    var image = "";

    var has_selected_file = $('input[type=file]').filter(function () {
        return $.trim(this.value) != "";
    }).length > 0;

    if (!has_selected_file && $("#show_img").attr("src") == "") {
        alert("Chưa chọn ảnh!");
        return false;
    }

    if (has_selected_file) {
        img_upload = $('#imageUpload').val();
        image = img_upload.replace(/\\/g, '/').replace(/.*\//, '');
    }
    if ($("#show_img").attr("src") != "") {
        var img = $("#show_img").attr("src");
        img = img.split("/");
        image = img[img.length - 1];
    }
    var name = $("input[name=name]").val();
    var alias = $("input[name=alias]").val();
    var number = $("input[name=number]").val();
    var price = $("input[name=price]").val();
    var price_sale = $("input[name=price_sale]").val();
    var catid = $('select[name=catid]').val();
    var access = $('select[name=access]').val();
    var status = $('select[name=status]').val();
    var detail = CKEDITOR.instances.txt_detail.getData();
    var introtext = CKEDITOR.instances.txt_introtext.getData();
    $.ajax({
        url: 'admin/' + n + '/update',
        type: "post",
        data: {
            id: id, name: name, alias: alias, catid: catid, image: image, detail: detail,
            introtext: introtext, access: access, status: status}
    }).done(function (result) {
        console.log(result);
        if (result == "1")
            alert("Thành công!");
        else
            alert("Thất bại!");

    });
    location.reload();
}
//btnUpdate content
function btnUpdate_content(n, id) {
    var image = "";

    var has_selected_file = $('input[type=file]').filter(function () {
        return $.trim(this.value) != "";
    }).length > 0;

    if (!has_selected_file && $("#show_img").attr("src") == "") {
        alert("Chưa chọn ảnh!");
        return false;
    }

    if (has_selected_file) {
        img_upload = $('#imageUpload').val();
        image = img_upload.replace(/\\/g, '/').replace(/.*\//, '');
    }
    if ($("#show_img").attr("src") != "") {
        var img = $("#show_img").attr("src");
        img = img.split("/");
        image = img[img.length - 1];
    }
    var title = $("input[name=title]").val();
    var alias = $("input[name=alias]").val();
    var catid = $('select[name=catid]').val();
    var access = $('select[name=access]').val();
    var status = $('select[name=status]').val();
    var detail = CKEDITOR.instances.txt_detail.getData();
    var introtext = CKEDITOR.instances.txt_introtext.getData();
    $.ajax({
        url: 'admin/' + n + '/update',
        type: "post",
        data: {
            id: id, name: name, alias: alias, catid: catid, image: image, detail: detail,
            introtext: introtext, access: access, status: status}
    }).done(function (result) {
        console.log(result);
        if (result == "1")
            alert("Thành công!");
        else
            alert("Thất bại!");

    });
    location.reload();
}
