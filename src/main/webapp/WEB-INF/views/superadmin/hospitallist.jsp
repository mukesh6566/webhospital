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
    <title>Thememinister Health Admin panel</title>

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
         <link href="/resources/advancecs/jquery.dataTables.min.css" rel="stylesheet">
         <link href="/resources/advancecs/buttons.dataTables.min.css" rel="stylesheet">
  

    </head>
    <body class="hold-transition sidebar-mini">        
        <!-- Site wrapper -->
        <div class="wrapper">
             <%@include file="/resources/commons/superadmin/main-header.jsp" %>
                <!-- =============================================== -->
                <!-- Left side column. contains the sidebar -->
               <%@include file="/resources/commons/superadmin/main-sidebar.jsp" %>
                <!-- =============================================== -->
                <!-- Content Wrapper. Contains page content -->
                <div class="content-wrapper">
          <!-- Content Header (Page header) -->
                    <section class="content-header">
                        <div class="header-icon">
                            <i class="pe-7s-box1"></i>
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
                            <h1>Hospital</h1>
                            <small>Hospital list</small>
                            <ol class="breadcrumb hidden-xs">
                                <li><a href="index-2.html"><i class="pe-7s-home"></i> Home</a></li>
                                <li class="active">Dashboard</li>
                            </ol>
                        </div>
                    </section>
                    
                                        <!-- Main content -->
                    <section class="content">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="panel panel-bd lobidrag">
                                    <div class="panel-heading">
                                        <div class="btn-group"> 
                                            <a class="btn btn-success" href="/hospital/form"> <i class="fa fa-plus"></i> Add Hospital
                                            </a>  
                                        </div>        
                                    </div>
                                    <div class="panel-body">
                          <!--               <div class="row">
                                            <div class="panel-header">
                                                <div class="col-sm-4 col-xs-12">
                                                    <div class="dataTables_length">
                                                        <label>Display 
                                                            <select name="example_length">
                                                                <option value="10">10</option>
                                                                <option value="25">25</option>
                                                                <option value="50">50</option>
                                                                <option value="100">100</option>
                                                            </select> records per page</label>
                                                        </div>
                                                    </div>
                                           
                                       
                                              </div>

                                          </div> -->
                                          <div class="table-responsive">
                                            <table id="example" class="table table-bordered table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>Serial No</th>
                                                        <th>Logo</th>
                                                        <th>Hospital Name</th>
                                                        <th>Hospital Location</th>
                                                        <th>Hospital Estd. Date</th>
                                                        <th>Hospital Phone</th>
                                                        <th>User Name</th>
                                                        <th>Password</th>
                                                        <th>Update</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach items="${hospitals}" var="hospital">
                                                <tr >  
                                                     <td>
                                                         <input type="radio" name="radioGroup">
                                                         <label>${hospital.hospitalid}</label>   
                                                     </td>
                                                     <td><img src="/resources/logo/${hospital.hospitalpic}" class="img-circle" alt="User Image" height="50" width="50"></td>
                                                     <td>${hospital.hospitalname}</td>
                                                     <td>${hospital.hospitallocation}</td>
                                                     <td>${hospital.date}</td>
                                                    <!--  <td><a href="cdn-cgi/l/email-protection.html" class="__cf_email__" data-cfemail="670a121513061d27130f020a020a0e090e141302154904080a">[email&#160;protected]</a></td> -->
                                                     <td>${hospital.hospitalphone}</td>
                                                     <td>${hospital.hospitalusername}</td>
                                                     <td>${hospital.hospass}</td> 
                                                     
                                                     <td>
                                                        <a href="/doctor/list/${hospital.hospitalid}" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i>
                                                        </a>
                                                        <a href="/hospital/delete/${hospital.hospitalid}" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i>
                                                        </a>
                                                    </td>
                                                </tr>
                                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    
                </div>
            </div>
            
        </div>
        
    </div>
</section> <!-- /.content -->

</div> <!-- /.content-wrapper -->
           <%@include file="/resources/commons/superadmin/main-footer.jsp" %>
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
	            'copy', 'csv', 'excel', 'pdf', 'print'
	        ]
	    } );
	} );
 
 </script>

    </body>
    
<!-- Mirrored from healthadmin.thememinister.com/forms_basic.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 14 Mar 2018 12:18:06 GMT -->
</html>
