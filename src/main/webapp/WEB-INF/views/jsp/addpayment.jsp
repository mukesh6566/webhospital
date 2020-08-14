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
         <link href="/resources/advancecs/jquery.dataTables.min.css" rel="stylesheet">
         <link href="/resources/advancecs/buttons.dataTables.min.css" rel="stylesheet">
  

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
                            <h1>Payment</h1>
                            <small>Payment list</small>
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
                                           <h3>Add Payment To Patient</h3> 
                                        </div>        
                                    </div>
                                    <div class="panel-body">
              
                                          <div class="table-responsive">
                                            <table id="example" class="table table-bordered table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>Serial No</th>
                                                        <th>Patient Id No</th>
                                                        <th>First Name</th>
                                                        <th>last Name</th>
                                                        <th>Mobile No</th>
                                                        <th>Dob</th>
                                                        <th>Blood Group</th>
                                                        <th>Address</th>
                                                        <th>sex</th>
                                                        <th>Add New</th>
                                                   
                                                       <th>Update</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach items="${patients}" var="patient">
                                                <tr >  
                                                     <td>
                                                         <input type="radio" name="radioGroup">
                                                         <label>${patient.id}</label>   
                                                     </td>

                                                     <td>${patient.patid}</td>
                                                     <td>${patient.patfname}</td>
                                                     <td>${patient.patlname}</td>
                                                     <td>${patient.patmobile}</td>
                                                     <td>${patient.patdob}</td>
                                                     <td>${patient.patbloodgroup}</td>
                                                     <td>${patient.pataddress}</td>
                                                     <td>${patient.patsex}</td>
                                                     <td>
                                                      <a href="/payment/form/${patient.patid}" type="button" class="btn btn-primary">
                                                        Add New
                                                        </a>
                                                     </td>
                                                     <td>
                                                        <a href="/doctor/list/${patient.id}" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i>
                                                        </a>
                                                        <a href="/doctor/delete/${patient.id}" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i>
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
