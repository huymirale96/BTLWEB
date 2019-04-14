<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BTL_WEBNC._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<div class="body-content">
        <div class="jumbotron head">
            <div class="container head">
                <div class="row">
                    <div class="col-lg-10 col-md-8 hidden-md hidden-sm hidden-xs">
                            
                        <h1 id="headingSlogan" style="font-size: 15px; margin: 0; padding: 0; font-weight: normal">
                            <span id="lblSlogan" class="slogan">Chào mừng bạn đến với chúng tôi!</span>
                        </h1>
                    </div>
                </div>
            </div>
        </div>
		
		<div class="clearfix"></div>
        <div>
			<div class="col-md-12">
				<div class="panel mbnd-panel-feature">
					<div class="panel-heading">
						<h2 class="title-h2 text-uppercase">
							Dự án nổi bật
							<a class="btn-showmore pull-right" href="Duan.aspx">Xem thêm</a>
						</h2>
					</div>
					<div class="panel-body">
						<div class="row" id="featureProjectNormal">
							<asp:ListView ID="ListView3" runat="server">
								<ItemTemplate>
									<div class="col-xs-12 col-sm-6 col-lg-3 listing-zone">
										<div class="mbnd-card  listing-tag-a-first">
											<div class="listing-tag">
												<div class="imgListing">
													<a href="thongtinchitiet.aspx?id=<%#Eval("PK_iDuan") %>">
														<img class="img-responsive imageFeaturedBox" src="Images/<%#Eval("sImages") %>" alt="<%#Eval("sTieude") %>">
													</a>
												</div>
											</div>
											<div class="card-body">
												<h3 class="card-title">
													<a href="/dat-ban-dat-tho-cu-3532/ban-suat-noi-bo-du-an-diamond-city-nga-tu-tan-quy-7876634">
														<%#Eval("sTieude") %>
													</a>
												</h3>
												<p class="card-text"><%#Eval("sCongTy") %></p>
												<p class="card-price"><%#Eval("sQuyMo") %> VNĐ</p>
											</div>
										</div>
									</div>
								</ItemTemplate>
							</asp:ListView>
						</div>
					</div>
				</div>
				<div class="panel mbnd-panel-feature">
					<div class="panel-heading">
						<h2 class="title-h2 text-uppercase">
							Bất động sản nổi bật
							<a class="btn-showmore pull-right" href="nhadatban.aspx">Xem thêm</a>
						</h2>
					</div>
					<div class="panel-body">
						<div id="" class="row cussrow">
							<asp:ListView ID="ListView1" runat="server">
								<ItemTemplate>
									<div class="col-xs-12 col-sm-6 col-lg-3 listing-zone">
										<div class="mbnd-card  listing-tag-a-first">
											<div class="listing-tag">
												<div class="imgListing">
													<a href="thongtinchitiet.aspx?id=<%#Eval("PK_iMaBV") %>">
														<img class="img-responsive imageFeaturedBox" src="Images/<%#Eval("sImages") %>" alt="<%#Eval("sTieude") %>">
													</a>
												</div>
											</div>
											<div class="card-body">
												<h3 class="card-title">
													<a href="/dat-ban-dat-tho-cu-3532/ban-suat-noi-bo-du-an-diamond-city-nga-tu-tan-quy-7876634">
														<%#Eval("sTieude") %>
													</a>
												</h3>
												<p class="card-text"><%#Eval("sDiaChiCC") %></p>
												<p class="card-price"><%#Eval("sGiaban") %> VNĐ</p>
											</div>
										</div>
									</div>
								</ItemTemplate>
							</asp:ListView>
						</div>
					</div>
				</div>
				<div class="panel mbnd-panel-feature">
					<div class="panel-heading">
						<h2 class="title-h2 text-uppercase">
							Tin Tức Nổi Bật
							<a class="btn-showmore pull-right" href="nhadatban.aspx">Xem thêm</a>
						</h2>
					</div>
					<div class="panel-body">
						<div id="" class="row cussrow">
							<asp:ListView ID="ListView2" runat="server">
								<ItemTemplate>
									<div class="col-xs-12 col-sm-6 col-lg-3 listing-zone">
										<div class="mbnd-card  listing-tag-a-first">
											<div class="listing-tag">
												<div class="imgListing">
													<a href="thongtinchitiet.aspx?id=<%#Eval("PK_iMaBV") %>">
														<img class="img-responsive imageFeaturedBox" src="Images/<%#Eval("sImages") %>" alt="<%#Eval("sTieude") %>">
													</a>
												</div>
											</div>
											<div class="card-body">
												<h3 class="card-title">
													<a href="/dat-ban-dat-tho-cu-3532/ban-suat-noi-bo-du-an-diamond-city-nga-tu-tan-quy-7876634">
														<%#Eval("sTieude") %>
													</a>
												</h3>
												<p class="card-text"><%#Eval("sDiaChiCC") %></p>
												<p class="card-price"><%#Eval("sGiaban") %> VNĐ</p>
											</div>
										</div>
									</div>
								</ItemTemplate>
							</asp:ListView>
						</div>
					</div>
				</div>
			</div>
		</div>
    </div>
</asp:Content>
