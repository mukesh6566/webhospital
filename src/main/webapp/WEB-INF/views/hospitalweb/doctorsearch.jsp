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
	
	<link href="http://fonts.googleapis.com/css?family=Raleway:300,300i,400,400i,500,500i,600,600i,700,700i,800" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	    rel='stylesheet' type='text/css'>
	<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,600,600i,700" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<script type="text/javascript">


	$(document).ready(

              function()
              {

                  $("#doctor").change(function(e){
                	          e.preventDefault();
                            /// document.write($("#department").val());
                             ////  var url="/schedule/listbydepartment?department="+$("#department").val()+"&doctor="+$();
                             var url="/schedulejson";
                             ////  document.write(url);
                             $.get(url,function(data,status){
                              ////  alert("Hello");
                                /// location.reload();
                              ////  alert("Helloo");
                            	///document.write(JSON.stringify(data).toString());
                            	/// $("body").html(data);
                             	////var data[]=JSON.stringify(data).toString();
                               	var data=JSON.parse(JSON.stringify(data).toString());
                                $("#t1").empty();
                                for(var i=0;i<data.length;i++)
                                    {
                                    ///  document.write(data[i].shid);
                                    
                        	        
                                	///  $("#t1").append("<tr><td >"+data[i].doctorname+"</td><td>"+data[i].departname+"</td><td>"+data[i].date+"</td><td>"+data[i].time+"</td></tr>");
                                	 
                                	
                                	

                                    }
                                
                              
                            	  
                           

                                 });
                   


                      });

                $("#department").change(function(e){
                	  e.preventDefault();
                	 /// alert("Hello");
                	  var url="/doctorlistbydepartment?department="+$("#department").val();
                	  $("#textint").empty();
                	  $.get(url,function(data,status){
                    	  
                		 /// document.write(JSON.stringify(data).toString());
                			var data=JSON.parse(JSON.stringify(data).toString());
                            for(var i=0;i<data.length;i++)
                                {


                          	///  document.write(i);
                            ////  $("#textint").append("	<option value='Dr.&nbsp;"+data[i].docfname+"&nbsp;"+data[i].doclname+"'>Dr.&nbsp;"+data[i].docfname+"&nbsp;"+data[i].doclname+"</option>");
                                /// document.write(data[i].file);
                            	  $("#textint").append("<br><div class='table-responsive'><div><img src='/resources/upload/"+data[i].file+"' class='imgLeft' width='107'><h2>Dr. "+data[i].docfname+" "+data[i].doclname+"</h2><h4>"+data[i].docbio+"</h4><a href='/appointment'  class='btn btn-primary'>Request Appointment</a></div></div><br><br>");
                                           	
                            	 
                                }


                    	  });
                  


                    });

                $("#date1").change(function(e){
              	  e.preventDefault();
              	 /// alert($("#department").val());
              	  var url="/schedulejsonbydate?date1="+$("#date1").val()+"&doctor="+$("#doctor").val();
              	  $("#t1").empty();
              	 /// alert(url);
              	  $.get(url,function(data,status){
                  	  
              		 /////document.write(JSON.stringify(data).toString());
              			var data=JSON.parse(JSON.stringify(data).toString());
                          for(var i=0;i<data.length;i++)
                              {

                        	/// $("#t1").empty();
                        	 //// $("#t1").removeData();
                        	  $("#t1").append("<tr><td >"+data[i].doctorname+"<br><a href='/appointment'  class='btn btn-primary'>Appointment</a></td><td>"+data[i].departname+"</td><td>"+data[i].date+"</td><td>"+data[i].time+"</td></tr>");
                          	 
                              } 


                  	  });
                


                  });
           
                

                  
                  


               }
              



			);
	











	</script>
	
	
	
</head>

<body>

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
	<!-- Doctorschedule -->
	<div class="w3ls-banner">
		<div class="heading">
			<h1>SEARCH DOCTORS</h1>
		        <li>
					<div class="form-input">
					 	<select id="department" required>
						<option value="">Select Department</option>
					    <c:forEach items="${departments}" var="department">
						<option value="${department.departmentname}">${department.departmentname}</option>
					    </c:forEach>
						</select>
					</div>
				</li>
		<div class="form-input" id="textint"><br>
			
<!-- 			<div class="table-responsive ">
				<div>
				<img src="/resources/img/doctor.jpg" class="imgLeft" width="107">
				<h2>Dr. Sanju Babu Shrestha</h2>
				<h4>MBBS, MD Consultant Dermato-Venereologist & Cosmetic/Laser Surgeon Hair Transplantation Training (s. kOREA) Dermatology
				</h4>
				<input type="submit" value="Request Appointment">
				</div>
			</div>

			anothre dr
			<div class="table-responsive ">
				<div>
				<img src="/resources/img/doctor.jpg" class="imgLeft" width="107">
				<h2>Dr. Sanju Babu Shrestha</h2>
				<h4>MBBS, MD Consultant Dermato-Venereologist & Cosmetic/Laser Surgeon Hair Transplantation Training (s. kOREA) Dermatology
				</h4>
				<input type="submit" value="Request Appointment">
				</div>
			</div>

			anothre dr

			<div class="table-responsive ">
				<div>
				<img src="/resources/img/doctor.jpg" class="imgLeft" width="107">
				<h2>Dr. Pradeep Pandey</h2>
				<h4>MBBS, MD Consultant Dermato-Venereologist & Cosmetic/Laser Surgeon Hair Transplantation Training (s. kOREA) Dermatology
				</h4>
				<input type="submit" value="Request Appointment">
				</div>
			</div> -->
		</div>
	</div>
		
	</div>
	
	<!-- Doctors -->

<!-- footer -->
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
	<!-- //footer -->
	
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