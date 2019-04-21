$(document).on('change', '#namgd', function () {
    var namgiaodich = $("#namgd").val();
    $("#timkiemhomnay").html("");
    //alert(namgiaodich);
    $.ajax({
        method: "POST",
        url: "Services/DSLichSuGD.asmx/GetDanhSach", 
        //cache: true,
        //async: false,
        data: { namgd: namgiaodich },
        //contentType: "application/json; charset = utf-8",
        dataType: "xml",
        success: function (data) {
            $(data).find('DSLichSuGD1').each(function () {
                $("<tr>" +
                    "<td>" + $(this).find('sTenHoaDon').text() + "</td>" +
                    "<td>" + $(this).find('sNoiDungsua').text() + "</td>" +
                    "<td>" + $(this).find('dNgayLapHD').text() + "</td>" +
                    "<td>" + $(this).find('dNgaySuaHD').text() + "</td>" +
                    "<td>" + $(this).find('sTenTK').text() + "</td>" +
                    + "</tr > ").appendTo("#timkiemhomnay");
                
            });
           
        },
        error: function () {
            alert("lỗi");
        }
    });
});


