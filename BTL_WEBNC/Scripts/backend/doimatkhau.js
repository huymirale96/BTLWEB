$(document).ready(function () {
    //bắt validate phải có chữ hoa, chữ thường, số
    $(document).on('change', '#MainContent_MatKhauMoi', function () {
        var mk = $("#MainContent_MatKhauMoi").val();
        var Reg = /[a-zA-Z0-9]{3,20}/;
        if (Reg.test(mk)) {
            $('#lbmatkhaumoi').text('');
        }
        else {
            $('#lbmatkhaumoi').text('Mật khẩu phải có ít nhất 1 số, 1 chữ hoa');
        }
    })
    //bắt trùng
    //$(document).on('change', '#MainContent_MatKhauCu', function () {
    //    var mk = $("#MainContent_MatKhauCu").val();
    //    $.ajax({
    //        method: "POST",
    //        url: "Services/xl_doimatkhau.asmx/kiemtratrung",
    //        data: {
    //            mk: mk
    //        },
    //        dataType: "xml",
    //        success: function (data) {
    //            if ($(data).text() == 'false') {
    //                console.log("Mật khẩu đúng");
    //                $('#lbmatkhaucu').text('');
    //            }
    //            else {
    //                $('#lbmatkhaucu').text('Mật khẩu nhập chưa đúng!!!');
    //                console.log("Mật khẩu chưa đúng");
    //            }
    //        }
    //    });
    //});
});