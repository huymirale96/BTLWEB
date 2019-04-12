<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Backend/Backend.Master" CodeBehind="GiaoDich.aspx.cs" Inherits="BTL_WEBNC.Backend.GiaoDich" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../Scripts/jquery-3.3.1.js"></script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="content-wrapper">
  <section class="content-header">
    <h1>
      Danh sách Giao Dịch
    </h1>
    <ol class="breadcrumb">
      <li><a href="Welcome.aspx"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
      <li class="active">Danh sách Giao Dịch</li>
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
									<label>Tên Hóa Đơn</label>
									<asp:TextBox ID="sTenHoaDon"  runat="server" CssClass="form-control" placeholder="Nhập tên..." onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
							   </div>
							</div>

							<div class="col-md-12">
							   <div class="form-group">
									<label>Nội dung</label>
								   <asp:TextBox ID="sNoidungGD" TextMode="multiline" runat="server"></asp:TextBox>
							   </div>
							</div>
						</div><!-- content1 -->
						<div class="col-md-6">                   
							<div class="col-md-12">
								<div class="form-group">
									<label>Tổng Tiền</label>
										<asp:TextBox ID="sTongTien" runat="server" CssClass="form-control" placeholder="Nhập Tổng Tiền..." onkeydown = "return (event.keyCode!=13);"></asp:TextBox>  
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<label>Chức năng</label><br />
									<asp:Button ID="btnThemMoiGD" runat="server" Text="Thêm mới" 
											CssClass="btn btn-primary" OnClick="btnThemMoiGD_Click" ></asp:Button>
									<asp:Button ID="btnUpdateInfoGD" runat="server" Text="Xác nhận" 
											CssClass="btn btn-primary" OnClick="btnUpdateInfoGD_Click" ></asp:Button>
									<asp:Button ID="btnNhapLaiGD" runat="server" Text="Nhập lại" CssClass="btn btn-danger"></asp:Button>  
									<asp:Label ID="LabelGD" runat="server" Text=""></asp:Label>
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
                            <th class="text-center col-md-2">Tên Tài Khoản</th>                            
                            <th class="text-center col-md-2">Tên Hóa Đơn</th>
                            <th class="text-center col-md-2">Ngày lập Hóa Đơn</th>
                            <th class="text-center col-md-1">Tổng Tiền</th>
                            <th class="text-center col-md-3">Nội Dung Giao Dịch</th>
							<th class="text-center col-md-2">Chức năng</th>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td class="text-center"><%# Container.ItemIndex + 1 %></td>
                                        <td><%#Eval("sTenTK") %></td>
                                        <td ><%#Eval("sTenHoaDon") %></td>
                                        <td class="text-center"><%#Eval("dNgayLapHD") %></td>
                                        <td ><%#Eval("sTongTien") %></td>
                                        <td class="text-center"><%#Eval("sNoidungGD") %></td>
                                        <td class="text-center">
                                            <asp:LinkButton ID="btnSuaThongTinGD" runat="server" CssClass="btn btn-success btn-sm"  CommandArgument='<%#Eval("PK_iMaGD") %>' OnClick="btnSuaThongTinGD_Click"><i class="fa fa-pencil"></i></asp:LinkButton>
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
	</div>
    </form>
	</section>
  </div><!-- /.content-wrapper -->
</asp:Content>