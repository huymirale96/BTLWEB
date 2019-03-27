<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BTL_WEBNC._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<div class="body-content">
        <div class="jumbotron head">
            <div class="container head">
                <div class="row">
                    <div class="col-lg-10 col-md-8 hidden-md hidden-sm hidden-xs">
                            
                        <h1 id="headingSlogan" style="font-size: 15px; margin: 0; padding: 0; font-weight: normal">
                            <span id="lblSlogan" class="slogan">Chào mừng bạn đến với MuaBanNhaDat!</span>
                        </h1>
                    </div>
                    <div class="col-lg-2 col-md-12 col-xs-12">
                        <a id="lnkCreateAd" class="pull-right btn mbnd-btn-red" href="/member/tao-tin-dang-moi">
							<img src="/img/svg/ic-pencil.svg"> Đăng tin miễn phí</a>
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
						<div id="featureObjectNormal" class="row cussrow">
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
				<div class="row">
					<div class="col-lg-8">
						<div class="panel mbnd-panel-feature">
							<div class="panel-heading">
								<h2 class="title-h2 text-uppercase">
									<a id="MainContent_ctl03_HyperLinkHeader" title="Bất động sản mới nhất" href="/nha-dat-3490">Tin đăng BĐS mới nhất </a>
								</h2>
							</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-md-12">
										<div class="mbnd-card mbnd-objectLastest">
											<div class="card-body">
												<div class="row">
													<div class="col-xs-12 col-sm-3">
														<a href="/nha-ban-nha-pho-3535/ban-nha-moi-xay-ngay-le-trong-tan-nga-tu-go-may-du-8145209">
															<img class="img-responsive cusimg-responsive" src="http://www.muabannhadat.vn/uploads/images/008/145/209/EhyhmRDQd0esTO8JxSqK3Q_3.jpg" alt="Bán nhà mới xây ngay Lê trọng tấn ngã tư gò mấy Đúc 3 tấm S:76m2 Gía chỉ 1.6 tỷ /căn">
														</a>
													</div>
													<div class="col-xs-12 col-sm-9">
														<h3 class="card-title title row-fluid latest-title"><a href="/nha-ban-nha-pho-3535/ban-nha-moi-xay-ngay-le-trong-tan-nga-tu-go-may-du-8145209">Bán nhà mới xây ngay Lê trọng tấn ngã tư gò mấy Đúc 3 tấm S:76m2 Gía chỉ 1.6 tỷ /căn</a></h3>
														<p class="card-price">1,62 Tỷ VNĐ</p>
														<p class="card-text">Quận Tân Phú</p>
														<!--<p class="card-text">Nhà phố tại TP.Hồ Chí Minh. Tình trạng Sổ hồng Liên Hệ!</p>-->
													</div>
												</div>
											</div>
										</div>
                            
										<div class="mbnd-card mbnd-objectLastest">
											<div class="card-body">
												<div class="row">
													<div class="col-xs-12 col-sm-3">
														<a href="/nha-ban-nha-pho-3535/ban-nha-1tr-2lau-duong-no-trang-long-phuong-12-bin-8212992">
															<img class="img-responsive cusimg-responsive" src="http://www.muabannhadat.vn/uploads/images/008/212/992/noVMkiyWv0OZg2Zvy0LfGw_3.jpg" alt="Bán nhà  1tr,2lầu đường Nơ Trang Long, Phường 12, Bình Thạnh">
														</a>
													</div>
													<div class="col-xs-12 col-sm-9">
														<h3 class="card-title title row-fluid latest-title"><a href="/nha-ban-nha-pho-3535/ban-nha-1tr-2lau-duong-no-trang-long-phuong-12-bin-8212992">Bán nhà  1tr,2lầu đường Nơ Trang Long, Phường 12, Bình Thạnh</a></h3>
														<p class="card-price">4,3 Tỷ VNĐ</p>
														<p class="card-text">Quận Bình Thạnh</p>
														<!--<p class="card-text">Bán gấp nhà hẻm đường Nơ Trang Long, P12, Bình Thạnh.DT 3.4x12.6m công nhận đủ.Kết cấu nhà 1 trệt, 1 lửng, 2 lầu, ST.Khu dân cư hiện hữu, an ninh rất tốt.</p>-->
													</div>
												</div>
											</div>
										</div>
                            
										<div class="mbnd-card mbnd-objectLastest">
											<div class="card-body">
												<div class="row">
													<div class="col-xs-12 col-sm-3">
														<a href="/nha-ban-nha-pho-3535/can-ban-nha-mat-tien-le-loi-nha-trang-dien-tich-84-6805553">
															<img class="img-responsive cusimg-responsive" src="http://www.muabannhadat.vn/uploads/images/006/805/553/sljKymrG80eppuQsJ5XEqA_3.jpg" alt="Cần bán nhà mặt tiền Lê Lợi – Nha Trang diện tích 84m2 giá 22 tỷ">
														</a>
													</div>
													<div class="col-xs-12 col-sm-9">
														<h3 class="card-title title row-fluid latest-title"><a href="/nha-ban-nha-pho-3535/can-ban-nha-mat-tien-le-loi-nha-trang-dien-tich-84-6805553">Cần bán nhà mặt tiền Lê Lợi – Nha Trang diện tích 84m2 giá 22 tỷ</a></h3>
														<p class="card-price">22 Tỷ VNĐ</p>
														<p class="card-text">Thành phố Nha Trang</p>
														<!--<p class="card-text">Cần bán nhà mặt tiền Lê Lợi – Nha Trang diện tích 84m2 giá 22 tỷ</p>-->
													</div>
												</div>
											</div>
										</div>
                            
										<div class="mbnd-card mbnd-objectLastest">
											<div class="card-body">
												<div class="row">
													<div class="col-xs-12 col-sm-3">
														<a href="/nha-ban-nha-pho-3535/ban-nha-02-tang-mat-tien-duong-bach-dang-tan-lap-d-7239873">
															<img class="img-responsive cusimg-responsive" src="http://www.muabannhadat.vn/uploads/images/007/239/873/Cn1P0jXjYkCe-4bbav8-_Q_3.jpg" alt="Bán nhà 02 tầng mặt tiền đường Bạch Đằng – Tân Lập DT 86m2 Rộng 5,5m Giá 15,5 tỷ">
														</a>
													</div>
													<div class="col-xs-12 col-sm-9">
														<h3 class="card-title title row-fluid latest-title"><a href="/nha-ban-nha-pho-3535/ban-nha-02-tang-mat-tien-duong-bach-dang-tan-lap-d-7239873">Bán nhà 02 tầng mặt tiền đường Bạch Đằng – Tân Lập DT 86m2 Rộng 5,5m Giá 15,5 tỷ</a></h3>
														<p class="card-price">15,5 Tỷ VNĐ</p>
														<p class="card-text">Thành phố Nha Trang</p>
														<!--<p class="card-text">Bán nhà 02 tầng mặt tiền đường Bạch Đằng – Tân Lập DT 86m2 Rộng 5,5m Giá 15,5 tỷ</p>-->
													</div>
												</div>
											</div>
										</div>
                            
										<div class="mbnd-card mbnd-objectLastest">
											<div class="card-body">
												<div class="row">
													<div class="col-xs-12 col-sm-3">
														<a href="/nha-ban-khac-3592/can-ban-day-nha-tro-20-phong-ngay-cho-viet-kieu-cu-7096790">
															<img class="img-responsive cusimg-responsive" src="http://www.muabannhadat.vn/uploads/images/007/096/790/h0H1_eoJJkOWmcrgKqGFLQ_3.jpg" alt="Cần bán dãy nhà trọ 20 phòng ngay chợ Việt Kiều, Củ Chi, hiện đang cho thuê, 15x25m">
														</a>
													</div>
													<div class="col-xs-12 col-sm-9">
														<h3 class="card-title title row-fluid latest-title"><a href="/nha-ban-khac-3592/can-ban-day-nha-tro-20-phong-ngay-cho-viet-kieu-cu-7096790">Cần bán dãy nhà trọ 20 phòng ngay chợ Việt Kiều, Củ Chi, hiện đang cho thuê, 15x25m</a></h3>
														<p class="card-price">2 Tỷ VNĐ</p>
														<p class="card-text">Huyện Củ Chi</p>
														<!--<p class="card-text">Đất thổ cư tại TP.Hồ Chí Minh. Tình trạng Sổ hồng Tìm Hiểu Ngay!</p>-->
													</div>
												</div>
											</div>
										</div>
                            
										<div class="mbnd-card mbnd-objectLastest">
											<div class="card-body">
												<div class="row">
													<div class="col-xs-12 col-sm-3">
														<a href="/nha-ban-nha-pho-3535/ban-nha-pho-yen-hoa-5-tang-dien-tich-32m-gia-3-85-7723646">
															<img class="img-responsive cusimg-responsive" src="http://www.muabannhadat.vn/uploads/images/007/723/646/CkvbkgB-6ku1y7GHoSzkHQ_3.jpg" alt="Bán nhà phố Yên Hòa, 5 tầng, diện tích 32m, giá 3.85 tỷ">
														</a>
													</div>
													<div class="col-xs-12 col-sm-9">
														<h3 class="card-title title row-fluid latest-title"><a href="/nha-ban-nha-pho-3535/ban-nha-pho-yen-hoa-5-tang-dien-tich-32m-gia-3-85-7723646">Bán nhà phố Yên Hòa, 5 tầng, diện tích 32m, giá 3.85 tỷ</a></h3>
														<p class="card-price">3,85 Tỷ VNĐ</p>
														<p class="card-text">Quận Cầu Giấy</p>
														<!--<p class="card-text">Nhà phố tại TP.Hà Nội. Tình trạng Sổ đỏ. Tiện ích: Máy giặt, Sân vườn, Đầy đủ nội thất, Ban công / Sân thượng, Phòng tập gym,  Mua Ngay!</p>-->
													</div>
												</div>
											</div>
										</div>
                            
										<div class="mbnd-card mbnd-objectLastest">
											<div class="card-body">
												<div class="row">
													<div class="col-xs-12 col-sm-3">
														<a href="/nha-ban-nha-pho-3535/ban-can-hoang-van-thu-50m2-gia-6-5-ty-8276743">
															<img class="img-responsive cusimg-responsive" src="http://www.muabannhadat.vn/uploads/images/008/276/743/7ueZx9cOUkqUSyegIMscDw_3.jpg" alt="Bán căn Hoàng Văn Thụ 50m2 – Giá 6,5 Tỷ">
														</a>
													</div>
													<div class="col-xs-12 col-sm-9">
														<h3 class="card-title title row-fluid latest-title"><a href="/nha-ban-nha-pho-3535/ban-can-hoang-van-thu-50m2-gia-6-5-ty-8276743">Bán căn Hoàng Văn Thụ 50m2 – Giá 6,5 Tỷ</a></h3>
														<p class="card-price">6,5 Tỷ VNĐ</p>
														<p class="card-text">Quận Tân Bình</p>
														<!--<p class="card-text">Cần Bán</p>-->
													</div>
												</div>
											</div>
										</div>
                            
										<div class="mbnd-card mbnd-objectLastest">
											<div class="card-body">
												<div class="row">
													<div class="col-xs-12 col-sm-3">
														<a href="/nha-ban-nha-pho-3535/ban-nha-mat-tien-duong-tran-binh-trong-an-duong-vu-7995905">
															<img class="img-responsive cusimg-responsive" src="http://www.muabannhadat.vn/uploads/images/007/995/905/YzT7cvmC6UiVIvbbh4-LSA_3.jpg" alt="Bán nhà mặt tiền đường Trần Bình Trọng - An Dương Vương, P3, quận 5">
														</a>
													</div>
													<div class="col-xs-12 col-sm-9">
														<h3 class="card-title title row-fluid latest-title"><a href="/nha-ban-nha-pho-3535/ban-nha-mat-tien-duong-tran-binh-trong-an-duong-vu-7995905">Bán nhà mặt tiền đường Trần Bình Trọng - An Dương Vương, P3, quận 5</a></h3>
														<p class="card-price">35 Tỷ VNĐ</p>
														<p class="card-text">Quận 5</p>
														<!--<p class="card-text">Nhà phố tại TP.Hồ Chí Minh Nhận Ưu Đãi!</p>-->
													</div>
												</div>
											</div>
										</div>
                            
										<div class="mbnd-card mbnd-objectLastest">
											<div class="card-body">
												<div class="row">
													<div class="col-xs-12 col-sm-3">
														<a href="/nha-ban-nha-pho-3535/ban-nha-moi-xay-4-lau-mat-tien-duong-bau-cat-phuon-7382510">
															<img class="img-responsive cusimg-responsive" src="http://www.muabannhadat.vn/uploads/images/007/382/510/8jcSZXyP80emODHR4iimOA_3.jpg" alt="Bán nhà mới xây 4 lầu mặt tiền đường Bàu Cát phường 14 quận Tân Bình">
														</a>
													</div>
													<div class="col-xs-12 col-sm-9">
														<h3 class="card-title title row-fluid latest-title"><a href="/nha-ban-nha-pho-3535/ban-nha-moi-xay-4-lau-mat-tien-duong-bau-cat-phuon-7382510">Bán nhà mới xây 4 lầu mặt tiền đường Bàu Cát phường 14 quận Tân Bình</a></h3>
														<p class="card-price">11,8 Tỷ VNĐ</p>
														<p class="card-text">Quận Tân Bình</p>
														<!--<p class="card-text">Nhà phố tại TP.Hồ Chí Minh Nhận Ưu Đãi!</p>-->
													</div>
												</div>
											</div>
										</div>
                            
										<div class="mbnd-card mbnd-objectLastest">
											<div class="card-body">
												<div class="row">
													<div class="col-xs-12 col-sm-3">
														<a href="/nha-ban-nha-pho-3535/nha-dep-re-bat-ngo-chi-8-5-ty-ban-gap-nha-hxh-giai-8146590">
															<img class="img-responsive cusimg-responsive" src="http://www.muabannhadat.vn/uploads/images/008/146/590/dBvVTaBwkkKQ-0O8VyruOw_3.jpg" alt="Nhà đẹp rẻ bất ngờ, chỉ 8.5 tỷ bán gấp nhà HXH Giải Phóng P.4 Tân Bình, 4x14, 2 lầu ST">
														</a>
													</div>
													<div class="col-xs-12 col-sm-9">
														<h3 class="card-title title row-fluid latest-title"><a href="/nha-ban-nha-pho-3535/nha-dep-re-bat-ngo-chi-8-5-ty-ban-gap-nha-hxh-giai-8146590">Nhà đẹp rẻ bất ngờ, chỉ 8.5 tỷ bán gấp nhà HXH Giải Phóng P.4 Tân Bình, 4x14, 2 lầu ST</a></h3>
														<p class="card-price">8,5 Tỷ VNĐ</p>
														<p class="card-text">Quận Tân Bình</p>
														<!--<p class="card-text">Nhà phố tại TP.Hồ Chí Minh Nhận Tư Vấn!</p>-->
													</div>
												</div>
											</div>
										</div>
                            
										<div class="mbnd-card mbnd-objectLastest">
											<div class="card-body">
												<div class="row">
													<div class="col-xs-12 col-sm-3">
														<a href="/nha-ban-nha-pho-3535/chinh-chu-ban-can-nha-hxh-thanh-thai-2-lau-dt-3-5x-7996851">
															<img class="img-responsive cusimg-responsive" src="http://www.muabannhadat.vn/uploads/images/007/996/851/jaosiSikn0C5Gvw8V3rApQ_3.jpg" alt="Chính chủ bán căn nhà HXH Thành Thái, 2 lầu, DT: 3.5x11m, giá 7 tỷ.">
														</a>
													</div>
													<div class="col-xs-12 col-sm-9">
														<h3 class="card-title title row-fluid latest-title"><a href="/nha-ban-nha-pho-3535/chinh-chu-ban-can-nha-hxh-thanh-thai-2-lau-dt-3-5x-7996851">Chính chủ bán căn nhà HXH Thành Thái, 2 lầu, DT: 3.5x11m, giá 7 tỷ.</a></h3>
														<p class="card-price">7 Tỷ VNĐ</p>
														<p class="card-text">Quận 10</p>
														<!--<p class="card-text">Nhà phố tại TP.Hồ Chí Minh Mua Ngay!</p>-->
													</div>
												</div>
											</div>
										</div>
                            
										<div class="mbnd-card mbnd-objectLastest">
											<div class="card-body">
												<div class="row">
													<div class="col-xs-12 col-sm-3">
														<a href="/nha-ban-nha-pho-3535/ban-nha-chinh-chu-so-hong-quan-tan-phu-8189479">
															<img class="img-responsive cusimg-responsive" src="http://www.muabannhadat.vn/uploads/images/008/189/479/Ie_bO2alX0SgPr3BKjH3Sw_3.jpg" alt="Bán nhà chính chủ, sổ hồng, quận Tân Phú ">
														</a>
													</div>
													<div class="col-xs-12 col-sm-9">
														<h3 class="card-title title row-fluid latest-title"><a href="/nha-ban-nha-pho-3535/ban-nha-chinh-chu-so-hong-quan-tan-phu-8189479">Bán nhà chính chủ, sổ hồng, quận Tân Phú </a></h3>
														<p class="card-price">1,6 Tỷ VNĐ</p>
														<p class="card-text">Quận Tân Phú</p>
														<!--<p class="card-text">Bán gấp nhà quận Tân Phú. Giá 1.6 tỷ.  </p>-->
													</div>
												</div>
											</div>
										</div>
                            
										<div class="mbnd-card mbnd-objectLastest">
											<div class="card-body">
												<div class="row">
													<div class="col-xs-12 col-sm-3">
														<a href="/dat-ban-dat-tho-cu-3532/ban-dat-de-dau-tu-xay-nha-shr-gia-570tr-con-chiet-8105895">
															<img class="img-responsive cusimg-responsive" src="http://www.muabannhadat.vn/uploads/images/008/105/895/m9Hs2mNP8kKLyyXX-5rgzQ_3.jpg" alt="Bán Đất Để Đầu Tư, Xây Nhà. Shr Giá 570tr Còn Chiết Khấu Cao">
														</a>
													</div>
													<div class="col-xs-12 col-sm-9">
														<h3 class="card-title title row-fluid latest-title"><a href="/dat-ban-dat-tho-cu-3532/ban-dat-de-dau-tu-xay-nha-shr-gia-570tr-con-chiet-8105895">Bán Đất Để Đầu Tư, Xây Nhà. Shr Giá 570tr Còn Chiết Khấu Cao</a></h3>
														<p class="card-price">570 Triệu VNĐ</p>
														<p class="card-text">Huyện Củ Chi</p>
														<!--<p class="card-text">Đất thổ cư tại TP.Hồ Chí Minh. Tình trạng Sổ hồng Liên Hệ!</p>-->
													</div>
												</div>
											</div>
										</div>
                            
										<div class="mbnd-card mbnd-objectLastest">
											<div class="card-body">
												<div class="row">
													<div class="col-xs-12 col-sm-3">
														<a href="/nha-ban-nha-pho-3535/ban-nha-moi-hem-xe-hoi-gan-cong-ty-can-nhon-hoa-hi-6171705">
															<img class="img-responsive cusimg-responsive" src="http://www.muabannhadat.vn/uploads/images/006/171/705/IVbAW_4Y6EC0ge-V20EuCQ_3.jpg" alt="Bán nhà mới hẻm xe hơi gần công ty cân nhơn hòa,Hiệp Bình Phước">
														</a>
													</div>
													<div class="col-xs-12 col-sm-9">
														<h3 class="card-title title row-fluid latest-title"><a href="/nha-ban-nha-pho-3535/ban-nha-moi-hem-xe-hoi-gan-cong-ty-can-nhon-hoa-hi-6171705">Bán nhà mới hẻm xe hơi gần công ty cân nhơn hòa,Hiệp Bình Phước</a></h3>
														<p class="card-price">2,8 Tỷ VNĐ</p>
														<p class="card-text">Quận Thủ Đức</p>
														<!--<p class="card-text">Nhà phố tại TP.Hồ Chí Minh Nhận Tư Vấn!</p>-->
													</div>
												</div>
											</div>
										</div>
                            
										<div class="mbnd-card mbnd-objectLastest">
											<div class="card-body">
												<div class="row">
													<div class="col-xs-12 col-sm-3">
														<a href="/nha-ban-biet-thu-villa-3525/ban-biet-thu-mat-tien-duong-so-13-binh-an-quan-2-d-8280967">
															<img class="img-responsive cusimg-responsive" src="http://www.muabannhadat.vn/uploads/images/008/280/967/ZBXPsn-GWUCVr-KIY8O9Dw_3.jpg" alt="Bán biệt thự mặt tiền Đường Số 13, Bình An, Quận 2. DT: 13.1m x 31m, 1 trệt, 2 lầu. Giá: 49 tỷ">
														</a>
													</div>
													<div class="col-xs-12 col-sm-9">
														<h3 class="card-title title row-fluid latest-title"><a href="/nha-ban-biet-thu-villa-3525/ban-biet-thu-mat-tien-duong-so-13-binh-an-quan-2-d-8280967">Bán biệt thự mặt tiền Đường Số 13, Bình An, Quận 2. DT: 13.1m x 31m, 1 trệt, 2 lầu. Giá: 49 tỷ</a></h3>
														<p class="card-price">49 Tỷ VNĐ</p>
														<p class="card-text">Quận 2</p>
														<!--<p class="card-text">Nhà phố tại TP.Hồ Chí Minh Nhận Tư Vấn!
			</p>-->
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="panel mbnd-panel-feature">
							<div class="panel-body">
								<div class="row">
									aaaaa
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
    </div>
</asp:Content>
