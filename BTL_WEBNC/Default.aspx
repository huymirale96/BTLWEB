<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BTL_WEBNC._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<div id="main-content" class="container">
        <div class="category-title">
            <hr class="title-strike" />
            <h4 class="title-text">SẢN PHẨM MỚI</h4>
        </div>
        <div id="new-product">
            <div class="row">
                <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-3 col-md-4">
                            <div class="card" onclick="location.href='ProductDetail.aspx?id=<%#Eval("id") %>';">
                                <img class="card-img-top" style="padding: 2px;" src="<%#Eval("productImg") %>" alt="Card image cap">
                                <div class="card-body">
                                    <div>
                                        <p class="card-title"><%#Eval("productName") %></p>
                                    </div>

                                    <p class="card-text">
                                        <span class="price">
                                            <%#Eval("discountPrice") %>đ
                                        </span>
                                        <%# (Eval("discountPrice").Equals(Eval("productPrice"))) ? "" : "<del>"+ Eval("productPrice") +"đ</del>" %>
                                    </p>
                                    <div class="card-link" style="text-align: right;">
                                        <a href="ProductDetail.aspx?id=<%#Eval("id") %>" class="details card-link">Chi tiết</a>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>
        <div class="category-title">
            <hr class="title-strike" />
            <h4 class="title-text">SẢN PHẨM GIẢM GIÁ</h4>
        </div>
        <div id="discount-product">
            <div class="row">
                <asp:ListView ID="ListView2" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-3 col-md-4 col-xs-6">
                            <div class="card" onclick="location.href='ProductDetail.aspx?id=<%#Eval("id") %>';">
                                <img class="card-img-top" style="padding: 2px;" src="<%#Eval("productImg") %>" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title"><%#Eval("productName") %></h5>

                                    <p class="card-text">
                                        <span class="price">
                                            <%#Eval("discountPrice") %>đ
                                        </span>
                                        <%# (Eval("discountPrice").Equals(Eval("productPrice"))) ? "" : "<del>"+ Eval("productPrice") +"đ</del>" %>
                                    </p>
                                    <div class="card-link" style="text-align: right;">
                                        <a href="ProductDetail.aspx?id=<%#Eval("id") %>" class="details">Chi tiết</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>
        <div class="category-title">
            <hr class="title-strike" />
            <h4 class="title-text">SẢN PHẨM BÁN CHẠY</h4>
        </div>
        <div id="best-selling">
            <div class="row">
                <asp:ListView ID="ListView3" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-3 col-md-4 col-xs-6">
                            <div class="card" onclick="location.href='ProductDetail.aspx?id=<%#Eval("id") %>';">
                                <img class="card-img-top" style="padding: 2px;" src="<%#Eval("productImg") %>" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title"><%#Eval("productName") %></h5>
                                    <p class="card-text">
                                        <span class="price">
                                            <%#Eval("discountPrice") %>đ
                                        </span>
                                        <%# (Eval("discountPrice").Equals(Eval("productPrice"))) ? "" : "<del>"+ Eval("productPrice") +"đ</del>" %>
                                    </p>
                                    <div class="card-link" style="text-align: right;">

                                        <a href="ProductDetail.aspx?id=<%#Eval("id") %>" class="details">Chi tiết</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>
        <div class="category-title">
            <hr class="title-strike" />
            <h4 class="title-text">CÓ THỂ BẠN QUAN TÂM</h4>
        </div>
        <div id="intersted-product">
            <div class="row">
                <asp:ListView ID="ListView4" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-3 col-md-4 col-xs-6">
                            <div class="card" onclick="location.href='ProductDetail.aspx?id=<%#Eval("id") %>';">
                                <img class="card-img-top" style="padding: 2px;" src="<%#Eval("productImg") %>" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title"><%#Eval("productName") %></h5>

                                    <p class="card-text">
                                        <span class="price">
                                            <%#Eval("discountPrice") %>đ
                                        </span>
                                        <%# (Eval("discountPrice").Equals(Eval("productPrice"))) ? "" : "<del>"+ Eval("productPrice") +"đ</del>" %>
                                    </p>
                                    <div class="card-link" style="text-align: right;">
                                        <a href="ProductDetail.aspx?id=<%#Eval("id") %>" class="details">Chi tiết</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>
    </div>
</asp:Content>
