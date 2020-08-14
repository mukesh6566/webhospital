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
                <%
                   String utype=(String)session.getAttribute("utype");
                   if(utype.equals("Admin"))
                   {
                
                %>
               <%@include file="/resources/commons/main-sidebar.jsp" %>
               
               <%}else if(utype.equals("Doctor"))
               {
            	   
            	   %>
            	    <%@include file="/resources/commons/doctor/main-sidebar.jsp" %>
            	    <%} %>
                <!-- =============================================== -->
                <!-- Content Wrapper. Contains page content -->
                <div class="content-wrapper">
                    <!-- Content Header (Page header) -->
                      <section class="content">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="mailbox">
                                <div class="mailbox-header">
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <div class="inbox-avatar">
                                                <div class="inbox-avatar-text hidden-xs hidden-sm">
                                                    <div><i class="fa fa-mail-forward"></i> <small>Mailbox</small></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="inbox-toolbar btn-toolbar">
                                                <div class="btn-group">
                                                    <a href="compose.html" class="btn btn-success"><span class="fa fa-pencil-square-o"></span></a>
                                                </div>
                                                <div class="btn-group">
                                                    <a href="#" class="btn btn-default"><span class="fa fa-reply"></span></a>
                                                    <a href="#" class="hidden-xs hidden-sm btn btn-default"><span class="fa fa-reply-all"></span></a>
                                                    <a href="#" class="btn btn-default"><span class="fa fa-share"></span></a>
                                                </div>
                                                <div class="hidden-xs hidden-sm btn-group">
                                                    <button type="button" class="text-center btn btn-danger"><span class="fa fa-exclamation"></span></button>
                                                    <button type="button" class="btn btn-danger"><span class="fa fa-trash"></span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="mailbox-body">
                                    <div class="row m-0">
                                        <div class="col-sm-3 p-0 inbox-nav hidden-xs hidden-sm">
                                            <div class="mailbox-sideber">
                                                <div class="profile-usermenu">
                                                    <h6>Mailbox</h6>
                                                    <ul class="nav">
                                                        <li class="active"><a href="#"><i class="fa fa-inbox"></i>Inbox <small class="label pull-right bg-green">61</small></a></li>
                                                        <li><a href="#"><i class="fa fa-envelope-o"></i>Send Mail</a></li>
                                                        <li><a href="#"><i class="fa fa-star-o"></i>Starred</a></li>
                                                        <li><a href="#"><i class="fa fa-trash-o"></i>Tresh </a></li>
                                                        <li><a href="#"><i class="fa fa-paperclip"></i>Attachments</a></li>
                                                    </ul>
                                                    <h6>Other</h6>
                                                    <ul class="nav">
                                                        <li><a href="#"><i class="fa fa-exclamation"></i>Spam</a></li>
                                                        <li><a href="#"><i class="fa fa-file-text-o"></i>Draft</a></li>
                                                    </ul>
                                                    <h6>Tags</h6>
                                                    <ul class="nav">
                                                        <li><a href="#"><i class="fa fa-circle color-green"></i>#sometag</a></li>
                                                        <li><a href="#"><i class="fa fa-circle color-red"></i>#anothertag</a></li>
                                                        <li><a href="#"><i class="fa fa-circle color-yellow"></i>#anotheronetag</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-sm-12 col-md-9 p-0 inbox-mail">
                                            <div class="mailbox-content">
                                            
                                             <c:forEach items="${feedbacks}" var="feedback">
                                                <a href="mailDetails.html" class="inbox_item unread">
                                                    <div class="inbox-avatar"><img src="assets/dist/img/avatar.png" class="border-green hidden-xs hidden-sm" alt="">
                                                        <div class="inbox-avatar-text">
                                                            <div class="avatar-name">${feedback.name}</div>
                                                            <div><small><span class="bg-green badge avatar-text">SOME LABEL</span><span><strong>Early access: </strong><span>${feedback.message}</span></span></small></div>
                                                        </div>
                                                        <div class="inbox-date hidden-sm hidden-xs hidden-md">
                                                            <div class="date">Jan 17th</div>
                                                            <div><small>#1</small></div>
                                                        </div>
                                                    </div>
                                                </a>
                                          </c:forEach>
                                            
                                            </div>
                                        </div>
                                    </div>
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
