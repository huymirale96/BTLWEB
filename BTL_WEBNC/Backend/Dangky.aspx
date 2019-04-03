<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangky.aspx.cs" Inherits="BTL_WEBNC.Backend.Dangky" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng ký</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <!-- MetisMenu CSS -->
    <link href="../Content/backend/metisMenu.min.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="../Content/backend/sb-admin-2.css" rel="stylesheet" />
    <!-- Custom Fonts -->
    <link href="../Content/backend/font-awesome.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Đăng ký</h3>
                    </div>
                    <div class="panel-body">
                        <form id="form1" runat="server">
                            <fieldset>
                                <div class="row">
                                    <label for="email" class="col-sm-2 control-label">
                                        Tên
                                    </label>
                                    <div class="col-sm-10">
                                        <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>

                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <label for="email" class="col-sm-2 control-label">
                                        Email
                                    </label>
                                    <div class="col-sm-10">
                                        <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" style="color:red;" ControlToValidate="txtEmail" ErrorMessage="email không hợp lệ" Display="Dynamic" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <label for="diachi" class="col-sm-2 control-label">
                                        Địa chỉ
                                    </label>
                                    <div class="col-sm-10">
                                        <asp:TextBox ID="diachi" CssClass="form-control" runat="server"></asp:TextBox>
                                        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" style="color:red;" ControlToValidate="txtEmail1" ErrorMessage="email không hợp lệ" Display="Dynamic" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>--%>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <label for="mobile" class="col-sm-2 control-label">
                                        Phone
                                    </label>
                                    <div class="col-sm-10">
                                        <asp:TextBox ID="txtDT" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" style="color:red;" ControlToValidate="txtDT" ErrorMessage="Chỉ chấp nhận kiểu số" Display="Dynamic" ValidationExpression="\d+" ></asp:RegularExpressionValidator>
                                        <asp:RegularExpressionValidator  ID="RegularExpressionValidator2" runat="server" ErrorMessage="Độ dài phải từ 6 đến 20 kí tự" ControlToValidate="txtDT"  ValidationExpression=".{6,20}"></asp:RegularExpressionValidator>
                                        <%--<asp:RangeValidator ID="valRange" runat="server" style="color:red;" ControlToValidate="txtDT" MaximumValue="11" MinimumValue="10"  Type="Integer" ErrorMessage="Số điện thoại tối thiểu 10 số" Display="Dynamic"></asp:RangeValidator>--%>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <label for="sNgaysinh" class="col-sm-2 control-label">
                                        Ngày sinh
                                    </label>
                                    <div class="col-sm-10">
                                        <asp:TextBox ID="sNgaysinh" CssClass="form-control" runat="server" ></asp:TextBox>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <label for="sGioitinh" class="col-sm-2 control-label">
                                        Giới tính
                                    </label>
                                    <div class="col-sm-10">
                                        <label> </label><br />
                                        <asp:RadioButton ID="GioiTinhNam" runat="server" Text="Nam" GroupName="GioiTinh" Checked></asp:RadioButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                            
                                        <asp:RadioButton ID="GioiTinhNu" runat="server" Text="Nữ" GroupName="GioiTinh"></asp:RadioButton>
                                    </div>
                                   
                                </div>
                                <br />
                                <div class="row">
                                    <label for="taikhoan" class="col-sm-2 control-label">
                                        Tài khoản
                                    </label>
                                    <div class="col-sm-10">
                                        <asp:TextBox ID="taikhoan" CssClass="form-control" runat="server" ></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <label for="password" class="col-sm-2 control-label">
                                        Mật khẩu
                                    </label>
                                    <div class="col-sm-10">
                                        <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>
                                <br /> <div class="row">
                                    <div class="col-sm-2">
                                    </div>
                                    <div class="col-sm-10">
                                        <asp:Button ID="btDangKy" runat="server" Text="Đăng Ký" class="btn btn-primary" OnClick="btDangKy_Click"/>

                                        <asp:Button ID="btHuy" runat="server" Text="Hủy" class="btn btn-primary"/>
                                        <asp:Label ID="Label1" runat="server" Text="" BorderColor="White" Visible="false"></asp:Label>
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <script type="text/javascript">
        window.onload = function (e) { 
           <%=status %>
        }
    </script>
</body>
</html>
