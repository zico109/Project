<%@page import="core.utils.CartUtil"%>
<%@page import="core.model.CartInfo"%>
<%@page import="core.dao.LoaiPhongDAO"%>
<%@page import="core.model.LoaiPhong"%>
<%@page import="core.modelDAO.DAO_LoaiPhong"%>
<%@page import="core.dao.LoaiPhongDAO"%>
<%@page import="core.dao.PhongDAO"%>
<%@page import="core.dao.GiuongDAO"%>
<%@page import="core.model.Phong"%>
<%@page import="core.model.Giuong"%>
<%@page import="core.model.Cart"%>
<%@page import="core.modelDAO.DAO_Phong"%>
<%@page import="core.dao.GiuongDAO"%>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<title>Smart Hotel - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css?family=Rubik:300,400,500"
	rel="stylesheet">
<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/aos.css">
<link rel="stylesheet" href="css/ionicons.min.css">
<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">
<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/style.css">
</head>
<%
	String taiKhoanDangNhap = request.getSession().getAttribute("maDangNhap") + "";
	taiKhoanDangNhap = taiKhoanDangNhap.equals("null") ? "" : taiKhoanDangNhap;
	System.out.println(taiKhoanDangNhap);
%>
<body>
<%
		PhongDAO phongDAO = new PhongDAO();
		GiuongDAO giuongDAO = new GiuongDAO();
		String maGiuong = "";
		if (request.getParameter("giuong") != null) {
			maGiuong = request.getParameter("giuong");
		}
		String maPhong = "";
		if (request.getParameter("phong") != null) {
			maPhong = request.getParameter("phong");
		}
		Cart cart = (Cart) session.getAttribute("cart");
		if (cart == null) {
			cart = new Cart();
			session.setAttribute("cart", cart);
		}
		
		CartInfo myCart = CartUtil.getCartInSession(request);
		
	%>
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="home.jsp">Smart Hostel</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a href="home.jsp" class="nav-link">Home</a></li>
					<li class="nav-item active"><a href="rooms.jsp"
						class="nav-link">Rooms</a></li>
					<li class="nav-item"><a href="beds.jsp" class="nav-link">Beds</a></li>
					<li class="nav-item"><a href="about.jsp" class="nav-link">About
							Us</a></li>
					<li class="nav-item"><a href="index.jsp" class="nav-link">Account</a></li>
					<li class="nav-item"><a href="dangky.jsp" class="nav-link">Register</a></li>
					<li class="nav-item">
						<%
							if (!taiKhoanDangNhap.equals("")) {
						%>
						<a  href="dangXuat.action" class="nav-link">
						<%=taiKhoanDangNhap%>
						</a> 
						<%
 							} else {
 						%>
 						<a href="login.jsp" class="nav-link">Login</a>
						<%
							}
						%>
					</li>
					<div class="top-cart-info">
					<a href="./cart.jsp" class="top-cart-info-count"><%=myCart.getQuantityTotal()%></a>
					<a href="javascript:void(0);" class="top-cart-info-value">vnđ<%=myCart.getQuantityTotal()*10%></a>
				</div>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->



	<div class="block-30 block-30-sm item"
		style="background-image: url('images/bg_2.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-10">
					<span class="subheading-sm">Rooms</span>
					<h2 class="heading">Rooms &amp; Suites</h2>
				</div>
			</div>
		</div>
	</div>






	<!-- 	<div class="site-section bg-light"> -->
	<!-- 		<div class="container"> -->
	<!-- 			<div class="row mb-5"> -->
	<!-- 				<div class="col-md-12 mb-5"> -->

	<!-- 					<div class="block-3 d-md-flex"> -->
	<!-- 						<div class="image" -->
	<!-- 							style="background-image: url('images/img_1.jpg');"></div> -->
	<!-- 						<div class="text"> -->

	<!-- 							<h2 class="heading">Bachelor Room</h2> -->
	<!-- 							<div class="price"> -->
	<!-- 								<sup>$</sup><span class="number">150</span><sub>/per night</sub> -->
	<!-- 							</div> -->
	<!-- 							<ul class="specs mb-5"> -->
	<!-- 								<li><strong>Adults:</strong> 1</li> -->
	<!-- 								<li><strong>Categories:</strong> Single</li> -->
	<!-- 								<li><strong>Facilities:</strong> Closet with hangers, HD -->
	<!-- 									flat-screen TV, Telephone</li> -->
	<!-- 								<li><strong>Size:</strong> 20m<sup>2</sup></li> -->
	<!-- 								<li><strong>Bed Type:</strong> One bed</li> -->
	<!-- 							</ul> -->

	<!-- 							<p> -->
	<!-- 								<a href="#" class="btn btn-primary py-3 px-5">Read More</a> -->
	<!-- 							</p> -->

	<!-- 						</div> -->
	<!-- 					</div> -->


	<!-- 				</div> -->


	<!-- 				<div class="col-md-12 mb-5"> -->

	<!-- 					<div class="block-3 d-md-flex"> -->
	<!-- 						<div class="image order-2" -->
	<!-- 							style="background-image: url('images/img_2.jpg');"></div> -->
	<!-- 						<div class="text order-1"> -->

	<!-- 							<h2 class="heading">Family Room</h2> -->
	<!-- 							<div class="price"> -->
	<!-- 								<sup>$</sup><span class="number">245</span><sub>/per night</sub> -->
	<!-- 							</div> -->
	<!-- 							<ul class="specs mb-5"> -->
	<!-- 								<li><strong>Adults:</strong> 1</li> -->
	<!-- 								<li><strong>Categories:</strong> Single</li> -->
	<!-- 								<li><strong>Facilities:</strong> Closet with hangers, HD -->
	<!-- 									flat-screen TV, Telephone</li> -->
	<!-- 								<li><strong>Size:</strong> 20m<sup>2</sup></li> -->
	<!-- 								<li><strong>Bed Type:</strong> One bed</li> -->
	<!-- 							</ul> -->

	<!-- 							<p> -->
	<!-- 								<a href="#" class="btn btn-primary py-3 px-5">Read More</a> -->
	<!-- 							</p> -->

	<!-- 						</div> -->
	<!-- 					</div> -->


	<!-- 				</div> -->


	<!-- 				<div class="col-md-12"> -->

	<!-- 					<div class="block-3 d-md-flex"> -->
	<!-- 						<div class="image" -->
	<!-- 							style="background-image: url('images/img_3.jpg');"></div> -->
	<!-- 						<div class="text"> -->

	<!-- 							<h2 class="heading">Presidential Room</h2> -->
	<!-- 							<div class="price"> -->
	<!-- 								<sup>$</sup><span class="number">450</span><sub>/per night</sub> -->
	<!-- 							</div> -->
	<!-- 							<ul class="specs mb-5"> -->
	<!-- 								<li><strong>Adults:</strong> 1</li> -->
	<!-- 								<li><strong>Categories:</strong> Single</li> -->
	<!-- 								<li><strong>Facilities:</strong> Closet with hangers, HD -->
	<!-- 									flat-screen TV, Telephone</li> -->
	<!-- 								<li><strong>Size:</strong> 20m<sup>2</sup></li> -->
	<!-- 								<li><strong>Bed Type:</strong> One bed</li> -->
	<!-- 							</ul> -->

	<!-- 							<p> -->
	<!-- 								<a href="#" class="btn btn-primary py-3 px-5">Read More</a> -->
	<!-- 							</p> -->

	<!-- 						</div> -->
	<!-- 					</div> -->


	<!-- 				</div> -->

	<!-- 			</div> -->



	<div class="row mb-5 pt-5 justify-content-center">
		<div class="col-md-7 text-center section-heading">
			<h2 class="heading">More Rooms</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
				Reprehenderit, iusto, omnis! Quidem, sint, impedit? Dicta eaque
				delectus tempora hic, corporis velit doloremque quod quam laborum,
				nobis iusto autem culpa quaerat!</p>
		</div>
	</div>

	<!-- Body BEGIN -->
