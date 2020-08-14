            <!-- Left side column. contains the sidebar -->
          <aside class="main-sidebar">
                <!-- sidebar -->
                <div class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="image pull-left">
                            <img src="/resources/assets/dist/img/avatar5.png" class="img-circle" alt="User Image">
                        </div>
                        <div class="info">
                            <h4>Welcome</h4>
                            <p><%=session.getAttribute("name") %></p>
                        </div>
                    </div>
                   
                    <!-- sidebar menu -->
                    <ul class="sidebar-menu">
                        
                      <li class="active">
                            <a href="/admin/dashboard"><i class="fa fa-hospital-o"></i><span>Dashboard</span>
                            </a>
                        </li>
                        
           
                        
                         <li class="treeview">
                            <a href="#">
                                <i class="fa fa-list-alt"></i> <span>Doctor</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="/doctor/form">Add Doctor</a></li>
                                <li><a href="/doctor/list">Doctor list</a></li>
                                
                            </ul>
                        </li>
           
        
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-user"></i><span>Patient</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="/patient/form">Add patient</a></li>
                                <li><a href="/patient/list">patient list</a></li>
                            </ul>
                        </li>
               <li class="treeview">
                            <a href="#">
                                <i class="fa fa-sitemap"></i><span>Department</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="/department/form">Add Department</a></li>
                                <li><a href="/department/list">Department list</a></li>
                            </ul>
                        </li>
                        
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-list-alt"></i> <span>Schedule</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="/show/scheduledateform">Add schedule</a></li>
                                <li><a href="/scheduledate/list">schedule list</a></li>
                                
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-check-square-o"></i><span>Appionment</span>
                                <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="/appointment/list">Appionment list</a></li>
                                <li><a href="/appointment/accept/list">Accepted Appointment List</a></li>
                                <li><a href="/appointment/reject/list">Rejected Appointment List</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-credit-card-alt"></i><span>payment</span>
                                <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="/patient/show">Add payment to patient</a></li>
                                <li><a href="/payment/list">All payment list</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                              <i class="fa fa-file-text"></i><span>Report</span>
                              <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="/paymentreport/form">Patient wise Report</a></li>
                            <li><a href="/doctorpatient/report">Total Doctor Patient Report</a></li>
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="widgets.html">
                            <i class="fa fa-user-circle-o"></i><span>Human Resources</span>
                            <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="add-emp.html">Add Employee</a></li>
                            <li><a href="emp-list.html">employee list</a></li>
                            <li><a href="add-ns.html">Add Nurse</a></li>
                            <li><a href="ns-list.html">Nurse list</a></li>
                            <li><a href="add-ph.html">Add pharmacist</a></li>
                            <li><a href="ph-list.html">pharmacist list</a></li>
                            <li><a href="add-rep.html">Add Representative</a></li>
                            <li><a href="rep-list.html">Representative list</a></li>
                            
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-bed"></i><span>Bed Manager</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="/bed/form">Add Bed</a></li>
                            <li><a href="/bed/list">Bed list</a></li>
                        </ul>
                    </li>
    
                    
                    <li>
                        <a href="/feedback/list">
                         <i class="fa fa-envelope"></i><span> Mail</span>
                     </a>
                 </li>
                 
                   <li class="treeview">
                            <a href="/superadmin/logout">
                                <i class="glyphicon glyphicon-log-out"></i> <span>Logout</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            
                        </li>
                    
            </ul>
        </div> <!-- /.sidebar -->
    </aside>