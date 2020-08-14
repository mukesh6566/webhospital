<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>



<head>
	<title>eHospital</title>
	<!--/tags -->
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

                                 $.get("/department/test",function(data,status){
                              
                                	document.write(data);

                                     });
                       


                          });


                   }
                  



				);
	</script>
	<!--//tags -->
	<link href="/resources/web/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="/resources/web/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="/resources/web/css/appointment_style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="/resources/web/css/font-awesome.css" rel="stylesheet">
	<!-- //for bootstrap working -->
	<link href="http://fonts.googleapis.com/css?family=Raleway:300,300i,400,400i,500,500i,600,600i,700,700i,800" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	    rel='stylesheet' type='text/css'>
	<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,600,600i,700" rel="stylesheet">
	
	  <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="/resources/assets/dist/img/ico/favicon.png" type="image/x-icon">

     
</head>

<body>
	<!-- header -->
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
					<!-- <li><a href="appointment.html"> Make an Appointment</a> </li> -->
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
					<!--/.navbar-header-->
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
					<!--/.navbar-collapse-->
					<!--/.navbar-->
				</div>
			</nav>
		</div>
	</div>
	<!-- banner -->
<div class="banner_inner_content_agile_w3l">
	
</div>
	<!--//banner -->
<!---728x90--->
	<!--//banner -->
	<div class="w3ls-banner">
	<div class="heading">
		<h1>FEEDBACK/INQUIRY</h1>
	</div>
		<div class="container_1">
			<div class="heading">
				<h2>Your Feedback Send Successfully</h2>
				<h4><a class="btn btn-primary" href="/index">Do You want to go in home page?<br>Click Here</a></a></h4>
			</div><br/>
			<div class="agile-form">
		
			</div>
		</div>
		</div>

	<!-- footer -->
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
					<li><a href="/index">Home</a></li>
					 <li><a href="/about">About</a></li>
					 <li><a href="/department">Departments</a></li>
					 <li><a href="/doctorschedule">Doctors Schedule</a></li>
					 <li><a href="/appointment">Appointment</a></li>
					 <li><a href="/contact">Contact Us</a></li>
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
	<!-- //footer -->

	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script>
		$('ul.dropdown-menu li').hover(function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
		}, function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
		});
	</script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
<script >
	$('form-required').ready(function() {
    $("#datepicker1").datepicker();
    $("#returning").datepicker();
    $("button").click(function() {
    	var selected = $("#dropdown option:selected").text();
        var departing = $("#departing").val();
        var returning = $("#returning").val();
        if (departing === "" || returning === "") {
			alert("Please select departing and returning dates.");
        } else {
			confirm("Would you like to go to " + selected + " on " + departing + " and return on " + returning + "?");
        }
    });
});
	</script>
</body>
</html>

