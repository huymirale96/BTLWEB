<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DanhSachDuAn.aspx.cs" MasterPageFile="~/Backend/Backend.Master" Inherits="BTL_WEBNC.Backend.DanhSachDuAn" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../Scripts/jquery-3.3.1.js"></script>
</asp:Content>
<asp:Content ID="Contentda" ContentPlaceHolderID="MainContent" runat="server">
<div class="content-wrapper">
  <section class="content-header">
    <h1>
      Danh sách DỰ Án
    </h1>
    <ol class="breadcrumb">
      <li><a href="Welcome.aspx"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
      <li class="active">Danh sách DỰ Án</li>
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
                            <label>Tên Dự Án</label>
                                <asp:TextBox ID="TenDuAn" runat="server" CssClass="form-control" placeholder="Nhập tên Dự Án..." onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                       </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Mô Tả</label>
                            <asp:TextBox ID="Mota" runat="server" CssClass="form-control" placeholder="Nhập mô tả..." onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                       <div class="form-group">
                            <label>Quy Mô</label>
							<asp:TextBox ID="sQuyMo" runat="server" CssClass="form-control" placeholder="Nhập ..." onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3">
                       <div class="form-group">
                            <label>Địa chỉ</label>
                            <asp:TextBox ID="sDiaChiCC" runat="server" CssClass="form-control" placeholder="Nhập ..." onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                       </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label>FILE UPLOAD</label>
                            <asp:FileUpload ID="FileUpload1" runat="server" Width="348px" Height="27px" />
							<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FileUpload1" Display="None" ErrorMessage="Bạn cần chọn một tệp ảnh trước khi ấn nút &quot;Upload&quot;">
								</asp:RequiredFieldValidator>
                        </div>
                    </div>
                     <div class="col-md-3">
                        <div class="form-group">
                            <label>Diện Tích</label>
                            <asp:TextBox ID="sDienTich" runat="server" CssClass="form-control" placeholder="Nhập Diện Tích..." onkeydown = "return (event.keyCode!=13);"></asp:TextBox>  
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label>Công Ty</label>
                            <asp:TextBox ID="sCongTy" runat="server" CssClass="form-control" placeholder="Nhập Công Ty..." onkeydown = "return (event.keyCode!=13);"></asp:TextBox>  
                        </div>
                    </div>
					<div class="col-md-3">
                        <div class="form-group">
                            <label>Nội Dung</label>
                            <asp:TextBox ID="sNoiDungDA" runat="server" CssClass="form-control" placeholder="Nhập nội dung..." onkeydown = "return (event.keyCode!=13);"></asp:TextBox>  
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Chức năng</label><br />
                             <asp:Button ID="btnThemMoi" runat="server" Text="Thêm mới" CssClass="btn btn-primary" OnClick="btnThemMoi_Click"></asp:Button>
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
                            <th class="text-center col-md-1">Tên tài khoản</th>                            
                            <th class="text-center col-md-2">Mô Tả</th>
                            <th class="text-center col-md-3">Nội Dung</th>
                            <th class="text-center col-md-1">Quy Mô</th>
                            <th class="text-center col-md-1">Địa chỉ</th>
                            <th class="text-center col-md-1">Diện Tích</th>
                            <th class="text-center col-md-1">Công Ty</th>
							<th class="text-center col-md-1">Chức Năng</th>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="RepeaterDuAn" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td class="text-center"><%# Container.ItemIndex + 1 %></td>
                                        <td><%#Eval("sTieuDe") %></td>
                                        <td class="text-center"><%#Eval("[sMoTa]") %></td>
                                        <td><%#Eval("sNoiDung") %></td>
                                        <td><%#Eval("sQuyMo") %></td>
                                        <td><%#Eval("sDiaChiCC") %></td>
										<td><%#Eval("sDienTich") %></td>
										<td><%#Eval("sCongTy") %></td>
                                        <td class="text-center">
                                            <asp:LinkButton ID="btnSuaThongTin" runat="server" CssClass="btn btn-success btn-sm"  CommandArgument='<%#Eval("PK_iDuan") %>' OnClick="btnSuaThongTin_Click"><i class="fa fa-pencil"></i></asp:LinkButton>
                                            <asp:LinkButton id="btnXoaNhanVien" runat="server" CssClass="btn btn-danger btn-sm"  CommandArgument='<%#Eval("PK_iDuan") %>' OnClientClick="return confirm('Bạn có muốn khóa tài khoản, nhân viên này không ?');" ><i class="fa fa-lock"></i></asp:LinkButton>
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