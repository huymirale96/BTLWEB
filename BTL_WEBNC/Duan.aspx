<%@ Page Language="C#" MasterPageFile="Site.master" AutoEventWireup="true" CodeBehind="Duan.aspx.cs" Inherits="BTL_WEBNC.Duan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<form id="form1" runat="server" methot="GET">
		<asp:ScriptManager ID="ScriptManager1" runat="server">
		</asp:ScriptManager>
		<asp:UpdatePanel ID="UpdatePanel1" runat="server">
			<ContentTemplate>
				<div class="body-content" style="padding-left: 15px;">
					<div class="search-header">
						<div class="container" style="margin: 0; padding: 0;">
							<div class="row" style="padding: 0; margin: 0;">
								<div class="col-xs-12 box-search quick-search">
									<div class="realty-filter clearfix">
										<div class="visible-fields fields">
											<asp:TextBox ID="search" name="search" runat="server" placeholder="Tên từ khóa tìm kiếm"></asp:TextBox>
											<asp:Button ID="btnsearch" runat="server" Text="Tìm kiếm" 
														CssClass="btn btn-primary" OnClick="btnsearch_Click" class="btn btn-primary btn-xs pull-right"></asp:Button>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>
						<!--container-->
					</div>
				</div>
				<div class="container main bs-docs-container">
					<div class="row" role="main">
						<div class="container">
							<div class="project ">
								<div class="row project-1" role="toolbar">
									<asp:ListView ID="ListView3" runat="server">
										<ItemTemplate>
											<div class="col-md-3">
												<div class="project-top project-vip">
													<div class="project-image">
														<span class="star"><i aria-hidden="true"></i>Dự án nổi bật</span>
														<a href="thongtinduan.aspx?id=<%#Eval("PK_iDuan") %>" title="<%#Eval("sTieude") %>">
															<img style="width: 100%; height: 141px;" src="Images/<%#Eval("sImages") %>" class="attachment-index size-index wp-post-image" alt=""></a>
													</div>
													<div class="project-content">
														<h3><a href="thongtinduan.aspx?id=<%#Eval("PK_iDuan") %>" title="<%#Eval("sTieude") %>"><%#Eval("sTieude") %></a></h3>
														<p><%#Eval("sMoTa") %></p>
													</div>
													<!--project-content-->
													<div class="project-cat">
														<p>
															<img src="https://duan.muabannhadat.vn/wp-content/themes/themenhadat/image/icon-loc.png"><%#Eval("sDiaChiCC") %></p>
														<p>
															<img src="https://duan.muabannhadat.vn/wp-content/themes/themenhadat/image/icon-nal.png"><a tabindex="-1"><%#Eval("sCongTy") %></a>
														</p>
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
				<div class="container main bs-docs-container" style="padding-top: 15px;">
					<div class="row" role="main">
						<div class="container">
							<div class="project ">
								<div class="row project-1" role="toolbar">
									<asp:ListView ID="ListView1" runat="server">
										<ItemTemplate>
											<div class="col-md-3">
												<div class="project-top project-vip">
													<div class="project-image">
														<a href="thongtinduan.aspx?id=<%#Eval("PK_iDuan") %>" title="<%#Eval("sTieude") %>">
															<img style="width: 100%; height: 141px;" src="Images/<%#Eval("sImages") %>" class="attachment-index size-index wp-post-image" alt=""></a>
													</div>
													<div class="project-content">
														<h3><a href="thongtinduan.aspx?id=<%#Eval("PK_iDuan") %>" title="<%#Eval("sTieude") %>"><%#Eval("sTieude") %></a></h3>
														<p><%#Eval("sMoTa") %></p>
													</div>
													<!--project-content-->
													<div class="project-cat">
														<p>
															<img src="https://duan.muabannhadat.vn/wp-content/themes/themenhadat/image/icon-loc.png"><%#Eval("sDiaChiCC") %></p>
														<p>
															<img src="https://duan.muabannhadat.vn/wp-content/themes/themenhadat/image/icon-nal.png"><a tabindex="-1"><%#Eval("sCongTy") %></a>
														</p>
													</div>
												</div>
											</div>
										</ItemTemplate>
									</asp:ListView>
								</div>
								<%--<div class="text-center">
						<div class="pagination">
							<ul class="pagination">
								<li class="active"><a>1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li class="next-page"><a href="#">&gt;</a></li>
								<li><a href="#">Last ›</a></li>
							</ul>
						</div> 
					</div>--%>
							</div>
						</div>
					</div>
				</div>
			</ContentTemplate>
		</asp:UpdatePanel>
	</form>
</asp:Content>
