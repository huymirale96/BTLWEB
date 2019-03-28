<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Backend/Backend.Master" CodeBehind="DoiMatKhau.aspx.cs" Inherits="BTL_WEBNC.Backend.DoiMatKhau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../scripts/backend/jquery.min.js"></script>
    <script src="../scripts/backend/doimatkhau.js"></script>
    <style type="text/css">
        @-webkit-keyframes my {
            0% {
                color: #F8CD0A;
            }

            50% {
                color: #fff;
            }

            100% {
                color: #F8CD0A;
            }
        }
        @-moz-keyframes my {
            0% {
                color: #F8CD0A;
            }

            50% {
                color: #fff;
            }

            100% {
                color: #F8CD0A;
            }
        }
        @-o-keyframes my {
            0% {
                color: #F8CD0A;
            }

            50% {
                color: #fff;
            }

            100% {
                color: #F8CD0A;
            }
        }
        @keyframes my {
            0% {
                color: #F8CD0A;
            }

            50% {
                color: #fff;
            }

            100% {
                color: #F8CD0A;
            }
        }
        .test {
            background: #3d3d3d;
            font-size: 24px;
            font-weight: bold;
            -webkit-animation: my 700ms infinite;
            -moz-animation: my 700ms infinite;
            -o-animation: my 700ms infinite;
            animation: my 700ms infinite;
        }
        @-webkit-keyframes my {
            0%

        {
            color: #F8CD0A;
        }

        50% {
            color: #fff;
        }

        100% {
            color: #F8CD0A;
        }

        }
        @-moz-keyframes my {
            0% {
                color: #F8CD0A;
            }

            50% {
                color: #fff;
            }

            100% {
                color: #F8CD0A;
            }
        }
        @-o-keyframes my {
            0% {
                color: #F8CD0A;
            }

            50% {
                color: #fff;
            }

            100% {
                color: #F8CD0A;
            }
        }
        @keyframes my {
            0% {
                color: #F8CD0A;
            }

            50% {
                color: #fff;
            }

            100% {
                color: #F8CD0A;
            }
        }
        .test {
            background: #3d3d3d;
            font-size:10pt;
            font-weight: bold;
            -webkit-animation: my 700ms infinite;
            -moz-animation: my 700ms infinite;
            -o-animation: my 700ms infinite;
            animation: my 700ms infinite;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="content-wrapper">
  <section class="content-header">
    <h1>
      Đổi mật khẩu cho tài khoản
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
      <li class="active">Đổi mật khẩu</li>
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
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <br /><br />
                    <div class="form-group">
                        <label>Tên tài khoản</label>
                        <asp:TextBox ID="TenTaiKhoan" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Mật khẩu cũ</label>
                        <asp:TextBox ID="MatKhauCu" runat="server" CssClass="form-control" placeholder="Nhập mật khẩu cũ..." TextMode="Password"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ForeColor="Red" 
                         ControlToValidate="MatKhauMoi" >Vui lòng nhập mật khẩu cũ</asp:RequiredFieldValidator>
                        <small id="lbmatkhaucu" class="test"></small>
                    </div>
                    <div class="form-group">
                        <label>Mật khẩu mới</label>
                        <asp:TextBox ID="MatKhauMoi" runat="server" CssClass="form-control" placeholder="Nhập mật khẩu mới..." TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ForeColor="Red" 
                         ControlToValidate="MatKhauMoi" >Vui lòng nhập mật khẩu mới</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ControlToValidate="MatKhauMoi" 
                           ForeColor="Red"  ValidationExpression="\w{1,30}">Mật khẩu không được có dấu (ký tự đặc biệt)
                        </asp:RegularExpressionValidator>
                        <small id="lbmatkhaumoi" class="test"></small>
                    </div>
                    <div class="form-group">
                        <label>Nhập lại mật khẩu mới</label>
                        <asp:TextBox ID="NhapLaiMatKhauMoi" runat="server" CssClass="form-control" placeholder="Nhập lại mật khẩu mới..." TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="NhapLaiMatKhauMoi" Display="Dynamic" ForeColor="Red">Nhập lại mật khẩu mới</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" ControlToValidate="NhapLaiMatKhauMoi" ControlToCompare="MatKhauMoi" Display="Dynamic" runat="server" 
                        ForeColor="Red" >Mật khẩu nhập lại không đúng</asp:CompareValidator>
                        <small id="lbmatkhaumoi1" class="test"></small>
                    </div>
                    <br /><br />
                </div>
                <div class="col-md-4"></div>
          </div><!-- /.box-body -->
          <div class="box-footer text-center">
                <asp:LinkButton ID="btnCapNhatMatKhau" runat="server" 
                    CssClass="btn btn-primary" OnClick="btnCapNhatMatKhau_Click" ><i class="fa fa-check"></i> Cập nhật</asp:LinkButton>
                <asp:LinkButton ID="btnVeTrangChu_MatKhau" runat="server" 
                    CssClass="btn btn-danger" OnClick="btnVeTrangChu_MatKhau_Click"  ><i class="fa fa-home"></i> Trang chủ</asp:LinkButton>
                 
          </div>
        </div><!-- /.box -->
      </div>  <!--end col 12-->
      </div>
      </form>
      
    </section><!-- /.content -->
    <%--<script type="text/javascript">
        window.onload = function (e) { 
            <%= status %>
        }
        
    </script>--%>
  </div><!-- /.content-wrapper -->
</asp:Content>
