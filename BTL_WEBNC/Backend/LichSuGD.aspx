<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Backend/Backend.Master" CodeBehind="LichSuGD.aspx.cs" Inherits="BTL_WEBNC.Backend.LichSuGD" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <script src="../Scripts/backend/jquery-3.3.1.min.js"></script>
    <script src="../Scripts/backend/jquery-3.3.1.js"></script>
    <script src="../Scripts/backend/AjaxEj.js"></script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <div class="content-wrapper">
        <section class="content-header">
            <h1>Lịch sử giao dịch
            </h1>
            <ol class="breadcrumb">
                <li><a href="Welcome.aspx"><i class="fa fa-dashboard"></i>Trang chủ</a></li>
                <li class="active">Lịch sử giao dịch</li>
            </ol>
        </section>
        <form id="form1" runat="server">
            <section class="content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="box box-success">
                           <%-- <div class="box-header with-border">
                                <h3 class="box-title">Danh sách</h3>
                            </div>--%>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="male">Năm giao dịch</label>
                                    <div class="input-group">
                                       
                                        <select id="namgd" class="form-control">
                                            <option value="0">---Chọn năm---</option>
                                            <option value="2019">2019</option>
                                            <option value="2018">2018</option>
                                            <option value="2017">2017</option>
                                        </select>
                                    </div>
                                </div>
                                <table class="table table-bordered table-hover">
                                    <thead>
                                       <tr>
                                            <th class="text-center col-md-4">Tên hóa đơn</th>
                                            <th class="col-md-4">Nội dung sửa</th>
                                            <th class="text-center col-md-4">Ngày lập </th>
                                            <th class="text-center col-md-4">Ngày sửa</th>
                                            <th class="text-center col-md-4">Người sửa</th>
                                       </tr>
                                    </thead>
                                    <tbody id="timkiemhomnay">
                                    </tbody>
                                </table>

                            </div>
                            <!-- /.box-body -->

                        </div>
                        <!-- /.box -->
                    </div>
                    <!--end col 4-->
                </div>
                <!-- /.row -->
            </section>
        </form>
    </div>
</asp:Content>