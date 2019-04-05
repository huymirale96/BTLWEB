<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Backend/Backend.Master" CodeBehind="Thongtincanhan.aspx.cs" Inherits="BTL_WEBNC.Backend.Thongtincanhan" %>
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
                  
                       <div class="col-md-6">

                           <div class="row">
                                <div class="form-group">
                                    <label>Họ và tên</label>
                                        <asp:TextBox ID="HoVaTen" runat="server" CssClass="form-control" placeholder="Nhập họ và tên nhân viên..." onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                </div>
                            </div>

                           <div class="row">
                                <div class="form-group">
                                    <label>Điện thoại</label>
                                        <asp:TextBox ID="DienThoai" runat="server" CssClass="form-control" placeholder="Nhập số điện thoại..." onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                </div>
                            </div>
                           <div class="row">
                                <div class="form-group">
                                    <label>Địa chỉ</label>
                                        <asp:TextBox ID="Diachi" runat="server" CssClass="form-control" placeholder="Nhập địa chỉ..." onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group">
                                    <label>Email</label>
                                        <asp:TextBox ID="Email" runat="server" CssClass="form-control" placeholder="Nhập địa chỉ..." onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group">
                                    <label>Giới tính </label><br />
                                    <asp:RadioButton ID="GioiTinhNam" runat="server" Text="Nam" GroupName="GioiTinh" Checked></asp:RadioButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                            
                                    <asp:RadioButton ID="GioiTinhNu" runat="server" Text="Nữ" GroupName="GioiTinh"></asp:RadioButton>
                                </div>
                            </div>

                       </div>

                        <div class="col-md-6">
                            <div class="col-md-6">
                                 <div class="form-group">
                                    <label>Ngày sinh</label>
                                        <asp:TextBox ID="sNgaysinh" runat="server" CssClass="form-control" placeholder="Nhập ngày sinh..." onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                </div>
                             </div>
                             <div class="row">
                                <div class="form-group">
                                    <label>Chức năng</label><br />                            
                                        <asp:Button ID="btnUpdateInfo" runat="server" Text="Xác nhận" 
                                        CssClass="btn btn-primary" OnClick="btnUpdateInfo_Click"  ></asp:Button>
                                        <asp:Button ID="btnNhapLai" runat="server" Text="Nhập lại" CssClass="btn btn-danger"></asp:Button>  
                            
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                       </div>
            </div>
          </div>
         </div>
        </div>
    </form>
   <script type="text/javascript">
        window.onload = function (e) { 
           <%=status %>
        }
    </script>
 
</asp:Content>
