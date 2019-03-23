$(document).on('change', '#TenPhim_HomNay', function () {
    var ten1 = $("#TenPhim_HomNay").val();
    $.ajax({
        method: "POST",
        url: "Services/XuatChieu.asmx/GetXuatChieu", 
        //cache: true,
        //async: false,
        data: { ten: ten1 },
        //contentType: "application/json; charset = utf-8",
        dataType: "xml",
        success: function (data) {
            $(data).find('XuatChieuM').each(function () {
                var tenphim = $(this).find('ten_phim').text();
                var giochieu = $(this).find('giochieu').text();
                $("<tr>" +
                    "<td>" + tenphim + "</td>" +
                    "<td>" + giochieu + "</td>" +
                    "<td>" + 1 + "</td>"
                    + "</tr > ").appendTo("#timkiemhomnay");
            });
           
        },
        error: function () {
            alert("lỗi");
        }
    });
});


$(document).on('change', '#TenPhim_NgayMai', function () {
    var ten1 = $("#TenPhim_NgayMai").val();
    $.ajax({
        method: "POST",
        url: "Services/XuatChieu_ngaymai.asmx/GetXuatChieu_NgayMai",
        data: { ten: ten1 },
        dataType: "xml",
        success: function (data) {
            $(data).find('XuatChieuM').each(function () {
                var tenphim = $(this).find('ten_phim').text();
                var giochieu = $(this).find('giochieu').text();
                $("<tr>" +
                    "<td>" + tenphim + "</td>" +
                    "<td>" + giochieu + "</td>" +
                    "<td>" + 1 + "</td>"
                    + "</tr > ").appendTo("#phim_ngaymai");
            });

        },
        error: function () {
            alert("lỗi");
        }
    });
});