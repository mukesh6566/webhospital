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
        
        <link rel="stylesheet" href="css/jquery.e-calendar.css">
        <script src="js/jquery.e-calendar.js"></script>
        <!-- Theme style rtl -->
        <!--<link href="assets/dist/css/stylehealth-rtl.css" rel="stylesheet" type="text/css"/>-->
        <!-- End Theme Layout Style
        =====================================================================-->
        <script type="text/javascript">
       //// $('#basicExample').timepicker();
       
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
                            <h1>Schedule</h1>
                            <small>Schedule list</small>
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
                                            <a class="btn btn-primary" href="/scheduledate/list"> <i class="fa fa-list"></i>  Schedule List </a>  
                                        </div>
                                    </div>
                                    <div class="panel-body">
                                         <form action="/save/schedule1" method="post" class="col-sm-6">
                                         
                                            <div class="form-group">
                                                   <label>Department</label>
                                                <select class="form-control" id="department" name="departname" size="1">
                                                   <option value="">Select Department</option>
                                                    <c:forEach items="${departments}" var="department">
                                                   	<option value="${department.departmentname}">${department.departmentname}</option>
                                                   </c:forEach>
                                                </select>
                                            </div>
                                         
                                         
                                            <div class="form-group">
                                               <label>Doctor</label>
                                                <select class="form-control" id="doctor" name="docname" size="1">
                                                  
                                                 <option value="">Select Doctor</option>
                                               
                                                </select>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label>Available time in Sunday</label>
                                                <input name="sunday" class="datepicker form-control hasDatepicker" type="text" placeholder="available time" value="">
                                            </div>
                                            
                                              <div class="form-group">
                                                <label>Available time in Monday</label>
                                                <input name="monday" class="datepicker form-control hasDatepicker" type="text" placeholder="available time" value="">
                                            </div>
                                                <div class="form-group">
                                                <label>Available time in Tuesday</label>
                                                <input name="tuesday" class="datepicker form-control hasDatepicker" type="text" placeholder="available time" value="">
                                            </div>
                                                <div class="form-group">
                                                <label>Available time in Wednesday</label>
                                                <input name="wednesday" class="datepicker form-control hasDatepicker" type="text" placeholder="available time" value="">
                                            </div>
                                                     <div class="form-group">
                                                <label>Available time in Thursday</label>
                                                <input name="thursday" class="datepicker form-control hasDatepicker" type="text" placeholder="available time" value="">
                                            </div>
                                            
                                               <div class="form-group">
                                                <label>Available time in Friday</label>
                                                <input name="friday" class="datepicker form-control hasDatepicker" type="text" placeholder="available time" value="">
                                            </div>
                                            
                                                <div class="form-group">
                                                <label>Available time in Saturday</label>
                                                <input name="saturday" class="datepicker form-control hasDatepicker" type="text" placeholder="available time" value="">
                                            </div>
                                       <!--      <div class="form-group">
                                                <label>per patient time</label>
                                                <input name="perpatienttime" class="datepicker form-control hasDatepicker" type="text" placeholder="time">
                                            </div> -->
                 <!--                            <div class="form-group">
                                                <label>Serial visibility</label>
                                                <select class="form-control" name="serialvisibility">
                                                    <option>sequential</option>
                                                    <option>timestamp</option>
                                                </select>
                                            </div>
                                            <div class="form-check">
                                              <label>Status</label><br>
                                              <label class="radio-inline"><input type="radio" name="status" value="1" checked="checked">Active</label> <label class="radio-inline"><input type="radio" name="status" value="0">Inctive</label>                                       
                                          </div>
 -->
                                          <div class="reset-button">
                                             <a href="#" class="btn btn-warning">Reset</a>
                                       <!--       <a href="#" class="btn btn-success">Save</a> -->
                                       <input type="submit" class="btn btn-success" value="save"/>
                                         </div>
                                         
                                       </form>
                                     </div>
                                    <div id="calendar"></div>
                                     
                                     
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
        <script type="text/javascript">

    	$(document).ready(function () {
			$('#calendar').eCalendar({
			weekDays: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
			months: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
			textArrows: {previous: '<', next: '>'},
			eventTitle: 'Events',
			url: '',
			firstDayOfWeek: 0,
			events: [
			  {title: 'Event 1', description: 'Description 1', <a href="https://www.jqueryscript.net/time-clock/">date</a>time: new Date(2014, 7, 15, 17)},
			  {title: 'Event 2', description: 'Description 2', datetime: new Date(2014, 7, 14, 16)},
			  {title: 'Event 3', description: 'jQueryScript.Net', datetime: new Date(2014, 7, 10, 16)}
			]});
			});
                    




        </script>

    </body>
    
<!-- Mirrored from healthadmin.thememinister.com/forms_basic.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 14 Mar 2018 12:18:06 GMT -->
</html>
