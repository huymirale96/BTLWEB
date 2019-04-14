<%@ Page Language="C#" AutoEventWireup="true"MasterPageFile="Site.master" CodeBehind="thongtinchitiet.aspx.cs" Inherits="BTL_WEBNC.thongtinchitiet" %>

<asp:Content ID="chitiet" ContentPlaceHolderID="MainContent" runat="server">
	<div class="row" role="main">
		<div class="container">
			<div class="row detail-box">
				<div class="col-xs-12">
					<div class="row detail-head">
						<div class="col-sm-12 col-xs-12 pull-left">
							<h1><asp:Label ID="sTieude" runat="server" Text="" class="row-fluid"></asp:Label></h1>
						</div>
					</div>
					
					<div class="col-md-6 col-xs-12">
						<div class="pgwSlideshow wide" style="display: block;">
							<div class="ps-current">
								<ul>
									<li class="elt_1" style="display: block; opacity: 1; z-index: 2;">
										<asp:Image ID="Image1" runat="server" Width="100%" height="517px" />
									</li>
								</ul>
							</div>
							<div class="ps-list" style="display: none;">
								<span class="ps-prev" style="display: none;">
									<span class="ps-prevIcon">
									</span>
								</span>
								<span class="ps-next" style="display: none;"><span class="ps-nextIcon"></span></span>
							</div>
						</div>
						<div class="detail-address">
							<div class="row">
								<div class="col-xs-12">
									<span id="MainContent_ctlDetailBox_ctlAddressLocation_lblTitle" class="title">Địa điểm</span>
									<div class="col-xs-9">
										<address style="margin-top:10px;"><asp:Label ID="DiaDiem" runat="server" Text=""></asp:Label></address>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<table class=" detail-attrs">
									<colgroup>
										<col class="col-xs-6">
										<col class="col-xs-6">
									</colgroup>
									<thead>
										<tr>
											<th colspan="2">Đặc điểm chính</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Giá</td>
											<td><asp:Label ID="Gia" runat="server" Text="" /> VNĐ</td>
										</tr>
										<tr>
											<td>Diện tích </td>
											<td><asp:Label ID="DienTich" runat="server" Text=""></asp:Label> m²</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<h3> Mô tả chi tiết</h3>
						<div style="white-space: pre-wrap;"><asp:Label ID="NoiDung" runat="server" Text=""></asp:Label>
						</div>
					</div>
					<div class="col-md-6 col-xs-12 pull-right">
						<div class="row">
							<div class="col-xs-12">
								<table class=" detail-attrs">
									<colgroup>
										<col class="col-xs-6">
										<col class="col-xs-6">
									</colgroup>
									<thead>
										<tr>
											<th colspan="2">Tin đăng</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Ngày đăng</td>
											<td><asp:Label ID="NgayDang" runat="server" Text="" /></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="detail-address">
							<div class="row">
								<div class="col-xs-12">
									<span id="MainContent_ctlDetailBox_ctlAddressContact_lblTitle" class="title">Liên hệ</span>
								</div>
							</div>
						</div>
						<div class="row spacer">
							<div class="col-xs-12 margin-left-15"> Số điện thoại&nbsp;: 0397243174<span class="label label-danger" style="background-color:#ed1c24; font-size:17px;"></span> </div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="panel panel-contact">
									<div class="panel-heading">
										<h3 class="panel-title">
											<span class="icon icon-mail-white spacer-right-5">Liên hệ bằng Email</span>
										</h3>
									</div>
								<div class="panel-body">
									<div class="row">
										<form action="#" method="post">
											<div class="form-group">
												<label for="MainContent_ctlDetailBox_ctlContactForm_txtName"> Tên</label>
												<input name="name" type="text" value="" id="" class="form-control" placeholder="Name">
											</div>
											<div class="form-group">
												<label for="MainContent_ctlDetailBox_ctlContactForm_txtEMail"> Email của tôi</label>
												<input name="email" type="text" value="" id="" class="form-control" placeholder="Email">
											</div>
											<div class="form-group">
												<label for="MainContent_ctlDetailBox_ctlContactForm_txtMessage"> Nội dung</label>
												<textarea name="message" rows="4" cols="20" class="form-control"></textarea>
											</div>
											<div class="form-group">
												<button id="MainContent_ctlDetailBox_ctlContactForm_btnSend" class="btn btn-contact col-xs-12">Gửi</button>
											</div>
										</form>
									</div>
								</div>
							</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
    </div>
</asp:Content>