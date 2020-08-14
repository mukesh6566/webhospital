<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from healthadmin.thememinister.com/forms_basic.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 14 Mar 2018 12:18:05 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>e-hospital</title>

    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="/resources/assets/dist/img/ico/favicon.png" type="image/x-icon">

        <!-- Start Global Mandatory Style
        =====================================================================-->
        <!-- jquery-ui css -->
        <link href="/resources/assets/plugins/jquery-ui-1.12.1/jquery-ui.min.css" rel="stylesheet" type="text/css"/>
        <!-- Bootstrap -->
        <link href="/resources/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- Bootstrap rtl -->
        <!--<link href="assets/bootstrap-rtl/bootstrap-rtl.min.css" rel="stylesheet" type="text/css"/>-->
        <!-- Lobipanel css -->
        <link href="/resources/assets/plugins/lobipanel/lobipanel.min.css" rel="stylesheet" type="text/css"/>
        <!-- Pace css -->
        <link href="/resources/assets/plugins/pace/flash.css" rel="stylesheet" type="text/css"/>
        <!-- Font Awesome -->
        <link href="/resources/assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <!-- Pe-icon -->
        <link href="/resources/assets/pe-icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet" type="text/css"/>
        <!-- Bootstrap-wysihtml5 css -->
        <link href="/resources/assets/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.css" rel="stylesheet" type="text/css"/>
        <!-- Themify icons -->
        <link href="/resources/assets/themify-icons/themify-icons.css" rel="stylesheet" type="text/css"/>
        <!-- End Global Mandatory Style
        =====================================================================-->
        <!-- Start Theme Layout Style
        =====================================================================-->
        <!-- Theme style -->
        <link href="/resources/assets/dist/css/stylehealth.min.css" rel="stylesheet" type="text/css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <!-- Theme style rtl -->
        <!--<link href="assets/dist/css/stylehealth-rtl.css" rel="stylesheet" type="text/css"/>-->
        <!-- End Theme Layout Style
        =====================================================================-->
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
                  	  $("#doctor").empty();
                  	  $.get(url,function(data,status){
                      	  
                  		 /// document.write(JSON.stringify(data).toString());
                  			var data=JSON.parse(JSON.stringify(data).toString());
                              for(var i=0;i<data.length;i++)
                                  {


                            	  
                              	  $("#doctor").append("	<option value='Dr.&nbsp;"+data[i].docfname+"&nbsp;"+data[i].doclname+"'>Dr.&nbsp;"+data[i].docfname+"&nbsp;"+data[i].doclname+"</option>");
                              	 
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
    <body class="hold-transition sidebar-mini">        
        <!-- Site wrapper -->
        <div class="wrapper">
             <%@include file="/resources/commons/main-header.jsp" %>
                <!-- =============================================== -->
                <!-- Left side column. contains the sidebar -->
               <%@include file="/resources/commons/main-sidebar.jsp" %>
                <!-- =============================================== -->
                <!-- Content Wrapper. Contains page content -->
                <div class="content-wrapper">
                    <!-- Content Header (Page header) -->
                    <section class="content-header">
                        <div class="header-icon">
                            <i class="pe-7s-note2"></i>
                        </div>
                        <div class="header-title">
                            <form action="#" method="get" class="sidebar-form search-box pull-right hidden-md hidden-lg hidden-sm">
                                <div class="input-group">
                                    <input type="text" name="q" class="form-control" placeholder="Search...">
                                    <span class="input-group-btn">
                                        <button type="submit" name="search" id="search-btn" class="btn"><i class="fa fa-search"></i></button>
                                    </span>
                                </div>
                            </form>  
                            <h1>Patient</h1>
                            <small>Patient list</small>
                            <ol class="breadcrumb hidden-xs">
                                <li><a href="index-2.html"><i class="pe-7s-home"></i> Home</a></li>
                                <li class="active">Dashboard</li>
                            </ol>
                        </div>
                    </section>
                    <!-- Main content -->
                    <section class="content">
                        <div class="row">
                            <!-- Form controls -->
                            <div class="col-sm-12">
                                <div class="panel panel-bd lobidrag">
                                    <div class="panel-heading">
                                        <div class="btn-group"> 
                                            <a class="btn btn-primary" href="/patient/list"> <i class="fa fa-list"></i>  Patient List </a>  
                                        </div>
                                    </div>
                                    <div class="panel-body">
                                        <form class="col-sm-12" action="/add/patient" method="post">
                                        
                                            <div class="form-group">
                                                <label>Patient Id</label>
                                                <input type="text" name="patid" class="form-control" placeholder="Enter Patient id" required>
                                            </div>
                                            <div class="form-group">
                                                <label>First Name</label>
                                                <input type="text" name="patfname" class="form-control" placeholder="Enter First Name" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Last Name</label>
                                                <input type="text" name="patlname" class="form-control" placeholder="Enter last Name" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Mobile</label>
                                                <input type="number" name="patmobile" class="form-control" placeholder="Enter Mobile" required>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label>Date of Birth</label>
                                                <input type="date" name="patdob" class="form-control" placeholder="Date of Birth">
                                            </div>
                                            
                                             <div class="form-group">
                                                   <label>Department</label>
                                                <select class="form-control" id="department" name="department" size="1">
                                                      <option value="">Select Department</option>
                                                    <c:forEach items="${departments}" var="department">
                                                    <option>${department.departmentname}</option>
                                                   </c:forEach>
                                                </select>
                                            </div>
                                            
                                            <div class="form-group">
                                               <label>Doctor</label>
                                                <select class="form-control" id="doctor" name="docassign" size="1">
                                                     <option value="">Select Doctor</option>
                                                </select>
                                            </div>
                                            
                                                 <div class="form-group">
                                                <label>Admitted Date</label>
                                                <input type="date" name="admitdate" class="form-control" placeholder="Date of Birth">
                                            </div>
                                            
                                            
                                            
                                            <div class="form-group">
                                                <label>Blood group</label>
                                                <select class="form-control" name="patbloodgroup">
                                                    <option>A+</option>
                                                    <option>AB+</option>
                                                    <option>O+</option>
                                                    <option>AB-</option>
                                                    <option>B+</option>
                                                    <option>A-</option>
                                                    <option>B-</option>
                                                    <option>O-</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                             <label>Sex</label><br>
                                             <label class="radio-inline"><input name="patsex" value="Male" checked="checked" type="radio">Male</label> 
                                             <label class="radio-inline"><input name="patsex" value="Female" type="radio">Female</label>

                                         </div>
                                         <div class="form-check">
                                          <label>Status</label><br>
                                          <label class="radio-inline"><input type="radio" name="patstatus" value="1" checked="checked">Active</label> <label class="radio-inline"><input type="radio" name="status" value="0" >Inctive</label>
                                      </div>                                       

                                      <div class="form-group">
                                        <label>Address</label>
                                        <textarea class="form-control" name="pataddress" rows="3" required></textarea>
                                    </div>
                                    <div class="reset-button">
                                     <a href="#" class="btn btn-warning">Reset</a>
                                    <!--  <a href="#" class="btn btn-success">Save</a> -->
                                     <input type="submit" class="btn btn-success" value="Save"/>
                                 </div>
                                         </form>
                                     </div>
                                 </div>
                             </div>
                         </div>
                         
                     </section> <!-- /.content -->
                 </div> <!-- /.content-wrapper -->
           <%@include file="/resources/commons/main-footer.jsp" %>
            </div> <!-- ./wrapper -->
        <!-- Start Core Plugins
        =====================================================================-->
        <!-- jQuery -->
        <script src="/resources/assets/plugins/jQuery/jquery-1.12.4.min.js" type="text/javascript"></script>
        <!-- jquery-ui --> 
        <script src="/resources/assets/plugins/jquery-ui-1.12.1/jquery-ui.min.js" type="text/javascript"></script>
        <!-- Bootstrap -->
        <script src="/resources/assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- lobipanel -->
        <script src="/resources/assets/plugins/lobipanel/lobipanel.min.js" type="text/javascript"></script>
        <!-- Pace js -->
        <script src="/resources/assets/plugins/pace/pace.min.js" type="text/javascript"></script>
        <!-- SlimScroll -->
        <script src="/resources/assets/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <!-- FastClick -->
        <script src="/resources/assets/plugins/fastclick/fastclick.min.js" type="text/javascript"></script>
        <!-- Hadmin frame -->
        <script src="/resources/assets/dist/js/custom1.js" type="text/javascript"></script>

        <!-- End Core Plugins
        =====================================================================-->
        <!-- Start Theme label Script
        =====================================================================-->
        <!-- Dashboard js -->
        <script src="/resources/assets/dist/js/custom.js" type="text/javascript"></script>
        <!-- End Theme label Script
        =====================================================================-->

    </body>
    
<!-- Mirrored from healthadmin.thememinister.com/forms_basic.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 14 Mar 2018 12:18:06 GMT -->
</html>
