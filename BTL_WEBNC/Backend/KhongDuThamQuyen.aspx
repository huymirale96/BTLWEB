<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Backend/Backend.Master" CodeBehind="KhongDuThamQuyen.aspx.cs" Inherits="BTL_WEBNC.Backend.KhongDuThamQuyen" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Bạn không đủ quyền để sử dụng chức năng này
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
      <li class="active">Không đủ thẩm quyền</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
     
    <div class="error-page">
      <h2 class="headline text-red"> 403</h2>
      <div class="error-content">
        <h3><i class="fa fa-warning text-red"></i> Rất tiếc. Bạn không được sử dụng chức năng này</h3>
        <p>
          Mời bạn kiểm tra lại hoặc quay về <a href="Welcome.aspx" title="Trang chủ">trang chủ</a>.Chúng tôi rất xin lỗi vì chức năng này chưa được đáp ứng.
        </p>
          <div class="input-group">
            <input type="text" name="search" class="form-control" placeholder="Tìm kiếm chức năng...">
            <div class="input-group-btn">
              <button type="submit" name="submit" class="btn btn-danger btn-flat"><i class="fa fa-search"></i></button>
            </div>
          </div><!-- /.input-group -->
      </div><!-- /.error-content -->
    </div><!-- /.error-page -->
  </section><!-- /.content -->
      </div>
</asp:Content>
