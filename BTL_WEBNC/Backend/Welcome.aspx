﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Backend/Backend.Master"  CodeBehind="Welcome.aspx.cs" Inherits="BTL_WEBNC.Backend.Welcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content-wrapper">
        <section class="content-header">
            <h1> CHỨC NĂNG HỆ THỐNG</h1>
            <ol>
               <li><a href="../Default.aspx"><i class="fa fa-home"></i> Trang chủ</a></li>
                <li class="active">Chức năng hệ thống</li>
            </ol>
        </section>
        <section class="content">
            <div class="row">
                <div class="col-lg-3 col-xs-6">
                    <div class="small-box bg-aqua">
                        <div class="inner">
                            <h4>Danh sách bài viết</h4>
                            <p>
                                <br />
                                <br />
                            </p>
                        </div>
                        <div class="icon">
                            <i class="icon ion-md-paper"></i>
                        </div>
                        <a href="DanhSachBaiViet.aspx" class="small-box-footer">Chi tiết... <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <div class="col-lg-3 col-xs-6"><!-- small box -->
                    <div class="small-box bg-green">
                        <div class="inner">
                            <h4>Danh sách khách hàng</h4>
                            <p>
                                <br />
                                <br />
                            </p>
                        </div>
                        <div class="icon">
                            <i class="icon ion-md-contacts"></i>
                        </div>
                        <a href="DanhNguoiDung.aspx" class="small-box-footer">Chi tiết... <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div><!-- ./col -->
                <div class="col-lg-3 col-xs-6"><!-- small box -->
                    <div class="small-box bg-yellow">
                        <div class="inner">
                            <h4>Danh sách nhân viên</h4>
                            <p>
                                <br />
                                <br />
                            </p>
                        </div>
                        <div class="icon">
                            <i class="icon ion-md-people"></i>
                        </div>
                        <a href="DanhSachTaiKhoan.aspx" class="small-box-footer">Chi tiết...  <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div> <!-- ./col -->
               
                <div class="col-lg-3 col-xs-6"><!-- small box -->
                    <div class="small-box bg-red">
                        <div class="inner">
                            <h4>Danh sách giao dịch</h4>
                            <p>
                                <br />
                                <br />
                            </p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-key"></i>
                        </div>
                        <a href="GiaoDich.aspx" class="small-box-footer">Chi tiết... <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div><!-- ./col -->
               
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6"> <!-- small box -->
                    <div class="small-box bg-fuchsia">
                        <div class="inner">
                            <h4>Đổi mật khẩu</h4>
                            <p>
                                <br />
                                <br />
                            </p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-settings"></i>
                        </div>
                        <a href="DoiMatKhau.aspx" class="small-box-footer">Chi tiết... <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div><!-- ./col -->
				<!-- ./col -->
                <div class="col-lg-3 col-xs-6"> <!-- small box -->
                    <div class="small-box bg-light-blue">
                        <div class="inner">
                            <h4>Danh Sách Dự Án</h4>
                            <p>
                                <br />
                                <br />
                            </p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-settings"></i>
                        </div>
                        <a href="DanhSachDuAn.aspx" class="small-box-footer">Chi tiết... <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div><!-- ./col --> 
				<!-- ./col -->
                <div class="col-lg-3 col-xs-6"> <!-- small box -->
                    <div class="small-box bg-fuchsia">
                        <div class="inner">
                            <h4>Danh Sách lịch sử giao dịch</h4>
                            <p>
                                <br />
                                <br />
                            </p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-settings"></i>
                        </div>
                        <a href="LichSuGD.aspx" class="small-box-footer">Chi tiết... <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div><!-- ./col --> 
            </div>
        </section>
    </div>
</asp:Content>
