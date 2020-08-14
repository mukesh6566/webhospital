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
	
	<link href="http://fonts.googleapis.com/css?family=Raleway:300,300i,400,400i,500,500i,600,600i,700,700i,800" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	    rel='stylesheet' type='text/css'>
	<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,600,600i,700" rel="stylesheet">
	
	  <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="/resources/assets/dist/img/ico/favicon.png" type="image/x-icon">


        <!-- End Theme Layout Style
        =====================================================================-->
         <link href="/resources/advancecs/jquery.dataTables.min.css" rel="stylesheet">
         <link href="/resources/advancecs/buttons.dataTables.min.css" rel="stylesheet">
	
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
					<li><i class="fa fa-envelope-o" aria-hidden="true"></i> <a href="/appointment/status">Appointment Status</a></li>
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
	
<div class="banner_inner_content_agile_w3l">
	
</div>
	
	<div class="banner-bottom">
		<div class="container">
			<div class="inner_sec_info_agileits_w3">
              <h2 class="heading-agileinfo">Appointment Status</h2>
                  <table id="example" class="table table-bordered table-hover" >
                                                <thead>
                                                    <tr>
                                                        <th>Appointment Number</th>
                                                        <th>Doctor Name</th>
                                                        <th>Patient Name</th>
                                                        <th>Gender</th>
                                                        <th>Mobile Number</th>
                                                        <th>Date Of Birth</th>
                                                        <th>Email</th>
                                                        <th>Address</th>
                                                        <th>Appointment Date Apply</th>
                                                        <th>Description</th>
                                                        <th>Reply Message</th>
                                                        <th>Status</th>
                                                  
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach items="${appointments}" var="appointment">
                                    
                                                <tr >  
                                                  
                                                     <td>${appointment.appointno}</td>
                                                     <td>${appointment.docname}</td>
                                                     <td>${appointment.fullname}</td>
                                                     <td>${appointment.gender}</td>
                                                     <td>${appointment.mobnumber}</td>
                                                     <td>${appointment.dob}</td>
                                                     <td>${appointment.email}</td>
                                                     <td>${appointment.address}</td>
                                                     <td>${appointment.appointmentdate}</td>
                                                     <td>${appointment.description}</td>
                                                     <td>${appointment.replymessage}</td>
                                                      <c:if test="${appointment.status==1}"> 
                                                     <td><span class="label-success label label-default">Accepted</span></td>
                                                     </c:if>
                                                     <c:if test="${appointment.status==2}"> 
                                                    <td><span class="label-default label label-danger">Rejected</span></td>
                                                     </c:if>
                                                         <c:if test="${appointment.status==null}"> 
                                                    <td><span class="label-default label label-info">Pending</span></td>
                                                     </c:if>
                                       
                                                </tr>
                                            
                                                </c:forEach>
                            </tbody>
                        </table>
                
	
			</div>
		

		</div>
	</div>
	
			<div class="map_w3layouts_agile">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d56252.07771333084!2d83.94752001811541!3d28.214759641455608!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3995951c2ffd853d%3A0xa5dcb30f60d4c9b9!2sCIWEC+Hospital+Pokhara!5e0!3m2!1sen!2snp!4v1522815043595" width="600" height="450" frameborder="0" style="border:0" allowfullscreen style="border:0"></iframe>

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
	  <script src="/resources/advancejs/bootstrap.min.js"></script>
  <script src="/resources/advancejs/jquery.dataTables.min.js"></script>
  <script src="/resources/advancejs/dataTables.buttons.min.js"></script>
  <script src="/resources/advancejs/buttons.flash.min.js"></script>
  <script src="/resources/advancejs/jszip.min.js"></script>
  <script src="/resources/advancejs/pdfmake.min.js"></script>
  <script src="/resources/advancejs/vfs_fonts.js"></script>
  <script src="/resources/advancejs/buttons.html5.min.js"></script>
  <script src="/resources/advancejs/buttons.print.min.js"></script>
  
     <script type="text/javascript">
   $(document).ready(function() {
	    $('#example').DataTable( {
	        dom: 'Bfrtip',
	        buttons: [
	             
	        ] 
	    } );
	} );
 
 </script>
</body>
</html>