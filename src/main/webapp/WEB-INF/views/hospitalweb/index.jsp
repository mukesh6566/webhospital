<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>eHospital</title>

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>

	<link href="/resources/web/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="/resources/web/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="/resources/web/css/appointment_style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="/resources/web/css/font-awesome.css" rel="stylesheet">

	<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,600,600i,700" rel="stylesheet">
</head>

<body>
	
	<div class="header" id="home">
		<div class="top_menu_w3layouts">
<div class="container">
			<div class="header_left">
				<ul>
					<li><i class="fa fa-map-marker" aria-hidden="true"></i> 33700 Pokhara, NEPAL</li>
					<li><i class="fa fa-phone" aria-hidden="true"></i> +977 061-168-532</li>
					<li><i class="fa fa-envelope-o" aria-hidden="true"></i> <a href=#>ehospital@gmail.com</a></li>
					<li><i class="fa fa-envelope-o" aria-hidden="true"></i>  <a href="/appointment/status1">Appointment Status</a></li>
					<li><i class="glyphicon glyphicon-search" aria-hidden="true"></i>  <a href="/doctor/search">Search Doctor</a></li>
				</ul>
			</div>
			
			<div class="clearfix"> </div>
			</div>
		</div>

		<div class="content white">
			<nav class="navbar navbar-default" role="navigation">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
						<a class="navbar-brand" href="index.html">
							<h1><span class="fa fa-stethoscope" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;eHospital</h1>
						</a>
					</div>
				
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<nav>
							<ul class="nav navbar-nav">
								<li><a href="/index" class="active">Home</a></li>
								<li><a href="/about">About</a></li>
								
								<li><a href="/department">Departments</a></li>
								<li><a href="/doctorschedule">Doctors Schedule</a></li>

								<li><a href="/appointment">Appointment</a></li>
							
								<li><a href="/contact">Contact Us</a></li>
							</ul>
						</nav>
					</div>
					
				</div>
			</nav>
		</div>
	</div>

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1" class=""></li>
			<li data-target="#myCarousel" data-slide-to="2" class=""></li>
			<li data-target="#myCarousel" data-slide-to="3" class=""></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<div class="container">
					<div class="carousel-caption">
					</div>
				</div>
			</div>
			<div class="item item2">
				<div class="container">
					<div class="carousel-caption">
		
					</div>
				</div>
			</div>
			<div class="item item3">
				<div class="container">
					<div class="carousel-caption">
					</div>
				</div>
			</div>
			
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			<span class="fa fa-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			<span class="fa fa-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
		
	</div>
	
	<div class="agile-about w3ls-section">
	<div class="agileits-about-btm">
	<h3 class="heading-agileinfo">Welcome To Our Hospital!<span>Your Health Care Assistant.</span></h3>
		<div class="container">
			<div class="w3-flex">
			<div class="col-md-6 col-sm-6 ">
				<img src="/resources/web/images/about.jpg" width="555px">
				
			</div>
			
			<div class="col-md-6 col-sm-6 ">
				
				<h3 style="color:#069" ><strong>About Our eHospital</strong></h3>
				<p>The history of private hospital in Nepal dates back to late 1980's .After the people's popular movement 1990 AD. There was mushrooming of private hospitals or nursing homes. Nearing to people popular movement 2062 BS (April,2006 AD).we additionally paintings very closely with our community healthcare group who provide antenatal, postnatal and nursing services and different specialist provision inclusive of the quitters scheme.</p>
				<br>
                <P><strong>MISSION:</strong> The mission of AIMS is to be a "Center of Excellence" in the field of Nursing and is to address the national and ultimately the rural problem of the skilled human resources particularly in the areas of health through human resource development program.</P>
				
			</div>
			<div class="clearfix"></div>
			</div>
		</div>
	</div>
	
</div>

