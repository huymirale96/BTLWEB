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
							<a class="btn-showmore pull-right" href="http://www.muabannhadat.vn/du-an-vip">Xem thêm</a>
						</h2>
					</div>
					<div class="panel-body">
						<div class="row" id="featureProjectNormal">
							<div class="col-xs-12 col-sm-6 col-lg-3">
								<div class="mbnd-card ">
									<div class="listing-tag">
										<div class="imgListing">
											<a href="https://duan.muabannhadat.vn/du-an-khu-do-thi-happy-home-ca-mau.html" target="_blank">
												<img class="img-responsive imageFeaturedBox" src="http://www.muabannhadat.vn/uploads/images/007/010/197/8me0M5pqTUqxsE2BJbvG3A_3.jpg" alt=" Happy Home">
											</a>
										</div>
									</div>
									<div class="card-body">
										<h3 class="card-title one-line"><a class="" href="https://duan.muabannhadat.vn/du-an-khu-do-thi-happy-home-ca-mau.html" target="_blank">Happy Home</a></h3>
										<p class="card-text">Thành phố Cà Mau, Cà Mau</p>
										<p class="card-price">Giá bảo mật</p>
									</div>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-lg-3">
								<div class="mbnd-card ">
									<div class="listing-tag">
										<div class="imgListing">
											<a href="https://duan.muabannhadat.vn/kdt-cat-tuong-phu-hung-dong-xoai-binh-phuoc.html" target="_blank">
												<img class="img-responsive imageFeaturedBox" src="http://www.muabannhadat.vn/uploads/images/007/997/450/OLH9Xm9CLUarkZCXc50g3Q_3.jpg" alt=" Cát Tường Phú Hưng ">
											</a>
										</div>
									</div>
									<div class="card-body">
										<h3 class="card-title one-line"><a class="" href="https://duan.muabannhadat.vn/kdt-cat-tuong-phu-hung-dong-xoai-binh-phuoc.html" target="_blank">Cát Tường Phú Hưng </a></h3>
										<p class="card-text">Thị xã Đồng Xoài, Bình Phước</p>
										<p class="card-price">Giá bảo mật</p>
									</div>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-lg-3">
								<div class="mbnd-card ">
									<div class="listing-tag">
										<div class="imgListing">
											<a href="https://duan.muabannhadat.vn/du-an-biet-thu-azalea-homes-hoang-mai.html" target="_blank">
												<img class="img-responsive imageFeaturedBox" src="http://www.muabannhadat.vn/uploads/images/007/844/711/l8lpUz-nDkKGCR7oEw4CUA_3.jpg" alt=" Azalea Homes ">
											</a>
										</div>
									</div>
									<div class="card-body">
										<h3 class="card-title one-line"><a class="" href="https://duan.muabannhadat.vn/du-an-biet-thu-azalea-homes-hoang-mai.html" target="_blank">Azalea Homes </a></h3>
										<p class="card-text">Quận Hoàng Mai, TP.Hà Nội</p>
										<p class="card-price">Giá bảo mật</p>
									</div>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-lg-3">
								<div class="mbnd-card ">
									<div class="listing-tag">
										<div class="imgListing">
											<a href="https://duan.muabannhadat.vn/vip/khu-do-thi-luxury-central/" target="_blank">
												<img class="img-responsive imageFeaturedBox" src="http://www.muabannhadat.vn/uploads/images/007/437/963/th3bi_Ed-UWaqtub3QOO4Q_3.jpg" alt=" Luxury Central">
											</a>
										</div>
									</div>
									<div class="card-body">
										<h3 class="card-title one-line"><a class="" href="https://duan.muabannhadat.vn/vip/khu-do-thi-luxury-central/" target="_blank">Luxury Central</a></h3>
										<p class="card-text">Huyện Cần Giuộc, Long An</p>
										<p class="card-price">Giá bảo mật</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="panel mbnd-panel-feature">
					<div class="panel-heading">
						<h2 class="title-h2 text-uppercase">
							Bất động sản nổi bật
							<a class="btn-showmore pull-right" href="http://www.muabannhadat.vn/nha-dat-3490" onclick="setCookieFeaturedObject();">Xem thêm</a>
						</h2>
					</div>
					<div class="panel-body">
						<div id="" class="row cussrow">
							<div class="col-xs-12 col-sm-6 col-lg-3 listing-zone">
								<div class="mbnd-card  listing-tag-a-first">
									<div class="listing-tag">
										<div class="imgListing">
											<a href="/dat-ban-dat-tho-cu-3532/ban-suat-noi-bo-du-an-diamond-city-nga-tu-tan-quy-7876634">
												<img class="img-responsive imageFeaturedBox" src="http://www.muabannhadat.vn/uploads/images/007/876/634/n1VzL-XoR0K0hxt3Zbevwg_3.jpg" alt=" Bán Suát Nội Bộ Dự án Diamond City Ngã Tư Tân Quy - Huyện Củ Chi ...">
											</a>
										</div>
									</div>
									<div class="card-body">
										<h3 class="card-title">
											<a href="/dat-ban-dat-tho-cu-3532/ban-suat-noi-bo-du-an-diamond-city-nga-tu-tan-quy-7876634">
												Bán Suát Nội Bộ Dự án Diamond City Ngã Tư Tân Quy - Huyện Củ Chi ...
											</a>
										</h3>
										<p class="card-text">Huyện Củ Chi, TP.Hồ Chí Minh</p>
										<p class="card-price">620 Triệu VNĐ</p>
									</div>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-lg-3 listing-zone">
								<div class="mbnd-card ">
									<div class="listing-tag">
										<div class="imgListing">
											<a href="/dat-ban-dat-tho-cu-3532/dau-tu-sinh-loi-nhanh-voi-dat-nen-2-mat-tien-shr-x-8261253">
												<img class="img-responsive imageFeaturedBox" src="http://www.muabannhadat.vn/uploads/images/008/261/253/YcOybv0EkE-123azr7GrxA_3.jpg" alt=" Đầu tư sinh lời nhanh với đất nền 2 mặt tiền SHR, xây dựng tự do">
											</a>
										</div>
									</div>
									<div class="card-body">
										<h3 class="card-title">
											<a href="/dat-ban-dat-tho-cu-3532/dau-tu-sinh-loi-nhanh-voi-dat-nen-2-mat-tien-shr-x-8261253">
												Đầu tư sinh lời nhanh với đất nền 2 mặt tiền SHR, xây dựng tự do
											</a>
										</h3>
										<p class="card-text">Huyện Bàu Bàng, Bình Dương</p>
										<p class="card-price">700 Triệu VNĐ</p>
									</div>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-lg-3 listing-zone">
								<div class="mbnd-card ">
									<div class="listing-tag">
										<div class="imgListing">
											<a href="/dat-ban-dat-tho-cu-3532/chinh-thuc-mo-ban-khu-do-thi-saphia-garden-chi-289-6699510">
												<img class="img-responsive imageFeaturedBox" src="http://www.muabannhadat.vn/uploads/images/006/699/510/-EyDx0TICkG39jLOSiNn2Q_3.jpg" alt=" Chính Thức Mở Bán Khu Đô Thị Saphia Garden Chỉ 289 Triệu/nền">
											</a>
										</div>
									</div>
									<div class="card-body">
										<h3 class="card-title">
											<a href="/dat-ban-dat-tho-cu-3532/chinh-thuc-mo-ban-khu-do-thi-saphia-garden-chi-289-6699510">
												Chính Thức Mở Bán Khu Đô Thị Saphia Garden Chỉ 289 Triệu/nền
											</a>
										</h3>
										<p class="card-text">Huyện Bình Chánh, TP.Hồ Chí Minh</p>
										<p class="card-price">289 Triệu VNĐ</p>
									</div>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-lg-3 listing-zone">
								<div class="mbnd-card ">
									<div class="listing-tag">
										<div class="imgListing">
											<a href="/dat-ban-dat-tho-cu-3532/dat-kdc-cu-chi-gia-310tr-80m2-shr-ck-5-ngay-cho-cu-8251127">
												<img class="img-responsive imageFeaturedBox" src="http://www.muabannhadat.vn/uploads/images/008/251/127/5JMVP2aglkCx3HTEhPKIsw_3.jpg" alt=" Đất KDC Củ Chi-Giá 310tr/80m2-SHR-Ck 5%-Ngay chợ Củ Chi-Dân đông ...">
											</a>
										</div>
									</div>
									<div class="card-body">
										<h3 class="card-title">
											<a href="/dat-ban-dat-tho-cu-3532/dat-kdc-cu-chi-gia-310tr-80m2-shr-ck-5-ngay-cho-cu-8251127">
												Đất KDC Củ Chi-Giá 310tr/80m2-SHR-Ck 5%-Ngay chợ Củ Chi-Dân đông ...
											</a>
										</h3>
										<p class="card-text">Huyện Củ Chi, TP.Hồ Chí Minh</p>
										<p class="card-price">310 Triệu VNĐ</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="panel mbnd-panel-feature">
					<div class="panel-heading">
						<h2 class="title-h2 text-uppercase">
							Tin Tức Nổi Bật
							<a class="btn-showmore pull-right" href="http://www.muabannhadat.vn/nha-dat-3490" onclick="setCookieFeaturedObject();">Xem thêm</a>
						</h2>
					</div>
					<div class="panel-body">
						<div id="" class="row cussrow">
							<div class="col-xs-12 col-sm-6 col-lg-3 listing-zone">
								<div class="mbnd-card  listing-tag-a-first">
									<div class="listing-tag">
										<div class="imgListing">
											<a href="/dat-ban-dat-tho-cu-3532/ban-suat-noi-bo-du-an-diamond-city-nga-tu-tan-quy-7876634">
												<img class="img-responsive imageFeaturedBox" src="http://www.muabannhadat.vn/uploads/images/007/876/634/n1VzL-XoR0K0hxt3Zbevwg_3.jpg" alt=" Bán Suát Nội Bộ Dự án Diamond City Ngã Tư Tân Quy - Huyện Củ Chi ...">
											</a>
										</div>
									</div>
									<div class="card-body">
										<h3 class="card-title">
											<a href="/dat-ban-dat-tho-cu-3532/ban-suat-noi-bo-du-an-diamond-city-nga-tu-tan-quy-7876634">
												Bán Suát Nội Bộ Dự án Diamond City Ngã Tư Tân Quy - Huyện Củ Chi ...
											</a>
										</h3>
										<p class="card-text">Huyện Củ Chi, TP.Hồ Chí Minh</p>
										<p class="card-price">620 Triệu VNĐ</p>
									</div>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-lg-3 listing-zone">
								<div class="mbnd-card ">
									<div class="listing-tag">
										<div class="imgListing">
											<a href="/dat-ban-dat-tho-cu-3532/dau-tu-sinh-loi-nhanh-voi-dat-nen-2-mat-tien-shr-x-8261253">
												<img class="img-responsive imageFeaturedBox" src="http://www.muabannhadat.vn/uploads/images/008/261/253/YcOybv0EkE-123azr7GrxA_3.jpg" alt=" Đầu tư sinh lời nhanh với đất nền 2 mặt tiền SHR, xây dựng tự do">
											</a>
										</div>
									</div>
									<div class="card-body">
										<h3 class="card-title">
											<a href="/dat-ban-dat-tho-cu-3532/dau-tu-sinh-loi-nhanh-voi-dat-nen-2-mat-tien-shr-x-8261253">
												Đầu tư sinh lời nhanh với đất nền 2 mặt tiền SHR, xây dựng tự do
											</a>
										</h3>
										<p class="card-text">Huyện Bàu Bàng, Bình Dương</p>
										<p class="card-price">700 Triệu VNĐ</p>
									</div>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-lg-3 listing-zone">
								<div class="mbnd-card ">
									<div class="listing-tag">
										<div class="imgListing">
											<a href="/dat-ban-dat-tho-cu-3532/chinh-thuc-mo-ban-khu-do-thi-saphia-garden-chi-289-6699510">
												<img class="img-responsive imageFeaturedBox" src="http://www.muabannhadat.vn/uploads/images/006/699/510/-EyDx0TICkG39jLOSiNn2Q_3.jpg" alt=" Chính Thức Mở Bán Khu Đô Thị Saphia Garden Chỉ 289 Triệu/nền">
											</a>
										</div>
									</div>
									<div class="card-body">
										<h3 class="card-title">
											<a href="/dat-ban-dat-tho-cu-3532/chinh-thuc-mo-ban-khu-do-thi-saphia-garden-chi-289-6699510">
												Chính Thức Mở Bán Khu Đô Thị Saphia Garden Chỉ 289 Triệu/nền
											</a>
										</h3>
										<p class="card-text">Huyện Bình Chánh, TP.Hồ Chí Minh</p>
										<p class="card-price">289 Triệu VNĐ</p>
									</div>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-lg-3 listing-zone">
								<div class="mbnd-card ">
									<div class="listing-tag">
										<div class="imgListing">
											<a href="/dat-ban-dat-tho-cu-3532/dat-kdc-cu-chi-gia-310tr-80m2-shr-ck-5-ngay-cho-cu-8251127">
												<img class="img-responsive imageFeaturedBox" src="http://www.muabannhadat.vn/uploads/images/008/251/127/5JMVP2aglkCx3HTEhPKIsw_3.jpg" alt=" Đất KDC Củ Chi-Giá 310tr/80m2-SHR-Ck 5%-Ngay chợ Củ Chi-Dân đông ...">
											</a>
										</div>
									</div>
									<div class="card-body">
										<h3 class="card-title">
											<a href="/dat-ban-dat-tho-cu-3532/dat-kdc-cu-chi-gia-310tr-80m2-shr-ck-5-ngay-cho-cu-8251127">
												Đất KDC Củ Chi-Giá 310tr/80m2-SHR-Ck 5%-Ngay chợ Củ Chi-Dân đông ...
											</a>
										</h3>
										<p class="card-text">Huyện Củ Chi, TP.Hồ Chí Minh</p>
										<p class="card-price">310 Triệu VNĐ</p>
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
