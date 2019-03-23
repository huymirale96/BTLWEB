$(document).ready(function () {

    getdulieu("");

    $('#btnThemMoi').click(function () {
        var ten = $("#txtTenLoaiPhim").val();
        var mota_phim = $('#txtMota').val();
        $.ajax({
            method: "POST",
            url: "Services/DSLoaiPhim.asmx/themLoaiPhim",
            data: {
                ten_loaiphim: ten,
                mota_loaiphim: mota_phim
            },
            dataType: "xml",
            success: function (data) {
                $("#txtTenLoaiPhim").val("");
                $('#txtMota').val("");
                showMessage('Thành công', 'Thêm mới loại phim thành công', 'warning', 'glyphicon-ok-sign');
                getdulieu("");
            },
            error: function () {
                showMessage('Thất bại', 'Thêm mới loại phim không thành công', 'error', 'glyphicon-ok-sign');
            }
        });

    });   
  
    function getdulieu(tutimkiem) {
        $.ajax({
            method: "POST",
            url: "Services/DSLoaiPhim.asmx/GetLoaiPhim",
            data: { tutimkiem: tutimkiem },
            dataType: "xml",
            success: function (data) {
                var i = 1;
                $("#dsloaiphim").html("");
                $(data).find('LoaiPhim').each(function () {
                    var ma_loaiphim = $(this).find('ma_loaiphim').text();
                    var ten_loaiphim = $(this).find('ten_loaiphim').text();
                    var mota_loaiphim = $(this).find('mota_loaiphim').text();
                    
                    $("#dsloaiphim").append("<tr>" +
                        "<td>" + (i++) + "</td>" +
                        "<td>" + "<input type = 'text' value='" + ten_loaiphim + "' class='form-control txtsua " + ma_loaiphim + "' id='txtten" + ma_loaiphim+"' disabled />" + "</td>" +
                        "<td>" + "<input type = 'text' value='" + mota_loaiphim + "' class='form-control txtsua " + ma_loaiphim + "' id='txtmota" + ma_loaiphim +"' disabled/>" + "</td>" +
                        "<td>" + "<button ID='btnSua' class='btn btn-success' type='button' name='btnSua" + ma_loaiphim+"' value = '" + ma_loaiphim +"'>Sửa</button> &nbsp &nbsp &nbsp<button id='btnXoa' value = '" + ma_loaiphim +"' class='btn btn-danger' type='button' name='btnXoa' >Xóa</button>" + "</td>"
                        + "</tr > ");
                });

            },
            error: function () {
                alert("lỗi");
            }
        });
    }

   
    $(document).on('click', '#btnXoa', function () {
        var ma = $(this).val();
        $.ajax({
            method: "POST",
            url: "Services/DSLoaiPhim.asmx/xoaLoaiPhim",
            data: {
                ma_loaiphim: ma
            },
            dataType: "xml",
            success: function (data) {
                showMessage('Thành công', 'Xóa loại phim thành công', 'warning', 'glyphicon-ok-sign');
                getdulieu("");
            },
            error: function () {
                showMessage('Thất bại', 'Xóa loại phim không thành công', 'error', 'glyphicon-ok-sign');
            }
        });
    });

    $(document).on('click', '#btnSua', function () {
        var ma = $(this).val();
        if( $("button[name = 'btnSua" + ma + "']").text() == "Sửa") {
            $(".txtsua").attr('disabled', 'disabled');
            $("." + ma + "").removeAttr('disabled');
            $("button[name = 'btnSua" + ma + "']").text("Cập nhật");
        }else  {
            var ten = $("#txtten" + ma + "").val();
            var mota = $("#txtmota" + ma + "").val();
            $.ajax({
                method: "POST",
                url: "Services/DSLoaiPhim.asmx/SuaLoaiPhim",
                data: {
                    ma_loaiphim: ma,
                    ten_loaiphim: ten,
                    mota_loaiphim: mota
                },
                dataType: "xml",
                success: function (data) {
                    $("#txtTenLoaiPhim").val("");
                    $('#txtMota').val("");
                    $(".txtsua").attr('disabled', 'disabled');
                    $('#btnSua').text("Sửa");
                    showMessage('Thành công', 'Sửa loại phim thành công', 'warning', 'glyphicon-ok-sign');
                    getdulieu("");
                },
                error: function () {
                    showMessage('Thất bại', 'Sửa loại phim không thành công', 'error', 'glyphicon-ok-sign');
                }
            });
        }

    });
    //$('#txttimkiem').keyup(function () {
    //    var tutimkiem = $(this).val();
    //    getdulieu(tutimkiem);
    //});
    //$(document).on('change', '#txtTenLoaiPhim', function () {

    //    var ten = $(this).val();
    //    $.ajax({
    //        method: "POST",
    //        url: "Services/DSLoaiPhim.asmx/kiemtratrung",
    //        data: {
    //            ten_loaiphim: ten
    //        },
    //        dataType: "xml",
    //        success: function (data) {
    //            if ($(data).text() == 'false') {
    //                console.log("Tên loại phim đã có");
    //                $('button[name="btnThemMoi"]').attr('disabled', true);
    //                $('#lbbaotrung').text('Tên loại phim đã có');
    //            }
    //            else {
    //                $("#btnThemMoi").attr('disabled', false);
    //                $('#lbbaotrung').text('');
    //                console.log("Tên loại phim chưa có");
    //            }
                
    //        }
    //    });
    //});
    function showMessage(title, text, type, icon) {
        var notice = new PNotify({
            title: title,
            text: text,
            type: type,
            icon: 'glyphicon ' + icon,
            addclass: 'snotify',
            closer: true,
            delay: 1000
        });
    }   
});


