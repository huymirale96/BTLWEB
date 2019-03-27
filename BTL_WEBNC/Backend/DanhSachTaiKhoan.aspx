<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Backend/Backend.Master" CodeBehind="DanhSachTaiKhoan.aspx.cs" Inherits="BTL_WEBNC.Backend.DanhSachTaiKhoan" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../Scripts/jquery-3.3.1.js"></script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="content-wrapper">
  <section class="content-header">
    <h1>
      Danh sách tài khoản
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
      <li class="active">Danh sách tài khoản</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
  <form runat="server" id="form1">
    <div class="row">
      <div class="col-md-12">
        <div class="box box-success">
          <div class="box-header with-border"></div><!-- /.box-header -->
          <div class="box-body">
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Tên tài khoản</label>
                                <asp:TextBox ID="TenTaiKhoan" runat="server" CssClass="form-control" placeholder="Nhập tên tài khoản..." onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                       </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Mật khẩu</label>
                                <asp:TextBox ID="MatKhau" runat="server" CssClass="form-control" TextMode="Password" placeholder="Nhập mật khẩu..." onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                       <div class="form-group">
                            <label>Họ và tên</label>
                                <asp:TextBox ID="HoVaTen" runat="server" CssClass="form-control" placeholder="Nhập họ và tên nhân viên..." onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                       </div>
                    </div>
                    <div class="col-md-3">
                       <div class="form-group">
                            <label>Giới tính </label><br />
                            <asp:RadioButton ID="GioiTinhNam" runat="server" Text="Nam" GroupName="GioiTinh" Checked></asp:RadioButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                            
                            <asp:RadioButton ID="GioiTinhNu" runat="server" Text="Nữ" GroupName="GioiTinh"></asp:RadioButton>
                       </div>
                    </div>
                    
                   
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Điện thoại</label>
                                <asp:TextBox ID="DienThoai" runat="server" CssClass="form-control" placeholder="Nhập số điện thoại..." onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                        </div>
                    </div>
                    
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Nơi sinh</label>
                                <asp:TextBox ID="sNoisinh" runat="server" CssClass="form-control" placeholder="Nhập nơi sinh..." onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <label>Ngày sinh</label>
                                <asp:TextBox ID="sNgaysinh" runat="server" CssClass="form-control" placeholder="Nhập ngày sinh..." onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                        </div>
                    </div>
                   <%-- <div class="col-md-6">
                        <div class="form-group">
                            <label>Địa chỉ</label>
                                <asp:TextBox ID="DiaChi" runat="server" CssClass="form-control" placeholder="Nhập mời nhập địa chỉ..." onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                        </div>
                    </div>--%>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Chức năng</label><br />
                             <asp:Button ID="btnThemMoi" runat="server" Text="Thêm mới" 
                                CssClass="btn btn-primary" OnClick="btnThemMoi_Click" ></asp:Button>
                                <asp:Button ID="btnUpdateInfo" runat="server" Text="Xác nhận" 
                                CssClass="btn btn-primary" OnClick="btnUpdateInfo_Click" ></asp:Button>
                             <asp:Button ID="btnNhapLai" runat="server" Text="Nhập lại" CssClass="btn btn-danger"></asp:Button>  
                            
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                    
                    <div class="col-md-12">
                        <hr />
                    </div>
                    <div class="col-md-12">
                        <table class="table table-bordered table-hover">
                        <caption class="text-center"><h4>DANH SÁCH TÀI KHOẢN, NHÂN VIÊN</h4></caption>
                        <thead>
                            <th class="text-center col-md-1">STT</th>
                            <th class="text-center col-md-2">Tên tài khoản</th>                            
                            <th class="text-center col-md-3">Họ và tên</th>
                            <th class="text-center col-md-1">Điện thoại</th>
                            <th class="text-center col-md-1">Nơi sinh</th>
                            <th class="text-center col-md-2">Ngày sinh</th>
                            <th class="text-center col-md-2">Giới tính</th>
                            <th class="text-center col-md-2">Chức năng</th>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td class="text-center"><%# Container.ItemIndex + 1 %></td>
                                        <td><%#Eval("sTenTK") %></td>
                                        <td class="text-center"><%#Eval("sTenNV") %></td>
                                        <td ><%#Eval("iPhone") %></td>
                                        <td ><%#Eval("sNoisinh") %></td>
                                        <td ><%#Eval("dNgaysinh") %></td>
                                        <td class="text-center"><%#Eval("sGioitinh") %></td>
                                        <td class="text-center">
                                            <asp:LinkButton ID="btnSuaThongTin" runat="server" CssClass="btn btn-success btn-sm"  CommandArgument='<%#Eval("PK_iMaNV") %>' OnClick="btnSuaThongTin_Click"><i class="fa fa-pencil"></i></asp:LinkButton>
                                            <asp:LinkButton id="btnXoaNhanVien" runat="server" CssClass="btn btn-danger btn-sm"  CommandArgument='<%#Eval("PK_iMaNV") %>' OnClientClick="return confirm('Bạn có muốn khóa tài khoản, nhân viên hay này không ?');" ><i class="fa fa-lock"></i></asp:LinkButton>
                                           
                                            
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                        </table>
                    </div>
          </div><!-- /.box-body -->
        </div><!-- /.box -->
      </div>  <!--end col 12-->
</div>
      </form>
    </section><!-- /.content -->
  <%--  <script type="text/javascript">
        window.onload = function (e) { 
           <%=status %>
        }
    </script>--%>
  </div><!-- /.content-wrapper -->
</asp:Content>
