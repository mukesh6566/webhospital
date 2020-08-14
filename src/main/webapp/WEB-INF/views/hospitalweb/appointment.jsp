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
		<h1>DOCTOR'S APPOINTMENT</h1>
	</div>
		<div class="container_1">
			<div class="heading">
				<h2>Please Enter Your Details</h2>
				<h5>Fill the form below and submit your query we will contact you as soon as possible.</h5>
				<h4 style="color: green;">${msg}</h4>
			</div><br/>
			<div class="agile-form">
				<form action="/send/appointment" method="post">
					<ul class="field-list">
				<!-- 		<li>
							<label class="form-label">
							   Doctor
							   <span class="form-required"> * </span>
							</label>
							<div class="form-input">
								<select class="form-control" name="docname">
									<option value="">&nbsp;</option>
									<option value="">Dr.Ram Kumar Thapa </option>
									<option value="">Dr.Anjila Rai </option>
									<option value="">Dr.Suman KC</option>
								</select>
							</div>
						</li> -->
						
								<li>
							<label class="form-label">
							   Doctor
							   <span class="form-required"> * </span>
							</label>
						    <div class="form-input">
                                       
                                                <select class="form-control" name="docname">
                                          
                                                    <c:forEach items="${doctors}" var="doctor">
                                                    <option>Dr.&nbsp;${doctor.docfname}&nbsp;${doctor.doclname}</option>
                                                   </c:forEach>
                                                         <option>Dr.${doctor}</option>
                                                </select>
                                            </div>
						</li>
				
						<li>
							<label class="form-label"> 
								Full Name 
								<span class="form-required"> * </span>
							</label>
							<div class="form-input">
								<input type="" class="form-control" name="fullname" placeholder="Enter Your Name" required >
							</div>
						</li>
						<li>
							<label class="form-label">
							   Gender
							   <span class="form-required"> * </span>
							</label>
							<div class="form-input">
								<select class="form-dropdown form-control" name="gender" placeholder="Select Gender" required>
									<option value="">&nbsp;</option>
									<option value="Male"> Male </option>
									<option value="Female"> Female </option>
									<option value="Transgender"> Other </option>
								</select>
							</div>
						</li>
						<li> 
							<label class="form-label">
							   Mobile Number
							   <span class="form-required"> * </span>
							</label>
							<div class="form-input">
								<input type="" class="form-control" name="mobnumber" placeholder=" Enter Mobile Number" required >
							</div>
						</li>
						<li>
							<label class="form-label">
							   Date of Birth
							   <span class="form-required"> * </span>
							</label>
							<div class="form-input">
								<input type="date"   class=" form-control" name="dob" placeholder="selee" required>
							</div>
						</li>
						<li> 
							<label class="form-label">
							   Address
							   <span class="form-required"> * </span>
							</label>
							<div class="form-input">
								<input type="" name="address" class="form-control" placeholder="Enter Your Address" required>
							</div>
						</li>
						<li> 
							<label class="form-label">
							   E-Mail Address
							   <span class="form-required"> * </span>
							</label>
							<div class="form-input">
								<input type="" name="email" class="form-control" placeholder="myname@example.com" required>
							</div>
						</li>
						<li> 
							<label class="form-label">
							   Appointment Date
							   <span class="form-required"> * </span>
							</label>
							<div class="form-input">
								<input type="date"   class=" form-control" name="appointmentdate" placeholder="" required>
							</div>
						</li>
						<li> 
							<label class="form-label1">
								Describe Any Present Illness
							</label>
							<div class="form-input2">
								<textarea rows="5" cols="20" class="form-control" name="description"></textarea>
							
							</div>
						</li>
						
					</ul>
					<input type="submit" value="Request Appointment">
				</form>	
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