<!-- <body class="ecommerce"> -->

	<!-- BEGIN HEADER -->
	<div class="header">
		<div class="container">
			<a class="site-logo" href="beds.jsp">Beds</a> <a
				href="javascript:void(0);" class="mobi-toggler"><i
				class="fa fa-bars"></i></a>

			<!-- BEGIN NAVIGATION -->
			<div class="header-navigation">

				<ul>
					<li><a href="home.jsp">Trang chủ</a></li>



					<!-- END TOP SEARCH -->
				</ul>

			</div>
			<!-- END NAVIGATION -->
		</div>
	</div>
	<!-- Header END -->

	<div class="title-wrapper">
		<div class="container">
			<div class="container-inner">
				<h1>
					<span>Beds</span> CATEGORY
				</h1>

			</div>
		</div>
	</div>

	<div class="main">
		<div class="container">
			<!-- BEGIN SIDEBAR & CONTENT -->
			<div class="row margin-bottom-40">
				<!-- BEGIN SIDEBAR -->
				<div class="sidebar col-md-3 col-sm-5">
					<ul class="list-group margin-bottom-25 sidebar-menu">
						<li class="list-group-item clearfix"><a href="beds.jsp"><i
								class="fa fa-angle-right"></i>Tất cả phòng</a></li>
					</ul>
					<%
						for (Phong p : phongDAO.getListAllPhong()) {
					%>
					<ul class="list-group margin-bottom-25 sidebar-menu">
						<li class="list-group-item clearfix"><a
							href="caterooms.jsp?loaiphong=<%=p.getMaPhong()%>"><i
								class="fa fa-angle-right"></i><%=p.getTenPhong()%> </a></li>
						<li class="list-group-item clearfix"><a
							href="caterooms.jsp?loaiphong=<%=p.getMaPhong()%>"><i
								class="fa fa-angle-right"></i><%=p.getTenPhong()%> </a></li>

					</ul>
					<%
						}
					%>
				</div>
				<!-- BEGIN CONTENT -->
				<div class="col-md-9 col-sm-7" align="center">
					<div class="row list-view-sorting clearfix">
						<div class="col-md-2 col-sm-2 list-view">
							<a href="javascript:;"><i class="fa fa-th-large"></i></a> <a
								href="javascript:;"><i class="fa fa-th-list"></i></a>
						</div>
						<div class="col-md-10 col-sm-10" align="center">
							<p>
								Giường
								<%=maPhong%></p>
						</div>
					</div>
					<!-- BEGIN PRODUCT LIST -->
					<div class="row product-list" align="center">
						<%
							for (Giuong g : giuongDAO.getListAllGiuong()) {
						%>
						<div class="col-sm-4">
							<div class="product-item">
								<div class="pi-img-wrapper">
									<div>
										<a href="#"><img src="images/img_1.jpg"
											alt="Image placeholder"> <a
											href="chitietphong.jsp?maPhong=<%=g.getMaGiuong()%>"
											class="btn btn-default fancybox-fast-view">View</a>
											<a href="CartServlet?command=plus&maGiuong=<%=g.getMaGiuong()%>"
									class="btn btn-default add2cart">Thêm vào giỏ</a>
									</div>
								</div>

								<h3>
									<a href="shop-item.html"><%=g.getMaGiuong()%></a>
								</h3>
								<h3>
									<a href="shop-item.html"><%=g.getTrangThai()%></a>
								</h3>
							</div>

						</div>
						<%
							}
						%>
					</div>
					<!-- END PRODUCT LIST -->
					<!-- BEGIN PAGINATOR -->
					<div class="row">
						<!-- 						<div class="col-md-4 col-sm-4 items-info">Items 1 to 9 of 10 -->
						<!-- 							total</div> -->
						<!-- 						<div class="col-md-8 col-sm-8"> -->
						<!-- 							<ul class="pagination pull-right"> -->
						<!-- 								<li><a href="javascript:;">&laquo;</a></li> -->
						<!-- 								<li><a href="javascript:;">1</a></li> -->
						<!-- 								<li><span>2</span></li> -->
						<!-- 								<li><a href="javascript:;">3</a></li> -->
						<!-- 								<li><a href="javascript:;">4</a></li> -->
						<!-- 								<li><a href="javascript:;">5</a></li> -->
						<!-- 								<li><a href="javascript:;">&raquo;</a></li> -->
						<!-- 							</ul> -->
						<!-- 						</div> -->
					</div>
					<!-- END PAGINATOR -->
				</div>
				<!-- END CONTENT -->
			</div>
			<!-- END SIDEBAR & CONTENT -->
		</div>
	</div>



	<!-- BEGIN STEPS -->
	<!-- Load javascripts at bottom, this will reduce page load time -->
	<!-- BEGIN CORE PLUGINS(REQUIRED FOR ALL PAGES) -->
	<!--[if lt IE 9]>
    <script src="assets/plugins/respond.min.js"></script>  
    <![endif]-->
	<script src="content/assets/plugins/jquery.min.js"
		type="text/javascript"></script>
	<script src="content/assets/plugins/jquery-migrate.min.js"
		type="text/javascript"></script>
	<script src="content/assets/plugins/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="content/assets/corporate/scripts/back-to-top.js"
		type="text/javascript"></script>
	<script
		src="content/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<!-- END CORE PLUGINS -->

	<!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
	<script
		src="content/assets/plugins/fancybox/source/jquery.fancybox.pack.js"
		type="text/javascript"></script>
	<!-- pop up -->
	<script src="content/assets/plugins/owl.carousel/owl.carousel.min.js"
		type="text/javascript"></script>
	<!-- slider for products -->
	<script src="content/assets/plugins/zoom/jquery.zoom.min.js"
		type="text/javascript"></script>
	<!-- product zoom -->
	<script
		src="content/assets/plugins/bootstrap-touchspin/bootstrap.touchspin.js"
		type="text/javascript"></script>
	<!-- Quantity -->
	<script src="content/assets/plugins/uniform/jquery.uniform.min.js"
		type="text/javascript"></script>
	<script src="content/assets/plugins/rateit/src/jquery.rateit.js"
		type="text/javascript"></script>
	<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"
		type="text/javascript"></script>
	<!-- for slider-range -->

	<script src="content/assets/corporate/scripts/layout.js"
		type="text/javascript"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			Layout.init();
			Layout.initOWL();
			Layout.initTwitter();
			Layout.initImageZoom();
			Layout.initTouchspin();
			Layout.initUniform();
			Layout.initSliderRange();
		});
	</script>
	<!-- END PAGE LEVEL JAVASCRIPTS -->
