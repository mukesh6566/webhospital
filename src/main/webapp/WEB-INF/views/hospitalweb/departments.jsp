<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>



<head>
	<title>eHospital</title>

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}


		$(document).ready(

                  function()
                  {

                      $("#department").click(function(){
                             
                                 $.get("/appointment1?department",function(data,status){
                                    alert("Hello");
                                	/// alert("Data: " + data + "\nStatus: " + status);
                                	document.write(data);

                                     });
                       


                          });


                   }
                  



				);
		
	</script>
	
	<link href="/resources/web/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="/resources/web/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="/resources/web/css/appointment_style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="/resources/web/css/font-awesome.css" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Raleway:300,300i,400,400i,500,500i,600,600i,700,700i,800" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	    rel='stylesheet' type='text/css'>
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
			<div class="header_right">
				<ul class="forms_right">
					<li><a href="appointment.html"> Make an Appointment</a> </li>
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
	
<div class="banner_inner_content_agile_w3l">
	
</div>
	
	<div class="services">
<div class="container">
		<h3 class="heading-agileinfo">Departments<span>We offer extensive medical procedures to outbound and inbound patients.</span></h3>
	
		<div class="services-top-grids">
			<div class="col-md-4">
				<div class="grid1">
					<i class="fa fa-heartbeat" aria-hidden="true"></i>
					<h4>Cardiology</h4>
					<p>Lorem ipsum dolor sit amet, Sed ut perspiciatis unde omnis iste natus error sit voluptatem </p>
				</div>
			</div>
			<div class="col-md-4">
				<div class="grid1">
					<i class="fa fa-user-md" aria-hidden="true"></i>
					<h4>Traumotology</h4>
					<p>Lorem ipsum dolor sit amet, Sed ut perspiciatis unde omnis iste natus error sit voluptatem </p>
				</div>
			</div>
			<div class="col-md-4">
				<div class="grid1">
					<i class="fa fa-wheelchair-alt" aria-hidden="true"></i>
					<h4>For disabled</h4>
					<p>Lorem ipsum dolor sit amet, Sed ut perspiciatis unde omnis iste natus error sit voluptatem </p>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="services-top-grids">
			<div class="col-md-4">
				<div class="grid1">
					<i class="fa fa-medkit" aria-hidden="true"></i>
					<h4>Pulmonary</h4>
					<p>Lorem ipsum dolor sit amet, Sed ut perspiciatis unde omnis iste natus error sit voluptatem </p>
				</div>
			</div>
			<div class="col-md-4">
				<div class="grid1">
					<i class="fa fa-hospital-o" aria-hidden="true"></i>
					<h4>Gynaecology</h4>
					<p>Lorem ipsum dolor sit amet, Sed ut perspiciatis unde omnis iste natus error sit voluptatem </p>
				</div>
			</div>
			<div class="col-md-4">
				<div class="grid1">
					<i class="fa fa-ambulance" aria-hidden="true"></i>
					<h4>Dental</h4>
					<p>Lorem ipsum dolor sit amet, Sed ut perspiciatis unde omnis iste natus error sit voluptatem </p>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		
		<div class="services-bottom-grids">
			<div class="col-md-4">
				<div class="grid1">
					<i class="fa fa-plus-square" aria-hidden="true"></i>
					<h4>X-ray</h4>
					<p>Lorem ipsum dolor sit amet, Sed ut perspiciatis unde omnis iste natus error sit voluptatem </p>
				</div>
			</div>
			<div class="col-md-4">
				<div class="grid1">
					<i class="fa fa-stethoscope" aria-hidden="true"></i>
					<h4>Nephrology</h4>
					<p>Lorem ipsum dolor sit amet, Sed ut perspiciatis unde omnis iste natus error sit voluptatem </p>
				</div>
			</div>
			<div class="col-md-4">
				<div class="grid1">
					<i class="fa fa-user-md" aria-hidden="true"></i>
					<h4>Neurology</h4>
					<p>Lorem ipsum dolor sit amet, Sed ut perspiciatis unde omnis iste natus error sit voluptatem </p>
				</div>
			</div>
			<div class="clearfix"></div>
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
				<h3>Latest News</h3>
				<ul class="nav navbar-nav">
					<li><a href="index.html">Home</a></li>
					 <li><a href="about.html">About</a></li>
					 <li><a href="departments.html">Departments</a></li>
					 <li><a href="doctorsSchedule.html">Doctors Schedule</a></li>
					 <li><a href="appointment.html">Appointment</a></li>
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
	</div>
	
	<script type="text/javascript" src="/resources/web/js/jquery-2.1.4.min.js"></script>
	<script>
		$('ul.dropdown-menu li').hover(function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
		}, function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
		});
	</script>
	<script type="text/javascript" src="/resources/web/js/bootstrap.js"></script>
</body>
</html>