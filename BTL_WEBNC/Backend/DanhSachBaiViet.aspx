<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Backend/Backend.Master" validateRequest="false" CodeBehind="DanhSachBaiViet.aspx.cs" Inherits="BTL_WEBNC.Backend.DanhSachBaiViet" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../Scripts/jquery-3.3.1.js"></script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="content-wrapper">
  <section class="content-header">
    <h1>
      Danh sách bài viết
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
      <li class="active">Danh sách bài viết</li>
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
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Tiêu đề</label>
                                <asp:TextBox ID="sTieude"  runat="server" CssClass="form-control" placeholder="Nhập tiêu đề..." onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                           </div>
                        </div>

                        <div class="col-md-12">
                           <div class="form-group">
                                <label>Nội dung</label>
                               <asp:TextBox ID="sNoidung" TextMode="multiline" runat="server"></asp:TextBox>
                           </div>
                        </div>

                        <div class="col-md-12">
                           <div class="form-group">
                                <label>Địa chỉ</label>
                                    <asp:TextBox ID="sDiaChiCC" runat="server" CssClass="form-control" placeholder="Nhập họ và tên nhân viên..." onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                           </div>
                        </div>
                    </div><!-- content1 -->
                    <div class="col-md-6">                   
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Giá</label>
                                    <asp:TextBox ID="sGiaban" runat="server" CssClass="form-control" placeholder="Nhập số điện thoại..." onkeydown = "return (event.keyCode!=13);"></asp:TextBox>  
                            </div>
                     </div>
                    
                   <div class="col-md-12">
                        <div class="form-group">
                            <label>Danh mục</label>
                                <asp:DropDownList ID="Danhmuc" runat="server" CssClass="form-control" onkeydown = "return (event.keyCode!=13);"></asp:DropDownList>
                        </div>
                    </div>

                    
                    <div class="col-md-12">
                        <div class="form-group">
                                <label>Chức năng</label><br />
                                 <asp:Button ID="btnThemMoi" runat="server" Text="Thêm mới" 
                                    CssClass="btn btn-primary" OnClick="btnThemMoi_Click"  ></asp:Button>
                                    <asp:Button ID="btnUpdateInfo" runat="server" Text="Xác nhận" 
                                    CssClass="btn btn-primary" OnClick="btnUpdateInfo_Click"  ></asp:Button>
                                 <asp:Button ID="btnNhapLai" runat="server" Text="Nhập lại" CssClass="btn btn-danger"></asp:Button>  
                            
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                    </div>
                    
                    
                    
                    <div class="col-md-12">
                        <hr />
                    </div>
                    <div class="col-md-12">
                        <table class="table table-bordered table-hover">
                        <caption class="text-center"><h4>DANH SÁCH BÀI VIẾT</h4></caption>
                        <thead>
                            <th class="text-center col-md-1">STT</th>
                            <th class="text-center col-md-2">Tiêu đề</th>                            
                            <th class="text-center col-md-3">Nội dung</th>
                            <th class="text-center col-md-1">Giá bán</th>
                            <th class="text-center col-md-1">Địa chỉ</th>
                            <th class="text-center col-md-2">Ngày đăng</th>
                            <th class="text-center col-md-2">Danh mục</th>
                            <th class="text-center col-md-2">Chức năng</th>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td class="text-center"><%# Container.ItemIndex + 1 %></td>
                                        <td><%#Eval("sTieude") %></td>
                                        <td ><%#Eval("sNoidung") %></td>
                                        <td class="text-center"><%#Eval("sGiaban") %></td>
                                        <td ><%#Eval("sDiaChiCC") %></td>
                                        <td class="text-center"><%#Eval("dNgayDang") %></td>
                                        <td class="text-center"><%#Eval("sTenDanhmuc") %></td>
                                        <td class="text-center">
                                            <asp:LinkButton ID="btnSuaThongTin" runat="server" CssClass="btn btn-success btn-sm"  CommandArgument='<%#Eval("PK_iMaBV") %>' OnClick="btnSuaThongTin_Click"><i class="fa fa-pencil"></i></asp:LinkButton>
                                            <asp:LinkButton id="btnXoaNhanVien" runat="server" CssClass="btn btn-danger btn-sm"  CommandArgument='<%#Eval("PK_iMaBV") %>' OnClientClick="return confirm('Bạn có muốn bài viết này không ?');" OnClick="btnXoaNhanVien_Click"><i class="fa fa-trash"></i></asp:LinkButton>
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
    <script type="text/javascript">
        window.onload = function (e) { 
           <%=status %>
        }
    </script>
  </div><!-- /.content-wrapper -->
</asp:Content>