<%@ Page Language="C#" MasterPageFile="Site.master" AutoEventWireup="true" CodeBehind="Duan.aspx.cs" Inherits="BTL_WEBNC.Duan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<div class="body-content" style="padding-left:15px;">
        <div class="search-header">
			<div class="container" style="margin:0;padding:0;">
				<div class="row" style="padding:0;margin:0;">
					<div class="col-xs-12 box-search quick-search">
						<div class="realty-filter clearfix">
							  <form runat="server" id="search_form" action="https://duan.muabannhadat.vn/tim-kiem/" post="GET" role="search">
		  						  <div class="visible-fields fields">
									 <input type="text" name="tu-khoa" value="" placeholder="Tên từ khóa tìm kiếm">
										<select runat="server" name="tinhthanh" id="tinhthanh" data-live-search="true">
											<option value="">- Tỉnh thành -</option>
										</select>
										<select name="gia-du-an" id="gia-du-an" data-live-search="true"><option value="">- Mức giá -</option><option data-children="[]" value="1-ty-2-ty">Dự án 1 tỷ đến 2 tỷ</option><option data-children="[]" value="duoi-1-ty">Dự án dưới 1 tỷ</option><option data-children="[]" value="tren-2-ty">Dự án trên 2 tỷ</option><option data-children="[]" value="gia-cao-cap">Giá cao cấp</option><option data-children="[]" value="gia-re">Giá rẻ</option><option data-children="[]" value="gia-trung-binh">Giá trung bình</option></select>        
										<button id="btnSearch" type="submit">Tìm kiếm <i class="fa fa-search" aria-hidden="true"></i></button>
								  </div>
								  <div class="clearfix"></div>
							  </form>
						   
						</div>
					</div>
				</div>
			</div><!--container-->
		</div>
    </div>
	<div class="container main bs-docs-container">
		<div class="row" role="main">
			<div class="container">
				<div class="project ">
                    <div class="row project-1" role="toolbar">
						<div class="col-md-3">
							<div class="project-top project-vip">
                                <div class="project-image">
                                    <span class="star"><i aria-hidden="true"></i>Dự án nổi bật</span>
                                    <a href="#" title="Khu đô thị phức hợp – cảnh quan Cát Tường Phú Hưng"><img style="width:100%; height:141px;" src="https://duan.muabannhadat.vn/wp-content/uploads/2018/12/cat-tuong-phu-hung-khu-do-thi-gioi-thieu-3-265x141.jpg" class="attachment-index size-index wp-post-image" alt=""></a>
                                </div>
                                <div class="project-content">
                                    <h3><a href="#" title="Khu đô thị phức hợp – cảnh quan Cát Tường Phú Hưng">Khu đô thị phức hợp – cảnh quan Cát Tường Phú Hưng</a></h3>
                                    <p>Là khu đô thị phức hợp – cảnh quan quy mô 92,7ha đầu tiên tại trung tâm thành phố Đồng</p>
                                </div><!--project-content-->
                                <div class="project-cat">
                                    <p><img src="https://duan.muabannhadat.vn/wp-content/themes/themenhadat/image/icon-loc.png">Bình Phước, Thành phố Đồng Xoài</p>
                                    <p><img src="https://duan.muabannhadat.vn/wp-content/themes/themenhadat/image/icon-nal.png"><a tabindex="-1">Công ty Cổ phần Tập đoàn Địa ốc Cát Tường</a>
                                    </p>
                                </div>
                            </div>
						</div>
						<div class="col-md-3">
							<div class="project-top project-vip">
                                <div class="project-image">
                                    <span class="star"><i aria-hidden="true"></i>Dự án nổi bật</span>
                                    <a href="#" title="Khu đô thị phức hợp – cảnh quan Cát Tường Phú Hưng"><img style="width:100%; height:141px;" src="https://duan.muabannhadat.vn/wp-content/uploads/2018/12/cat-tuong-phu-hung-khu-do-thi-gioi-thieu-3-265x141.jpg" class="attachment-index size-index wp-post-image" alt=""></a>
                                </div>
                                <div class="project-content">
                                    <h3><a href="#" title="Khu đô thị phức hợp – cảnh quan Cát Tường Phú Hưng">Khu đô thị phức hợp – cảnh quan Cát Tường Phú Hưng</a></h3>
                                    <p>Là khu đô thị phức hợp – cảnh quan quy mô 92,7ha đầu tiên tại trung tâm thành phố Đồng</p>
                                </div><!--project-content-->
                                <div class="project-cat">
                                    <p><img src="https://duan.muabannhadat.vn/wp-content/themes/themenhadat/image/icon-loc.png">Bình Phước, Thành phố Đồng Xoài</p>
                                    <p><img src="https://duan.muabannhadat.vn/wp-content/themes/themenhadat/image/icon-nal.png"><a tabindex="-1">Công ty Cổ phần Tập đoàn Địa ốc Cát Tường</a>
                                    </p>
                                </div>
                            </div>
						</div>
						<div class="col-md-3">
							<div class="project-top project-vip">
                                <div class="project-image">
                                    <span class="star"><i aria-hidden="true"></i>Dự án nổi bật</span>
                                    <a href="#" title="Khu đô thị phức hợp – cảnh quan Cát Tường Phú Hưng"><img style="width:100%; height:141px;" src="https://duan.muabannhadat.vn/wp-content/uploads/2018/12/cat-tuong-phu-hung-khu-do-thi-gioi-thieu-3-265x141.jpg" class="attachment-index size-index wp-post-image" alt=""></a>
                                </div>
                                <div class="project-content">
                                    <h3><a href="#" title="Khu đô thị phức hợp – cảnh quan Cát Tường Phú Hưng">Khu đô thị phức hợp – cảnh quan Cát Tường Phú Hưng</a></h3>
                                    <p>Là khu đô thị phức hợp – cảnh quan quy mô 92,7ha đầu tiên tại trung tâm thành phố Đồng</p>
                                </div><!--project-content-->
                                <div class="project-cat">
                                    <p><img src="https://duan.muabannhadat.vn/wp-content/themes/themenhadat/image/icon-loc.png">Bình Phước, Thành phố Đồng Xoài</p>
                                    <p><img src="https://duan.muabannhadat.vn/wp-content/themes/themenhadat/image/icon-nal.png"><a tabindex="-1">Công ty Cổ phần Tập đoàn Địa ốc Cát Tường</a>
                                    </p>
                                </div>
                            </div>
						</div>
						<div class="col-md-3">
							<div class="project-top project-vip">
                                <div class="project-image">
                                    <span class="star"><i aria-hidden="true"></i>Dự án nổi bật</span>
                                    <a href="#" title="Khu đô thị phức hợp – cảnh quan Cát Tường Phú Hưng"><img style="width:100%; height:141px;" src="https://duan.muabannhadat.vn/wp-content/uploads/2018/12/cat-tuong-phu-hung-khu-do-thi-gioi-thieu-3-265x141.jpg" class="attachment-index size-index wp-post-image" alt=""></a>
                                </div>
                                <div class="project-content">
                                    <h3><a href="#" title="Khu đô thị phức hợp – cảnh quan Cát Tường Phú Hưng">Khu đô thị phức hợp – cảnh quan Cát Tường Phú Hưng</a></h3>
                                    <p>Là khu đô thị phức hợp – cảnh quan quy mô 92,7ha đầu tiên tại trung tâm thành phố Đồng</p>
                                </div><!--project-content-->
                                <div class="project-cat">
                                    <p><img src="https://duan.muabannhadat.vn/wp-content/themes/themenhadat/image/icon-loc.png">Bình Phước, Thành phố Đồng Xoài</p>
                                    <p><img src="https://duan.muabannhadat.vn/wp-content/themes/themenhadat/image/icon-nal.png"><a tabindex="-1">Công ty Cổ phần Tập đoàn Địa ốc Cát Tường</a>
                                    </p>
                                </div>
                            </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container main bs-docs-container" style="padding-top:15px;">
		<div class="row" role="main">
			<div class="container">
				<div class="project ">
                    <div class="row project-1" role="toolbar">
						<div class="col-md-3">
							<div class="project-top project-vip">
                                <div class="project-image">
                                    <a href="#" title="Khu đô thị phức hợp – cảnh quan Cát Tường Phú Hưng"><img style="width:100%; height:141px;" src="https://duan.muabannhadat.vn/wp-content/uploads/2018/12/cat-tuong-phu-hung-khu-do-thi-gioi-thieu-3-265x141.jpg" class="attachment-index size-index wp-post-image" alt=""></a>
                                </div>
                                <div class="project-content">
                                    <h3><a href="#" title="Khu đô thị phức hợp – cảnh quan Cát Tường Phú Hưng">Khu đô thị phức hợp – cảnh quan Cát Tường Phú Hưng</a></h3>
                                    <p>Là khu đô thị phức hợp – cảnh quan quy mô 92,7ha đầu tiên tại trung tâm thành phố Đồng</p>
                                </div><!--project-content-->
                                <div class="project-cat">
                                    <p><img src="https://duan.muabannhadat.vn/wp-content/themes/themenhadat/image/icon-loc.png">Bình Phước, Thành phố Đồng Xoài</p>
                                    <p><img src="https://duan.muabannhadat.vn/wp-content/themes/themenhadat/image/icon-nal.png"><a tabindex="-1">Công ty Cổ phần Tập đoàn Địa ốc Cát Tường</a>
                                    </p>
                                </div>
                            </div>
						</div>
						<div class="col-md-3">
							<div class="project-top project-vip">
                                <div class="project-image">
                                    <a href="#" title="Khu đô thị phức hợp – cảnh quan Cát Tường Phú Hưng"><img style="width:100%; height:141px;" src="https://duan.muabannhadat.vn/wp-content/uploads/2018/12/cat-tuong-phu-hung-khu-do-thi-gioi-thieu-3-265x141.jpg" class="attachment-index size-index wp-post-image" alt=""></a>
                                </div>
                                <div class="project-content">
                                    <h3><a href="#" title="Khu đô thị phức hợp – cảnh quan Cát Tường Phú Hưng">Khu đô thị phức hợp – cảnh quan Cát Tường Phú Hưng</a></h3>
                                    <p>Là khu đô thị phức hợp – cảnh quan quy mô 92,7ha đầu tiên tại trung tâm thành phố Đồng</p>
                                </div><!--project-content-->
                                <div class="project-cat">
                                    <p><img src="https://duan.muabannhadat.vn/wp-content/themes/themenhadat/image/icon-loc.png">Bình Phước, Thành phố Đồng Xoài</p>
                                    <p><img src="https://duan.muabannhadat.vn/wp-content/themes/themenhadat/image/icon-nal.png"><a tabindex="-1">Công ty Cổ phần Tập đoàn Địa ốc Cát Tường</a>
                                    </p>
                                </div>
                            </div>
						</div>
						<div class="col-md-3">
							<div class="project-top project-vip">
                                <div class="project-image">
                                    <a href="#" title="Khu đô thị phức hợp – cảnh quan Cát Tường Phú Hưng"><img style="width:100%; height:141px;" src="https://duan.muabannhadat.vn/wp-content/uploads/2018/12/cat-tuong-phu-hung-khu-do-thi-gioi-thieu-3-265x141.jpg" class="attachment-index size-index wp-post-image" alt=""></a>
                                </div>
                                <div class="project-content">
                                    <h3><a href="#" title="Khu đô thị phức hợp – cảnh quan Cát Tường Phú Hưng">Khu đô thị phức hợp – cảnh quan Cát Tường Phú Hưng</a></h3>
                                    <p>Là khu đô thị phức hợp – cảnh quan quy mô 92,7ha đầu tiên tại trung tâm thành phố Đồng</p>
                                </div><!--project-content-->
                                <div class="project-cat">
                                    <p><img src="https://duan.muabannhadat.vn/wp-content/themes/themenhadat/image/icon-loc.png">Bình Phước, Thành phố Đồng Xoài</p>
                                    <p><img src="https://duan.muabannhadat.vn/wp-content/themes/themenhadat/image/icon-nal.png"><a tabindex="-1">Công ty Cổ phần Tập đoàn Địa ốc Cát Tường</a>
                                    </p>
                                </div>
                            </div>
						</div>
						<div class="col-md-3">
							<div class="project-top project-vip">
                                <div class="project-image">
                                    <a href="#" title="Khu đô thị phức hợp – cảnh quan Cát Tường Phú Hưng"><img style="width:100%; height:141px;" src="https://duan.muabannhadat.vn/wp-content/uploads/2018/12/cat-tuong-phu-hung-khu-do-thi-gioi-thieu-3-265x141.jpg" class="attachment-index size-index wp-post-image" alt=""></a>
                                </div>
                                <div class="project-content">
                                    <h3><a href="#" title="Khu đô thị phức hợp – cảnh quan Cát Tường Phú Hưng">Khu đô thị phức hợp – cảnh quan Cát Tường Phú Hưng</a></h3>
                                    <p>Là khu đô thị phức hợp – cảnh quan quy mô 92,7ha đầu tiên tại trung tâm thành phố Đồng</p>
                                </div><!--project-content-->
                                <div class="project-cat">
                                    <p><img src="https://duan.muabannhadat.vn/wp-content/themes/themenhadat/image/icon-loc.png">Bình Phước, Thành phố Đồng Xoài</p>
                                    <p><img src="https://duan.muabannhadat.vn/wp-content/themes/themenhadat/image/icon-nal.png"><a tabindex="-1">Công ty Cổ phần Tập đoàn Địa ốc Cát Tường</a>
                                    </p>
                                </div>
                            </div>
						</div>
						<div class="col-md-3">
							<div class="project-top project-vip">
                                <div class="project-image">
                                    <a href="#" title="Khu đô thị phức hợp – cảnh quan Cát Tường Phú Hưng"><img style="width:100%; height:141px;" src="https://duan.muabannhadat.vn/wp-content/uploads/2018/12/cat-tuong-phu-hung-khu-do-thi-gioi-thieu-3-265x141.jpg" class="attachment-index size-index wp-post-image" alt=""></a>
                                </div>
                                <div class="project-content">
                                    <h3><a href="#" title="Khu đô thị phức hợp – cảnh quan Cát Tường Phú Hưng">Khu đô thị phức hợp – cảnh quan Cát Tường Phú Hưng</a></h3>
                                    <p>Là khu đô thị phức hợp – cảnh quan quy mô 92,7ha đầu tiên tại trung tâm thành phố Đồng</p>
                                </div><!--project-content-->
                                <div class="project-cat">
                                    <p><img src="https://duan.muabannhadat.vn/wp-content/themes/themenhadat/image/icon-loc.png">Bình Phước, Thành phố Đồng Xoài</p>
                                    <p><img src="https://duan.muabannhadat.vn/wp-content/themes/themenhadat/image/icon-nal.png"><a tabindex="-1">Công ty Cổ phần Tập đoàn Địa ốc Cát Tường</a>
                                    </p>
                                </div>
                            </div>
						</div>
					</div>
					<div class="text-center">
						<div class="pagination">
							<ul class="pagination">
								<li class="active"><a>1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li class="next-page"><a href="#">&gt;</a></li>
								<li><a href="#">Last ›</a></li>
							</ul>
						</div> 
					</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>