<div class="tesimonials">
<div class="tesimonials_tp">
		<div class="container">
			<div class="tittle_head_w3layouts">
				<h3 class="heading-agileinfo">What Clients Say!<span>....................</span></h3>
			</div>
			<div class="inner_sec_info_agileits_w3">
				<div class="test_grid_sec">
					<div class="col-md-offset-2 col-md-8">
						<div class="carousel slide two" data-ride="carousel" id="quote-carousel">
							
							<ol class="carousel-indicators two">
								<li data-target="#quote-carousel" data-slide-to="0" class="active"></li>
								<li data-target="#quote-carousel" data-slide-to="1"></li>
								<li data-target="#quote-carousel" data-slide-to="2"></li>
							</ol>

							
							<div class="carousel-inner">

							
								<div class="item active">
									<blockquote>
										<div class="test_grid">
											<div class="col-sm-3 text-center test_img">
												<img src="/resources/web/images/ts1.jpg" alt=" " class="img-responsive" />

											</div>
											<div class="col-sm-9 test_img_info">
												<p>Maecenas quis neque libero. Class aptent taciti.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam
													auctor nec lacus ut tempor. Mauris.</p>
												<h6>Sara Lisbon</h6>
											</div>
										</div>
									</blockquote>
								</div>
								
								<div class="item">
									<blockquote>
										<div class="test_grid">
											<div class="col-sm-3 text-center test_img">
												<img src="/resources/web/images/ts2.jpg" alt=" " class="img-responsive" />
											</div>
											<div class="col-sm-9 test_img_info">
												<p>Lorem ipsum dolor sit amet. Class aptent taciti.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam
													auctor nec lacus ut tempor. Mauris.</p>
												<h6>Jane Wearne</h6>
											</div>
										</div>
									</blockquote>
								</div>
						
								<div class="item">
									<blockquote>
										<div class="test_grid">
											<div class="col-sm-3 text-center test_img">
												<img src="/resources/web/images/ts3.jpg" alt=" " class="img-responsive" />
											</div>
											<div class="col-sm-9 test_img_info">
												<p>Maecenas quis neque libero. Class aptent taciti.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam
													auctor nec lacus ut tempor. Mauris.</p>
												<h6>Alice Williams</h6>
											</div>
										</div>
									</blockquote>
								</div>
							</div>

					
							<a data-slide="prev" href="#quote-carousel" class="left carousel-control"><i class="fa fa-chevron-left"></i></a>
							<a data-slide="next" href="#quote-carousel" class="right carousel-control"><i class="fa fa-chevron-right"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

	<div class="footer_top_agile_w3ls">
		<div class="container">
			<div class="col-md-4 footer_grid">
				<h3>About Us</h3>
				<p>To provide appropriate cost effective health care services at international Standard in Nepal.

				</p>
				
			</div>
			<div class="col-md-4 footer_grid">
				<h3>Quick Links</h3>
				<ul class="nav navbar-nav">
					<li><a href="index.html">Home</a></li>
					 <li><a href="about.html">About</a></li>
					 <li><a href="departments.html">Departments</a></li>
					 <li><a href="doctorsSchedule.html">Doctors Schedule</a></li>
					 <li><a href="/show/appointment">Appointment</a></li>
					 <li><a href="contact.html">Contact Us</a></li>
				</ul>
			</div>
			<div class="col-md-4 footer_grid">
				<h3>Contact Info</h3>
				<ul class="address">
					<li><i class="fa fa-map-marker" aria-hidden="true"></i>33700 Pokhara, NEPAL<span> pokhara City.</span></li>
					<li><i class="fa fa-envelope" aria-hidden="true"></i><a href="#">ehospital@gmail.com</a></li>
					<li><i class="fa fa-phone" aria-hidden="true"></i>+977 061-168-532</li>
				</ul>
			</div>
			
			<div class="clearfix"> </div>

		</div>
	</div>
	<div class="footer_wthree_agile">
		<p>© 2018 eHospital. All rights reserved</p>
	
	<script type="text/javascript" src="/resources/web/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="/resources/web/js/bootstrap.js"></script>
</body>
</html> 