<!-- </body> -->












<div class="site-section bg-light">
	<div class="container">
		<div class="row mb-5">
			<div class="col-md-7 section-heading">
				<span class="subheading-sm">Reviews</span>
				<h2 class="heading">Guest Reviews</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-lg-4">

				<div class="block-33">
					<div class="vcard d-flex mb-3">
						<div class="image align-self-center">
							<img src="images/person_3.jpg" alt="Person here">
						</div>
						<div class="name-text align-self-center">
							<h2 class="heading">Martin Newmansfield</h2>
							<span class="meta">Satisfied Customer</span>
						</div>
					</div>
					<div class="text">
						<blockquote>
							<p>&rdquo; Lorem ipsum dolor sit amet consectetur adipisicing
								elit. Fuga aliquid. Atque dolore esse veritatis iusto eaque
								perferendis non dolorem fugiat voluptatibus vitae error ad
								itaque inventore accusantium tempore dolores sunt. &ldquo;</p>
						</blockquote>
					</div>
				</div>

			</div>
			<div class="col-md-6 col-lg-4">

				<div class="block-33">
					<div class="vcard d-flex mb-3">
						<div class="image align-self-center">
							<img src="images/person_2.jpg" alt="Person here">
						</div>
						<div class="name-text align-self-center">
							<h2 class="heading">Nancy Green</h2>
							<span class="meta">Satisfied Customer</span>
						</div>
					</div>
					<div class="text">
						<blockquote>
							<p>&rdquo; Lorem ipsum dolor sit amet consectetur adipisicing
								elit. Fuga aliquid. Atque dolore esse veritatis iusto eaque
								perferendis non dolorem fugiat voluptatibus vitae error ad
								itaque inventore accusantium tempore dolores sunt. &ldquo;</p>
						</blockquote>
					</div>
				</div>

			</div>
			<div class="col-md-6 col-lg-4">

				<div class="block-33">
					<div class="vcard d-flex mb-3">
						<div class="image align-self-center">
							<img src="images/person_1.jpg" alt="Person here">
						</div>
						<div class="name-text align-self-center">
							<h2 class="heading">Elizabeth Charles</h2>
							<span class="meta">Satisfied Customer</span>
						</div>
					</div>
					<div class="text">
						<blockquote>
							<p>&rdquo; Lorem ipsum dolor sit amet consectetur adipisicing
								elit. Fuga aliquid. Atque dolore esse veritatis iusto eaque
								perferendis non dolorem fugiat voluptatibus vitae error ad
								itaque inventore accusantium tempore dolores sunt. &ldquo;</p>
						</blockquote>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>

