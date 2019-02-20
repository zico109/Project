<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<title>SMART HOSTEL</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
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

	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="home.jsp">HOSTEL</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="home.jsp"
						class="nav-link">Home</a></li>
					<li class="nav-item"><a href="rooms.jsp" class="nav-link">Rooms</a></li>
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
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->

	<div class="block-31" style="position: relative;">
		<div class="owl-carousel loop-block-31 ">
			<div class="block-30 item"
				style="background-image: url('images/logo1.jpg');"
				data-stellar-background-ratio="0.5">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-md-10">
							<span class="subheading-sm">Welcome</span>
							<h2 class="heading">Enjoy a New Experience</h2>
							<p>
								<a href="#" class="btn py-4 px-5 btn-primary">Learn More</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="block-30 item"
				style="background-image: url('images/bg_1.jpg');"
				data-stellar-background-ratio="0.5">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-md-10">
							<span class="subheading-sm">Welcome</span>
							<h2 class="heading">Simple &amp; Comfortable</h2>
							<p>
								<a href="#" class="btn py-4 px-5 btn-primary">Learn More</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="block-30 item"
				style="background-image: url('images/bg_3.jpg');"
				data-stellar-background-ratio="0.5">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-md-10">
							<span class="subheading-sm">Welcome</span>
							<h2 class="heading">Food &amp; Drinks</h2>
							<p>
								<a href="#" class="btn py-4 px-5 btn-primary">Learn More</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="container">
		<div class="row mb-5">
			<div class="col-md-12">

				<div class="block-32">
					<form action="#">
						<div class="row">
							<div class="col-md-6 mb-3 mb-md-0 col-lg-3">
								<div class="row">
									<div class="col-md-6 mb-3 mb-md-0">
										<label for="checkin">Loại phòng</label>
										<div class="field-icon-wrap">
											<div class="icon">
												<span class="ion-ios-arrow-down"></span>
											</div>
											<select name="" id="" class="form-control">
												<option value="">1</option>
												<option value="">2</option>
												<option value="">3</option>
												<option value="">4+</option>
											</select>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 mb-3 mb-md-0 col-lg-3">
								<div class="row">
									<div class="col-md-6 mb-3 mb-md-0">
										<label for="checkin">Số lượng người</label>
										<div class="field-icon-wrap">
											<div class="icon">
												<span class="ion-ios-arrow-down"></span>
											</div>
											<select name="" id="" class="form-control">
												<option value="">1</option>
												<option value="">2</option>
												<option value="">3</option>
												<option value="">4+</option>
											</select>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-3 align-self-end">
								<button class="btn btn-primary btn-block">Check
									Availabilty</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

		<div class="row site-section">
			<div class="col-md-12">
				<div class="row mb-5">
					<div class="col-md-7 section-heading">
						<span class="subheading-sm">Services</span>
						<h2 class="heading">Facilities &amp; Services</h2>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-lg-4">
				<div class="media block-6">
					<div class="icon">
						<span class="flaticon-double-bed"></span>
					</div>
					<div class="media-body">
						<h3 class="heading">Luxury Rooms</h3>
						<p>Even the all-powerful Pointing has no control about the
							blind texts it is an almost unorthographic.</p>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-lg-4">
				<div class="media block-6">
					<div class="icon">
						<span class="flaticon-wifi"></span>
					</div>
					<div class="media-body">
						<h3 class="heading">Fast &amp; Free Wifi</h3>
						<p>Even the all-powerful Pointing has no control about the
							blind texts it is an almost unorthographic.</p>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-lg-4">
				<div class="media block-6">
					<div class="icon">
						<span class="flaticon-customer-service"></span>
					</div>
					<div class="media-body">
						<h3 class="heading">Call Us 24/7</h3>
						<p>Even the all-powerful Pointing has no control about the
							blind texts it is an almost unorthographic.</p>
					</div>
				</div>
			</div>

			<div class="col-md-6 col-lg-4">
				<div class="media block-6">
					<div class="icon">
						<span class="flaticon-taxi"></span>
					</div>
					<div class="media-body">
						<h3 class="heading">Travel Accomodation</h3>
						<p>Even the all-powerful Pointing has no control about the
							blind texts it is an almost unorthographic.</p>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-lg-4">
				<div class="media block-6">
					<div class="icon">
						<span class="flaticon-credit-card"></span>
					</div>
					<div class="media-body">
						<h3 class="heading">Accepts Credit Card</h3>
						<p>Even the all-powerful Pointing has no control about the
							blind texts it is an almost unorthographic.</p>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-lg-4">
				<div class="media block-6">
					<div class="icon">
						<span class="flaticon-dinner"></span>
					</div>
					<div class="media-body">
						<h3 class="heading">Restaurant</h3>
						<p>Even the all-powerful Pointing has no control about the
							blind texts it is an almost unorthographic.</p>
					</div>
				</div>
			</div>

		</div>
	</div>

	<div class="site-section block-13 bg-light">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md-7 section-heading">
					<span class="subheading-sm">Featured Rooms</span>
					<h2 class="heading">Rooms &amp; Suites</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Reprehenderit, iusto, omnis! Quidem, sint, impedit? Dicta eaque
						delectus tempora hic, corporis velit doloremque quod quam laborum,
						nobis iusto autem culpa quaerat!</p>
				</div>
			</div>

			<div class="row">
				<div class="col-md-12">
					<div class="nonloop-block-13 owl-carousel">
						<div class="item">
							<div class="block-34">
								<div class="image">
									<a href="#"><img src="images/img_1.jpg"
										alt="Image placeholder"></a>
								</div>
								<div class="text">
									<h2 class="heading">Bachelor Room</h2>
									<div class="price">
										<sup>$</sup><span class="number">156</span><sub>/per
											night</sub>
									</div>
									<ul class="specs">
										<li><strong>Adults:</strong> 1</li>
										<li><strong>Categories:</strong> Single</li>
										<li><strong>Facilities:</strong> Closet with hangers, HD
											flat-screen TV, Telephone</li>
										<li><strong>Size:</strong> 20m<sup>2</sup></li>
										<li><strong>Bed Type:</strong> One bed</li>
									</ul>
								</div>
							</div>
						</div>

						<div class="item">
							<div class="block-34">
								<div class="image">
									<a href="#"><img src="images/img_2.jpg"
										alt="Image placeholder"></a>
								</div>
								<div class="text">
									<h2 class="heading">Family Room</h2>
									<div class="price">
										<sup>$</sup><span class="number">320</span><sub>/per
											night</sub>
									</div>
									<ul class="specs">
										<li><strong>Adults:</strong> 1</li>
										<li><strong>Categories:</strong> Single</li>
										<li><strong>Facilities:</strong> Closet with hangers, HD
											flat-screen TV, Telephone</li>
										<li><strong>Size:</strong> 20m<sup>2</sup></li>
										<li><strong>Bed Type:</strong> One bed</li>
									</ul>
								</div>
							</div>
						</div>

						<div class="item">
							<div class="block-34">
								<div class="image">
									<a href="#"><img src="images/img_3.jpg"
										alt="Image placeholder"></a>
								</div>
								<div class="text">
									<h2 class="heading">Presidential Room</h2>
									<div class="price">
										<sup>$</sup><span class="number">425</span><sub>/per
											night</sub>
									</div>
									<ul class="specs">
										<li><strong>Adults:</strong> 1</li>
										<li><strong>Categories:</strong> Single</li>
										<li><strong>Facilities:</strong> Closet with hangers, HD
											flat-screen TV, Telephone</li>
										<li><strong>Size:</strong> 20m<sup>2</sup></li>
										<li><strong>Bed Type:</strong> One bed</li>
									</ul>
								</div>
							</div>
						</div>

						<div class="item">
							<div class="block-34">
								<div class="image">
									<a href="#"><img src="images/img_4.jpg"
										alt="Image placeholder"></a>
								</div>
								<div class="text">
									<h2 class="heading">Double Room</h2>
									<div class="price">
										<sup>$</sup><span class="number">525</span><sub>/per
											night</sub>
									</div>
									<ul class="specs">
										<li><strong>Adults:</strong> 1</li>
										<li><strong>Categories:</strong> Single</li>
										<li><strong>Facilities:</strong> Closet with hangers, HD
											flat-screen TV, Telephone</li>
										<li><strong>Size:</strong> 20m<sup>2</sup></li>
										<li><strong>Bed Type:</strong> One bed</li>
									</ul>
								</div>
							</div>
						</div>

						<div class="item">
							<div class="block-34">
								<div class="image">
									<a href="#"><img src="images/img_5.jpg"
										alt="Image placeholder"></a>
								</div>
								<div class="text">
									<h2 class="heading">VIP Room</h2>
									<div class="price">
										<sup>$</sup><span class="number">600</span><sub>/per
											night</sub>
									</div>
									<ul class="specs">
										<li><strong>Adults:</strong> 1</li>
										<li><strong>Categories:</strong> Single</li>
										<li><strong>Facilities:</strong> Closet with hangers, HD
											flat-screen TV, Telephone</li>
										<li><strong>Size:</strong> 20m<sup>2</sup></li>
										<li><strong>Bed Type:</strong> One bed</li>
									</ul>
								</div>
							</div>
						</div>

						<div class="item">
							<div class="block-34">
								<div class="image">
									<a href="#"><img src="images/img_6.jpg"
										alt="Image placeholder"></a>
								</div>
								<div class="text">
									<h2 class="heading">VIP Room</h2>
									<div class="price">
										<sup>$</sup><span class="number">760</span><sub>/per
											night</sub>
									</div>
									<ul class="specs">
										<li><strong>Adults:</strong> 1</li>
										<li><strong>Categories:</strong> Single</li>
										<li><strong>Facilities:</strong> Closet with hangers, HD
											flat-screen TV, Telephone</li>
										<li><strong>Size:</strong> 20m<sup>2</sup></li>
										<li><strong>Bed Type:</strong> One bed</li>
									</ul>
								</div>
							</div>
						</div>

					</div>

				</div>
				<!-- .col-md-12 -->
			</div>
		</div>
	</div>

	<div class="site-section bg-light">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md-7 section-heading">
					<span class="subheading-sm">Menus</span>
					<h2 class="heading">Restaurant Menu</h2>
				</div>
			</div>

			<div class="block-35">

				<ul class="nav" id="pills-tab" role="tablist">
					<li class="nav-item"><a class="nav-link active"
						id="pills-home-tab" data-toggle="pill" href="#pills-home"
						role="tab" aria-controls="pills-home" aria-selected="true">Breakfast</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						id="pills-profile-tab" data-toggle="pill" href="#pills-profile"
						role="tab" aria-controls="pills-profile" aria-selected="false">Lunch</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						id="pills-contact-tab" data-toggle="pill" href="#pills-contact"
						role="tab" aria-controls="pills-contact" aria-selected="false">Dinner</a>
					</li>
				</ul>
				<div class="tab-content" id="pills-tabContent">
					<div class="tab-pane fade show active" id="pills-home"
						role="tabpanel" aria-labelledby="pills-home-tab">
						<div class="row">
							<div class="col-md-12 block-13">
								<div class="nonloop-block-13 owl-carousel">
									<div class="item">
										<div class="block-34">
											<div class="image">
												<a href="#"><img src="images/menu_1.jpg"
													alt="Image placeholder"></a>
											</div>
											<div class="text">
												<h2 class="heading">Egg &amp; Asparagus</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ratione quo vel aut ab qui quas!</p>
												<div class="price">
													<sup>$</sup><span class="number">30.50</span>
												</div>
											</div>
										</div>
									</div>

									<div class="item">
										<div class="block-34">
											<div class="image">
												<a href="#"><img src="images/menu_2.jpg"
													alt="Image placeholder"></a>
											</div>
											<div class="text">
												<h2 class="heading">Grilled Top Sirloin Steak</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ratione quo vel aut ab qui quas!</p>
												<div class="price">
													<sup>$</sup><span class="number">23.45</span>
												</div>
											</div>
										</div>
									</div>

									<div class="item">
										<div class="block-34">
											<div class="image">
												<a href="#"><img src="images/menu_3.jpg"
													alt="Image placeholder"></a>
											</div>
											<div class="text">
												<h2 class="heading">Egg &amp; Grilled Steak</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ratione quo vel aut ab qui quas!</p>
												<div class="price">
													<sup>$</sup><span class="number">45.45</span>
												</div>
											</div>
										</div>
									</div>

									<div class="item">
										<div class="block-34">
											<div class="image">
												<a href="#"><img src="images/menu_4.jpg"
													alt="Image placeholder"></a>
											</div>
											<div class="text">
												<h2 class="heading">Spicy Noodles</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ratione quo vel aut ab qui quas!</p>
												<div class="price">
													<sup>$</sup><span class="number">33.45</span>
												</div>
											</div>
										</div>
									</div>

									<div class="item">
										<div class="block-34">
											<div class="image">
												<a href="#"><img src="images/menu_1.jpg"
													alt="Image placeholder"></a>
											</div>
											<div class="text">
												<h2 class="heading">Egg &amp; Asparagus</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ratione quo vel aut ab qui quas!</p>
												<div class="price">
													<sup>$</sup><span class="number">30.50</span>
												</div>
											</div>
										</div>
									</div>

									<div class="item">
										<div class="block-34">
											<div class="image">
												<a href="#"><img src="images/menu_2.jpg"
													alt="Image placeholder"></a>
											</div>
											<div class="text">
												<h2 class="heading">Grilled Top Sirloin Steak</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ratione quo vel aut ab qui quas!</p>
												<div class="price">
													<sup>$</sup><span class="number">23.45</span>
												</div>
											</div>
										</div>
									</div>

									<div class="item">
										<div class="block-34">
											<div class="image">
												<a href="#"><img src="images/menu_3.jpg"
													alt="Image placeholder"></a>
											</div>
											<div class="text">
												<h2 class="heading">Egg &amp; Grilled Steak</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ratione quo vel aut ab qui quas!</p>
												<div class="price">
													<sup>$</sup><span class="number">45.45</span>
												</div>
											</div>
										</div>
									</div>

									<div class="item">
										<div class="block-34">
											<div class="image">
												<a href="#"><img src="images/menu_4.jpg"
													alt="Image placeholder"></a>
											</div>
											<div class="text">
												<h2 class="heading">Spicy Noodles</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ratione quo vel aut ab qui quas!</p>
												<div class="price">
													<sup>$</sup><span class="number">33.45</span>
												</div>
											</div>
										</div>
									</div>


								</div>
							</div>
						</div>
					</div>


					<div class="tab-pane fade" id="pills-profile" role="tabpanel"
						aria-labelledby="pills-profile-tab">
						<div class="row">
							<div class="col-md-12 block-13">
								<div class="nonloop-block-13 owl-carousel">
									<div class="item">
										<div class="block-34">
											<div class="image">
												<a href="#"><img src="images/menu_2.jpg"
													alt="Image placeholder"></a>
											</div>
											<div class="text">
												<h2 class="heading">Grilled Top Sirloin Steak</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ratione quo vel aut ab qui quas!</p>
												<div class="price">
													<sup>$</sup><span class="number">23.45</span>
												</div>
											</div>
										</div>
									</div>

									<div class="item">
										<div class="block-34">
											<div class="image">
												<a href="#"><img src="images/menu_1.jpg"
													alt="Image placeholder"></a>
											</div>
											<div class="text">
												<h2 class="heading">Egg &amp; Asparagus</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ratione quo vel aut ab qui quas!</p>
												<div class="price">
													<sup>$</sup><span class="number">30.50</span>
												</div>
											</div>
										</div>
									</div>

									<div class="item">
										<div class="block-34">
											<div class="image">
												<a href="#"><img src="images/menu_3.jpg"
													alt="Image placeholder"></a>
											</div>
											<div class="text">
												<h2 class="heading">Egg &amp; Grilled Steak</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ratione quo vel aut ab qui quas!</p>
												<div class="price">
													<sup>$</sup><span class="number">45.45</span>
												</div>
											</div>
										</div>
									</div>

									<div class="item">
										<div class="block-34">
											<div class="image">
												<a href="#"><img src="images/menu_4.jpg"
													alt="Image placeholder"></a>
											</div>
											<div class="text">
												<h2 class="heading">Spicy Noodles</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ratione quo vel aut ab qui quas!</p>
												<div class="price">
													<sup>$</sup><span class="number">33.45</span>
												</div>
											</div>
										</div>
									</div>

									<div class="item">
										<div class="block-34">
											<div class="image">
												<a href="#"><img src="images/menu_1.jpg"
													alt="Image placeholder"></a>
											</div>
											<div class="text">
												<h2 class="heading">Egg &amp; Asparagus</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ratione quo vel aut ab qui quas!</p>
												<div class="price">
													<sup>$</sup><span class="number">30.50</span>
												</div>
											</div>
										</div>
									</div>

									<div class="item">
										<div class="block-34">
											<div class="image">
												<a href="#"><img src="images/menu_2.jpg"
													alt="Image placeholder"></a>
											</div>
											<div class="text">
												<h2 class="heading">Grilled Top Sirloin Steak</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ratione quo vel aut ab qui quas!</p>
												<div class="price">
													<sup>$</sup><span class="number">23.45</span>
												</div>
											</div>
										</div>
									</div>

									<div class="item">
										<div class="block-34">
											<div class="image">
												<a href="#"><img src="images/menu_3.jpg"
													alt="Image placeholder"></a>
											</div>
											<div class="text">
												<h2 class="heading">Egg &amp; Grilled Steak</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ratione quo vel aut ab qui quas!</p>
												<div class="price">
													<sup>$</sup><span class="number">45.45</span>
												</div>
											</div>
										</div>
									</div>

									<div class="item">
										<div class="block-34">
											<div class="image">
												<a href="#"><img src="images/menu_4.jpg"
													alt="Image placeholder"></a>
											</div>
											<div class="text">
												<h2 class="heading">Spicy Noodles</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ratione quo vel aut ab qui quas!</p>
												<div class="price">
													<sup>$</sup><span class="number">33.45</span>
												</div>
											</div>
										</div>
									</div>


								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="pills-contact" role="tabpanel"
						aria-labelledby="pills-contact-tab">
						<div class="row">
							<div class="col-md-12 block-13">
								<div class="nonloop-block-13 owl-carousel">
									<div class="item">
										<div class="block-34">
											<div class="image">
												<a href="#"><img src="images/menu_3.jpg"
													alt="Image placeholder"></a>
											</div>
											<div class="text">
												<h2 class="heading">Egg &amp; Grilled Steak</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ratione quo vel aut ab qui quas!</p>
												<div class="price">
													<sup>$</sup><span class="number">45.45</span>
												</div>
											</div>
										</div>
									</div>

									<div class="item">
										<div class="block-34">
											<div class="image">
												<a href="#"><img src="images/menu_1.jpg"
													alt="Image placeholder"></a>
											</div>
											<div class="text">
												<h2 class="heading">Egg &amp; Asparagus</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ratione quo vel aut ab qui quas!</p>
												<div class="price">
													<sup>$</sup><span class="number">30.50</span>
												</div>
											</div>
										</div>
									</div>

									<div class="item">
										<div class="block-34">
											<div class="image">
												<a href="#"><img src="images/menu_2.jpg"
													alt="Image placeholder"></a>
											</div>
											<div class="text">
												<h2 class="heading">Grilled Top Sirloin Steak</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ratione quo vel aut ab qui quas!</p>
												<div class="price">
													<sup>$</sup><span class="number">23.45</span>
												</div>
											</div>
										</div>
									</div>

									<div class="item">
										<div class="block-34">
											<div class="image">
												<a href="#"><img src="images/menu_4.jpg"
													alt="Image placeholder"></a>
											</div>
											<div class="text">
												<h2 class="heading">Spicy Noodles</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ratione quo vel aut ab qui quas!</p>
												<div class="price">
													<sup>$</sup><span class="number">33.45</span>
												</div>
											</div>
										</div>
									</div>

									<div class="item">
										<div class="block-34">
											<div class="image">
												<a href="#"><img src="images/menu_1.jpg"
													alt="Image placeholder"></a>
											</div>
											<div class="text">
												<h2 class="heading">Egg &amp; Asparagus</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ratione quo vel aut ab qui quas!</p>
												<div class="price">
													<sup>$</sup><span class="number">30.50</span>
												</div>
											</div>
										</div>
									</div>

									<div class="item">
										<div class="block-34">
											<div class="image">
												<a href="#"><img src="images/menu_2.jpg"
													alt="Image placeholder"></a>
											</div>
											<div class="text">
												<h2 class="heading">Grilled Top Sirloin Steak</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ratione quo vel aut ab qui quas!</p>
												<div class="price">
													<sup>$</sup><span class="number">23.45</span>
												</div>
											</div>
										</div>
									</div>

									<div class="item">
										<div class="block-34">
											<div class="image">
												<a href="#"><img src="images/menu_3.jpg"
													alt="Image placeholder"></a>
											</div>
											<div class="text">
												<h2 class="heading">Egg &amp; Grilled Steak</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ratione quo vel aut ab qui quas!</p>
												<div class="price">
													<sup>$</sup><span class="number">45.45</span>
												</div>
											</div>
										</div>
									</div>

									<div class="item">
										<div class="block-34">
											<div class="image">
												<a href="#"><img src="images/menu_4.jpg"
													alt="Image placeholder"></a>
											</div>
											<div class="text">
												<h2 class="heading">Spicy Noodles</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ratione quo vel aut ab qui quas!</p>
												<div class="price">
													<sup>$</sup><span class="number">33.45</span>
												</div>
											</div>
										</div>
									</div>


								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<div class="block-30 block-30-sm item"
		style="background-image: url('images/bg_2.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-12">
					<h2 class="heading">Quality accommodation that exceeds the
						expectations</h2>
					<p>
						<a href="#" class="btn py-4 px-5 btn-primary">Learn More</a>
					</p>
				</div>
			</div>
		</div>
	</div>

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
								<p>&rdquo; Lorem ipsum dolor sit amet consectetur
									adipisicing elit. Fuga aliquid. Atque dolore esse veritatis
									iusto eaque perferendis non dolorem fugiat voluptatibus vitae
									error ad itaque inventore accusantium tempore dolores sunt.
									&ldquo;</p>
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
								<p>&rdquo; Lorem ipsum dolor sit amet consectetur
									adipisicing elit. Fuga aliquid. Atque dolore esse veritatis
									iusto eaque perferendis non dolorem fugiat voluptatibus vitae
									error ad itaque inventore accusantium tempore dolores sunt.
									&ldquo;</p>
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
								<p>&rdquo; Lorem ipsum dolor sit amet consectetur
									adipisicing elit. Fuga aliquid. Atque dolore esse veritatis
									iusto eaque perferendis non dolorem fugiat voluptatibus vitae
									error ad itaque inventore accusantium tempore dolores sunt.
									&ldquo;</p>
							</blockquote>
						</div>
					</div>

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
									<a href="#"><span class="icon-calendar"></span> May 29,
										2018</a>
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
									<a href="#"><span class="icon-calendar"></span> May 29,
										2018</a>
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
									<a href="#"><span class="icon-calendar"></span> May 29,
										2018</a>
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
							<li><span class="icon icon-clock-o"></span><span
								class="text">Monday &mdash; Friday 8:00am - 5:00pm</span></li>
						</ul>
					</div>
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