$(function () {
    $("#check").click(function () {
        $(":checkbox").prop('checked', $(this).prop("checked"));
    });
});
function add_event(name, id) {
    if (name == "content") {
        delete_name(name, id);
    }
    else if (name == "product") {
        delete_name(name, id);
    }
    else {
        del_name(name, id);
    }
}

function delete_all(name) {
    var val = [], i = 0;
    $('.check-delete:checked').each(function () {
        val[i++] = $(this).val();
    });
    var id = [];
    $.each(val, function (index, value) {
        id.push(value);
    });

    if (name == "content") {
        delete_name(name, id);
    }
    else if (name == "product") {
        delete_name(name, id);
    }
    else {
        del_name(name, id);
    }
}

function del_name(name, id) {
    $.ajax({
        url: 'admin/' + name + '/do_delete',
        type: "post",
        dataType: "json",
        data: {id: id}
    }).done(function (result) {
        $('div.show-table').html('');
        var html = "", status = "";
        html += "<table class='table table-bordered table-hover' style='border: 1px solid gainsboro;'>";
        html += "<thead>";
        html += "<tr>";
        html += "<th width='40px'><input type='checkbox' id='check'><button id='delete-all' onclick='delete_all(\"" + name + "\")'>Xoá</button></th>";
        html += "<th width='40px'>ID</th>";
        html += "<th>Tên chủ đề</th>";
        html += "<th>Liên kết</th>";
        html += "<th width='95px' class='text-center'>Trạng thái</th>";
        html += "<th>Ngày đăng</th>";
        html += "<th>Người đăng</th>";
        html += "<th width='20px'>Xoá</th>";
        html += "<th width='20px'>Sửa</th>";
        html += "</tr>";
        html += "</thead>";
        html += "<tbody>";
        $.each(result, function (key, item) {
            status = (item['status'] == 1) ? "<span class='fa fa-check-circle-o mauxanh'></span>" : "<span class='fa fa-remove maudo'></span>";
            html += "<tr>";
            html += "<td><div class='check'><input type='checkbox' class='check-delete' value='" + item['id'] + "'/></div></td>";
            html += "<td>" + item['id'] + "</td>";
            html += "<td><a href='admin/" + name + "/update/" + item['id'] + "'>" + item['title'] + "</a></td>";
            html += "<td>" + item['link'] + "</td>";
            html += "<td class='text-center status'><button onclick='change_status(\"" + name + "\",\"" + item['id'] + "\")' class='btnStatus_" + item['id'] + " ''>" + status + "</button></td>";
            html += "<td>" + item['created'] + "</td>";
            html += "<td>" + item['created_by'] + "</td>";
            html += "<td><button class='fa fa-trash-o fa-lg btnDelete-" + name + "' id='" + name + "_" + item['id'] + "' onclick='add_event(\"" + name + "\",\"" + item["id"] + "\")' ></button></td>";
            html += "<td><a href='admin/" + name + "update/" + item['id'] + "'><i class='fa fa-edit fa-lg'></i></a></td>";
            html += "</tr>";
        });
        html += "</tbody>";
        html += "</table>";
        $('.show-table').html(html);
    });
}

function delete_name(name, id) {

    $.ajax({
        url: 'admin/' + name + '/do_delete',
        type: 'post',
        dataType: 'json',
        data: {id: id}
    }).done(function (result) {
        var n = "";
        var ten = "";
        if (name == 'product') {
            n = "sản phẩm";
        }
        else {
            n = "bài viết";
        }

        $('div.show-table').html('');
        var html = "";
        html += "<table class='table table-bordered table-hover' style='border: 1px solid gainsboro;'>";
        html += "<thead>";
        html += "<tr>";
        html += "<th width='40px'><input type='checkbox' id='check'><button id='delete-all' onclick='delete_all(\"" + name + "\")'>Xoá</button></th>";
        html += "<th width='40px'>ID</th>";
        html += "<th>Tên " + n + "</th>";
        html += "<th>Hình ảnh</th>";
        html += "<th width='95px' class='text-center'>Trạng thái</th>";
        html += "<th>Ngày đăng</th>";
        html += "<th>Người đăng</th>";
        html += "<th width='20px'>Xoá</th>";
        html += "<th width='20px'>Sửa</th>";
        html += "</tr>";
        html += "</thead>";
        html += "<tbody>";
        $.each(result, function (key, item) {
            if (name == 'product') {
                ten = item['name'];
            }
            else {
                ten = item['title'];
            }
            var status = (item['status'] == 1) ? "<span class='fa fa-check-circle-o mauxanh'></span>" : "<span class='fa fa-remove maudo'></span>";
            html += "<td><div class='check'><input type='checkbox' class='check-delete' value='" + item['id'] + "'/></div></td>";
            html += "<td>" + item['id'] + "</td>"
            html += "<td><a href='admin/" + name + "/update/" + item['id'] + "'>" + ten + "</a></td>";
            html += "<td class='text-center'><img src='public/img/" + name + "/" + item["img"] + "' height='50px' alt='" + item["name"] + "'></td>";
            html += "<td class='text-center status'><button onclick='change_status(\"" + name + "\",\"" + item['id'] + "\")' class='btnStatus_" + item['id'] + " ''>" + status + "</button></td>";
            html += "<td>" + item["created"] + "</td>";
            html += "<td>" + item["created_by"] + "</td>";
            html += "<td><button class='fa fa-trash-o fa-lg btnDelete-" + name + "' id='" + name + "_" + item['id'] + "' onclick='add_event(\"" + name + "\",\"" + item["id"] + "\")' ></button></td>";
            html += "<td><a href='admin/" + name + "/update/$id'><i class='fa fa-edit fa-lg'></i></a></td>";
            html += "</tr>";
        });
        html += "</tbody>";
        html += "</table>";
        $('.show-table').html(html);
    });
}