<div class="block-22">
	<div class="container">
		<div class="row align-items-center justify-content-center">
			<div class="col-md-7 text-center">
				<h2 class="heading mb-4">Be Sure To Get Our Promos</h2>
				<form action="#" class="subscribe">
					<div class="form-group">
						<input type="email" class="form-control email"
							placeholder="Enter your email">
						<!-- <input type="submit" class="btn btn-primary submit"> -->
						<button type="submit" class="btn btn-primary submit">Subscribe</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>


<footer class="footer">
	<div class="container">
		<div class="row mb-5">
			<div class="col-md-6 col-lg-4">
				<h3 class="heading-section">About Us</h3>
				<p class="mb-5">Lorem ipsum dolor sit amet consectetur
					adipisicing elit. Fuga aliquid. Atque dolore esse veritatis iusto
					eaque perferendis non dolorem fugiat voluptatibus vitae error ad
					itaque inventore accusantium tempore dolores sunt.</p>
				<p>
					<a href="#" class="btn btn-primary px-4">Button</a>
				</p>
			</div>
			<div class="col-md-6 col-lg-4">
				<h3 class="heading-section">Blog</h3>
				<div class="block-21 d-flex mb-4">
					<figure class="mr-3">
						<img src="images/img_1.jpg" alt="" class="img-fluid">
					</figure>
					<div class="text">
						<h3 class="heading">
							<a href="#">Our Luxury Hotel &amp; Restaurants</a>
						</h3>
						<div class="meta">
							<div>
								<a href="#"><span class="icon-calendar"></span> May 29, 2018</a>
							</div>
							<div>
								<a href="#"><span class="icon-person"></span> Admin</a>
							</div>
							<div>
								<a href="#"><span class="icon-chat"></span> 19</a>
							</div>
						</div>
					</div>
				</div>

				<div class="block-21 d-flex mb-4">
					<figure class="mr-3">
						<img src="images/img_2.jpg" alt="" class="img-fluid">
					</figure>
					<div class="text">
						<h3 class="heading">
							<a href="#">Our Luxury Hotel &amp; Restaurants</a>
						</h3>
						<div class="meta">
							<div>
								<a href="#"><span class="icon-calendar"></span> May 29, 2018</a>
							</div>
							<div>
								<a href="#"><span class="icon-person"></span> Admin</a>
							</div>
							<div>
								<a href="#"><span class="icon-chat"></span> 19</a>
							</div>
						</div>
					</div>
				</div>

				<div class="block-21 d-flex mb-4">
					<figure class="mr-3">
						<img src="images/img_3.jpg" alt="" class="img-fluid">
					</figure>
					<div class="text">
						<h3 class="heading">
							<a href="#">Our Luxury Hotel &amp; Restaurants</a>
						</h3>
						<div class="meta">
							<div>
								<a href="#"><span class="icon-calendar"></span> May 29, 2018</a>
							</div>
							<div>
								<a href="#"><span class="icon-person"></span> Admin</a>
							</div>
							<div>
								<a href="#"><span class="icon-chat"></span> 19</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-lg-4">
				<div class="block-23">
					<h3 class="heading-section">Contact Info</h3>
					<ul>
						<li><span class="icon icon-map-marker"></span><span
							class="text">203 Fake St. Mountain View, San Francisco,
								California, USA</span></li>
						<li><a href="#"><span class="icon icon-phone"></span><span
								class="text">+2 392 3929 210</span></a></li>
						<li><a href="#"><span class="icon icon-envelope"></span><span
								class="text">info@yourdomain.com</span></a></li>
						<li><span class="icon icon-clock-o"></span><span class="text">Monday
								&mdash; Friday 8:00am - 5:00pm</span></li>
					</ul>
				</div>
			</div>


		</div>
		<div class="row pt-5">
			<div class="col-md-12 text-left">
				<p>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					All rights reserved | This template is made with <i
						class="icon-heart" aria-hidden="true"></i> by <a
						href="https://colorlib.com" target="_blank" class="text-primary">Colorlib</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</p>
			</div>
		</div>
	</div>
</footer>

<!-- loader -->
<div id="ftco-loader" class="show fullscreen">
	<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
			stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
			stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
</div>


<script src="js/jquery.min.js"></script>
<script src="js/jquery-migrate-3.0.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/jquery.stellar.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/bootstrap-datepicker.js"></script>

<script src="js/aos.js"></script>
<script src="js/jquery.animateNumber.min.js"></script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="js/google-map.js"></script>
<script src="js/main.js"></script>

</body>
</html>