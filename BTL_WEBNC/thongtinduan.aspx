<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="Site.master" CodeBehind="thongtinduan.aspx.cs" Inherits="BTL_WEBNC.thongtinduan" %>

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
											<td>Ngày đăng:</td>
											<td><asp:Label ID="NgayDang" runat="server" Text="" /></td>
										</tr>
										<tr>
											<td>Quy Mô: </td>
											<td><asp:Label ID="sQuyMo" runat="server" Text="" /></td>
										</tr>
										<tr>
											<td>Địa Điểm: </td>
											<td><asp:Label ID="sDiaDiem" runat="server" Text="" /></td>
										</tr>
										<tr>
											<td>Diện Tích: </td>
											<td><asp:Label ID="sDienTich" runat="server" Text="" /> m²</td>
										</tr>
										<tr>
											<td>Công Ty: </td>
											<td><asp:Label ID="sCongTy" runat="server" Text="" /></td>
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
											<span class="icon icon-mail-white spacer-right-5">Mô Tả</span>
										</h3>
									</div>
									<div class="panel-body">
										<div class="row">
											<div style="white-space: pre-wrap;"><asp:Label ID="sMoTa" runat="server" Text=""></asp:Label>
											</div>
										</div>
									</div>
								</div>
								<div class="panel panel-contact">
									<div class="panel-heading">
										<h3 class="panel-title">
											<span class="icon icon-mail-white spacer-right-5">Nội Dung</span>
										</h3>
									</div>
									<div class="panel-body">
										<div class="row">
											<div style="white-space: pre-wrap;"><asp:Label ID="sNoiDung" runat="server" Text=""></asp:Label>
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
    </div>
</asp:Content>