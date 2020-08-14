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
                            <a href="/doctor/dashboard"><i class="fa fa-hospital-o"></i><span>Dashboard</span>
                            </a>
                        </li>
                        
                      
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-list-alt"></i> <span>Schedule</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                            
                                <li><a href="/scheduledate/list">schedule list</a></li>
                                
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-check-square-o"></i><span>Appointment</span>
                                <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="/appointment/listbydocname">Appointment list</a></li>
                                <li><a href="/appointment/accept/listbydocname">Accepted Appointment List</a></li>
                                <li><a href="/appointment/reject/listbydocname">Rejected Appointment List</a></li>
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
                         
                            <li><a href="/doctor/report">Doctor wise Report</a></li>
                            <li><a href="/doctorpatient/report">Total Doctor Patient Report</a></li>
                        </ul>
                    </li>
     
              
         
                    <li>
                        <a href="/feedback/list">
                         <i class="fa fa-envelope"></i><span> Mail</span>
                     </a>
                 </li>
                 
                     <li class="treeview">
                            <a href="/superadmin/logout">
                                <i class="glyphicon glyphicon-log-out"></i> <span>Log Out</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                         
                      </li>
                 
 
                    
            </ul>
        </div> <!-- /.sidebar -->
    </aside>