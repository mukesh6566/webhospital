<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:formatDate pattern="yyyy-MM-dd" value="${now}" /> --%>

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
        <!-- Theme style rtl -->
        <!--<link href="assets/dist/css/stylehealth-rtl.css" rel="stylesheet" type="text/css"/>-->
        <!-- End Theme Layout Style
        =====================================================================-->
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
                            <h1>Doctor</h1>
                            <small>Doctor list</small>
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
                                            <a class="btn btn-primary" href="/doctor/list"> <i class="fa fa-list"></i>  Doctor List </a>  
                                        </div>
                                    </div>
                                    <div class="panel-body">
                                        <form class="col-sm-12" action="/update/doctor" method="post"  enctype="multipart/form-data">
                                            <div class="col-sm-6 form-group">
                                                <label>First Name</label>
                                                <input type="text" class="form-control" name="docfname" value="${doctor.docfname}" placeholder="Enter firstname" required>
                                            </div>
                                            <div class="col-sm-6 form-group">
                                                <label>Last Name</label>
                                                <input type="text" class="form-control" name="doclname" value="${doctor.doclname}" placeholder="Enter Lastname" required>
                                            </div>
                                            <div class="col-sm-6 form-group">
                                                <label>Email</label>
                                                <input type="email" class="form-control" name="docemail" value="${doctor.docemail}" placeholder="Enter Email" required>
                                            </div>
                                            <div class="col-sm-6 form-group">
                                                <label>Password</label>
                                                <input type="password" class="form-control" name="docpassword" value="${doctor.docpassword}" placeholder="Enter password" required>
                                            </div>
                                            <div class="col-sm-6 form-group">
                                                <label>Designation</label>
                                                <input type="text" class="form-control" name="docdesignation" value="${doctor.docdesignation}" placeholder="Enter Designation" required>
                                            </div>

                                            <div class="col-sm-6 form-group">
                                                <label>Department</label>
                                                <select class="form-control" id="exampleSelect1" name="docdepartment" size="1">
                                                    <option  selected class="test">${doctor.docdepartment}</option>
                                                <c:forEach items="${departments}" var="department">
                                                    <option>${department.departmentname}</option>
                                               </c:forEach>
                                                </select>
                                            </div>

                                            <div class="col-sm-6 form-group">
                                                <label>Address</label>
                                                <input type="text" class="form-control" name="docaddress" value="${doctor.docaddress}" placeholder="Address" required>
                                            </div>
                                            <div class="col-sm-6 form-group">
                                                <label>Specialist</label>
                                                <input type="text" class="form-control" name="docspeciallist" value="${doctor.docspeciallist}" placeholder="Specialist" required>
                                            </div>
                                            <div class="col-sm-6 form-group">
                                                <label>Mobile</label>
                                                <input type="number" class="form-control" name="docmobile" value="${doctor.docmobile}" placeholder="Enter Mobile" required>
                                            </div>

                                            <div class="col-sm-6 form-group">
                                                <label >Picture upload</label>
                                                <input type="file" name="file" id="picture">
                                            </div>  
                                            <div class="col-sm-12 form-group">
                                                <label>Short Biography</label>
                                                <textarea id="some-textarea" class="form-control" name="docbio" rows="3" placeholder="Enter text ...">${doctor.docbio}</textarea>
                                            </div>        
                                            <div class="col-sm-6 form-group">
                                                <label>Date of Birth</label>
                                                <input class="datepicker form-control hasDatepicker" name="docbirth" type="text"  value="${doctor.docbirth}" placeholder="Date of Birth" id="date_of_birth">
                                            </div>
                                            <div class="col-sm-6 form-group">
                                                <label>Blood group</label>
                                                <select class="form-control" name="docbloodgroup" id="exampleSelect">
                                                <%
                                                    String bgroup=(String)request.getAttribute("docbloodgroup");
                                                   if(bgroup.equals("A+"))
                                                   {
                                                %>
                                                    <option>A+</option>
                                                    <%}else if(bgroup.equals("AB+")){ %>
                                                  
                                                    <option>AB+</option>
                                                     <%}else if(bgroup.equals("O+")){ %>
                                                    <option>O+</option>
                                                    <%}else if(bgroup.equals("AB-")){ %>
                                                    <option>AB-</option>
                                                    <%}else if(bgroup.equals("B+")){ %>
                                                    <option>B+</option>
                                                    <%}else if(bgroup.equals("A-")) {%>
                                                    <option>A-</option>
                                                    <%}else if(bgroup.equals("B-")){ %>
                                                    <option>B-</option>
                                                    <%}else if(bgroup.equals("O-")){ %>
                                                    <option>O-</option>
                                                    <%} %>
                                                </select>
                                            </div>

                                            <div class="col-sm-6 form-group">
                                             <label>Sex</label><br>
                                       
                                             <%
                                                String sex=(String)request.getAttribute("docsex");
                                                if(sex.equals("Male"))
                                                {
                                             %>
                                                 <label class="radio-inline"> <input type="radio" name="docsex" value="Male" checked="checked">Male</label> 
                                                 <label class="radio-inline"><input type="radio" name="docsex" value="Female" >Female</label>
                                              <%}else{ %>
                                                 <label class="radio-inline"> <input type="radio" name="docsex" value="Male" >Male</label> 
                                                 <label class="radio-inline"><input type="radio" name="docsex" value="Female" checked="checked" >Female</label>
                                                 <%} %>
                                             </div>
                                             <div class="col-sm-6 form-check">
                                              <label>Status</label><br>
                                              <%  
                                                      String status=(String)request.getAttribute("docstatus");
                                                      if(status.equals("1"))
                                                      {
                                              %>
                                              <label class="radio-inline"><input type="radio" name="docstatus" value="1" checked="checked">Active</label>
                                                <label class="radio-inline"><input type="radio" name="status" value="0" >Inctive</label> 
                                              <%}else{ %> 
                                                <label class="radio-inline"><input type="radio" name="docstatus" value="1" checked="checked">Active</label>
                                                <label class="radio-inline"><input type="radio" name="status" value="0" >Inctive</label>   
                                                  <%} %>
                                              </div> 
                                              <input type="hidden" name="docid" value="${doctor.docid}"/>
                                               <input type="hidden" name="pic"  value="${doctor.file}"/>
                                              <div class="col-sm-12 reset-button">
                                                 <a href="#" class="btn btn-warning">Reset</a>
                                               <!--   <a href="#" class="btn btn-success">Save</a> -->
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
