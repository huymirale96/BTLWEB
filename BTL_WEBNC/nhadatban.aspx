<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="Site.master" CodeBehind="nhadatban.aspx.cs" Inherits="BTL_WEBNC.nhadatban" %>

<asp:Content ID="nhadatban" ContentPlaceHolderID="MainContent" runat="server">
<div class="container main bs-docs-container">
    <div class="row" role="main">
		<div class="container">
  <h1 class="headline"> Nhà đất bán </h1>
		<form id="form1" runat="server">
			<asp:ScriptManager ID="ScriptManager1" runat="server">
			</asp:ScriptManager>
			<asp:UpdatePanel ID="UpdatePanel1" runat="server">
				<ContentTemplate>
			<div class="row">
				<div class="col-xs-12 col-md-8 col-lg-9 col-md-push-4 col-lg-push-3">
					<div class="list-group result-list">
						<div class="list-group-item list-head">
							<div class="row">
								<div class="col-xs-5"> 
									<asp:Label ID="Label1" runat="server"></asp:Label>
									<span id="MainContent_ctlList_ctlResults_lblCount">Lọc theo</span> 
								</div>
								<div id="MainContent_ctlList_ctlResults_divSorting" class="col-xs-7">
									<asp:DropDownList ID="DropDownList1"
												runat="server"
												DataTextField="text"
												DataValueField="value"
												AutoPostBack="True"
												OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
												class="pull-right col-xs-12 btn btn-light">
										<asp:ListItem Value="">Mặc định</asp:ListItem>  
										<asp:ListItem>Mới nhất </asp:ListItem>  
										<asp:ListItem>Cũ nhất</asp:ListItem> 
									</asp:DropDownList>
								</div>
							</div>
						</div>
						<div class="panel panel-feature">
							<div class="panel-heading">
								<h2 class="home-heading">Bất động sản nổi bật</h2>
							</div>
							<div class="panel-body">
							<style>
     							.hiderphoto{
									visibility:hidden;
								}
     						</style>
							<asp:ListView ID="ListView1" runat="server">
								<ItemTemplate>
									<div class="col-xs-12 col-sm-6 col-lg-3">
										<a href="thongtinchitiet.aspx?id=<%#Eval("PK_iMaBV") %>" class="object">
											<div class="image"> 
												<img class="img-responsive imageFeaturedBox" src="Images/<%#Eval("sImages") %>" alt="<%#Eval("sTieude") %>" title="<%#Eval("sTieude") %>"> 
											</div>
											<p class="title" style="margin-bottom: 7px;"><%#Eval("sTieude") %></p>
											<p class="location" style="margin-bottom: 5px;"><%#Eval("sDiaChiCC") %></p> 
											<p class="location" style="margin-bottom: 5px;">Giá: <%#Eval("sGiaban") %> VNĐ</p> 
										</a>
									</div>
								</ItemTemplate>
							</asp:ListView>
							</div>
						</div>
						<div class="list-group-item Product-TopListing">
							<asp:ListView ID="ListView2" runat="server">
								<ItemTemplate>
									<div class="row">
										<div class="resultItem">
											<div class="col-md-2 col-sm-4 col-xs-12 picture-area">
												<div>
													<div class="mbndcustomPicture"> 
														<img class="img-thumbnail" src="Images/<%#Eval("sImages") %>" alt="<%#Eval("sTieude") %>">
													</div>
												</div>
											</div>
											<div class="col-md-10 col-sm-8 col-xs-12 ">
												<div class="row">
													<div class="col-xs-12 col-md-9 title">
														<a class="title-filter-link" href="thongtinchitiet.aspx?id=<%#Eval("PK_iMaBV") %>"><%#Eval("sTieude") %></a>
													</div>
													<div class="col-md-3 col-xs-12 text-right"><%#Eval("sGiaban") %> VNĐ</div>
													<address id="MainContent_ctlList_ctlResults_repList_ctl00_0_divListingInformationAddress_0" class="col-md-6 col-xs-12">
														<div class="col-xs-12"><%#Eval("sDiaChiCC") %></div>
														<div class="col-xs-12"><%#Eval("dNgayDang") %></div>
													</address>
													<div id="MainContent_ctlList_ctlResults_repList_ctl00_0_divRightInformation_0" class="col-md-6 col-xs-12">
														<div class="col-xs-12">Diện tích : <%#Eval("sDienTich") %> m²</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</ItemTemplate>
							</asp:ListView>
						</div>
						<!--<div class="list-group-item list-footer text-center">
							<div class="pagination">
								<ul class="pagination">
									<li class="active"><a>1</a></li><li><a href="">2</a></li><li><a href="">3</a></li><li class="next-page"><a href="">&gt;</a></li><li><a href="">Last ›</a></li></ul>
							</div>
						</div>-->
					</div>
				</div>
				<div class="col-xs-12 col-md-4 col-lg-3 col-md-pull-8 col-lg-pull-9" id="jump2filter">
					<div class="panel panel-filter">
						<div class="panel-heading"> Giá (VND) </div>
						<div class="panel-body range-entry">
							<div class="form-group col-md-6">
								<label> từ triệu</label>
								<input name="price_min" type="text" value="" maxlength="16" id="" class="form-control InputJs textbox-phone input-min" placeholder="0">
							</div>
							<div class="form-group col-md-6">
								<label> đến triệu</label>
								<input name="price_max" type="text" value="" maxlength="16" id="MainContent_ctlList_ctlFilters_AttGroups_ctl00_1_txtMax_1" class="form-control InputJs textbox-phone input-max" placeholder="1.000.000">
							</div>
								<span id="MainContent_ctlList_ctlFilters_AttGroups_ctl00_1_hidMin_1" class="hidden hide-min">0</span> <span id="MainContent_ctlList_ctlFilters_AttGroups_ctl00_1_hidMax_1" class="hidden hide-max">1.000.000</span>
							<div class="col-xs-12"> &nbsp;
								<button value="submit" id="MainContent_ctlList_ctlFilters_AttGroups_ctl00_1_Apply_1" class="btn btn-primary btn-xs pull-right"><span>Chọn</span></button>
							</div>
						</div>
					</div>
					<div class="panel panel-filter">
						<div class="panel-heading"> Diện tích </div>
						<div class="panel-body range-entry">
							<div class="form-group col-md-6">
								<label> m² </label>
								<input name="area_min" type="text" value="" maxlength="16" class="form-control InputJs textbox-phone input-min" placeholder="1">
							</div>
							<div class="form-group col-md-6">
								<label> m² </label>
								<input name="area_max" type="text" value="" maxlength="16" class="form-control InputJs textbox-phone input-max" placeholder="100000">
							</div>
							<div class="col-xs-12"> &nbsp;
								<button value="submit" id="MainContent_ctlList_ctlFilters_AttGroups_ctl00_2_Apply_2" class="btn btn-primary btn-xs pull-right"><span>Chọn</span></button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--Ad:Leaderboard-->
			<div class="col-xs-12 col-md-8 col-lg-9 col-md-push-4 col-lg-push-3 hidden-xs">
				<div class="panel panel-feature">
					<div class="row"> 
						<div class="panel-body leaderboard2producthome">
							<a href="#" target="_blank" title="728x90"> 
								<img src="https://thanhphongland.com/public/uploads/ads/2015/12/11/10/a4564330c678838bd6fc33e904f17f1c.jpg" title="728x90"> 
							</a>
						</div>  
					</div>
				</div>
			</div>
			<div id="MainContent_teaser" class="well col-xs-12 col-md-8 col-lg-9 col-md-push-4 col-lg-push-3">
				<span> Bạn đang cần những mặt bằng, khu đất để đầu tư cho các dự án thương mại hoặc cửa hàng kinh doanh? Bạn cần mua lại những mặt bằng đang có sẵn để mở rộng việc kinh doanh? Tìm ngay và liên hệ với người bán nhanh chóng. </span>
			</div>
		
				<!--Ad:Leaderboard
				<script>
					$(function(){
					  $('#MainContent_ctlList_ctlResults_ddlSorting').on('change', function () {
						  var url = $(this).val(); // get selected value
						  if (url) { // require a URL
							  window.location = url; // redirect
						  }
						  return false;
					  });
					  $("#MainContent_ctlList_ctlResults_ddlSorting").val("https://thanhphongland.com/tin-bds/chuyen-muc/1-nha-dat-ban?order=0");
					  $("#MainContent_ctlList_ctlResults_ddlSorting_Filter").val("0");
					});
				</script>    
				-->
				</ContentTemplate>
			</asp:UpdatePanel>
		</form>
		</div>
	</div>
</div>
</asp:Content>
