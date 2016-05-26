//===============Members, user==================//
function delete_member(name) {
    var val = [], i = 0;
    $('.check-delete:checked').each(function () {
        val[i++] = $(this).val();
    });
    var id = [];
    $.each(val, function (index, value) {
        id.push(value);
    });
    del_member(name, id);
}
function del_member(name, id) {
    $.ajax({
        url: 'admin/' + name + '/do_delete',
        type: "post",
        dataType: "json",
        data: {id: id}
    }).done(function (result) {
        $('div.show-table').html('');
        var n = "";
        var html = "", status = "";
        html += "<table class='table table-bordered table-hover' style='border: 1px solid gainsboro;'>";
        html += "<thead>";
        html += "<tr>";
        html += "<th width='40px'><input type='checkbox' id='check'><button id='delete-all' onclick='delete_member(\"" + name + "\")'>Xoá</button></th>";
        html += "<th width='40px'>ID</th>";
        html += "<th>Họ tên</th>";
        html += "<th class='text-center'>Username</th>";
        html += "<th class='text-center'>Email</th>";
        html += "<th class='text-center'>Địa chỉ</th>";
        html += "<th class='text-center'>Điện thoại</th>";
        html += "<th width='95px' class='text-center'>Trạng thái</th>";
        html += "<th>Ngày tạo</th>";
        html += "<th width='20px'>Xoá</th>";
        html += "</tr>";
        html += "</thead>";
        html += "<tbody>";
        $.each(result, function (key, item) {
            if (name == "members") {
                n = item['name'];
            }
            else {
                n = item['fullname'];
            }
            status = (item['status'] == 1) ? "<span class='fa fa-check-circle-o mauxanh'></span>" : "<span class='fa fa-remove maudo'></span>";
            html += "<tr>";
            html += "<td><div class='check'><input type='checkbox' class='check-delete' value='" + item['id'] + "'/></div></td>";
            html += "<td>" + item['id'] + "</td>";
            html += "<td>" + n + "</td>";
            html += "<td class='text-center'>" + item['username'] + "</td>";
            html += "<td class='text-center'>" + item['email'] + "</td>";
            html += "<td class='text-center'>" + item['address'] + "</td>";
            html += "<td class='text-center'>" + item['phone'] + "</td>";
            html += "<td class='text-center status'>" + status + "</td>";
            html += "<td>" + item['created'] + "</td>";
            html += "<td><button class='fa fa-trash-o fa-lg btnDelete-" + name + "' id='" + name + "_" + item['id'] + "' onclick='del_member(\"" + name + "\",\"" + item["id"] + "\")' ></button></td>";
            html += "</tr>";
        });
        html += "</tbody>";
        html += "</table>";
        $('.show-table').html(html);
    });
}