<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
      <script defer src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>



    <title>Log In|Hospital Management System</title>
      
      <style>
          body{
              background-image: url(/resources/img/doctor.jpg);
          }
      
          .navbar-default{
              background-color: rgb(8, 111, 202);
          }
          
          a:hover{
              color: aliceblue;
          }
          
         a:visited{
              color: aliceblue;
          }
          .navbar-default .navbar-brand{
              color: aliceblue;
          }
          
          .navbar-default .navbar-nav>li>a {
              color: aliceblue;
          }
          
          .navbar-default .navbar-nav>li>a:hover{
              color: aliceblue;
          }
           .navbar-default .navbar-nav>li>a:visited{
              color: aliceblue;
          }
        /*  
          .panel-default>.panel-heading{
              background-color: rgb(8, 111, 202);
              color: aliceblue;
          }*/
          
          .col-lg-6{
              float: right;
          }
          
      </style>
      
  </head>
  <body>
      
      <nav class="navbar navbar-default">
             <div class="navbar-header">
              <a class="navbar-brand" href="#">HOSPITAL MANAGEMENT SYSTEM</a>
            </div>
          <div class="container-fluid">
             
        <ul class="nav navbar-nav navbar-right">
         
          
          <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Select Language <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="#">English</a></li>
              <li><a href="#">Nepali</a></li>
            </ul>
          </li>

        </ul>
        
              
      </div>
    </nav>
  
      
      
      <div class="container">
        <div class="col-lg-6">
          <div class="panel panel-info">
          
              <div class="panel-heading">Log In
              <p style="color: red;"><% String msg=request.getParameter("msg");///In case of send redirection
              if(msg==null)
              {
            	  
              }
              else
              {
            	  out.print(msg);
              }
              
              %> 
              </p>
              </div>
          
                  <div class="panel-body">
                      <div class="form-group ">
                             <form action="/superadmin/login" method="post">
                          <select class="form-control" name="user" id="sel1">
                                <option>Super Admin</option>
                                <option>Admin</option>
                                <option>Doctor</option>
                                <option>Nurse</option>
                                <option>Patient</option>
                              </select><br>
                          
                          
                          
                          
                              <div class="input-group">
                               <div class="input-group-addon">
                                <i class="fas fa-envelope"></i> 
                               </div>
                               <input class="form-control" id="email" name="email" type="email" placeholder="Email" required="required"/>
                              </div><br>
                             
                           <div class="input-group">
                               <div class="input-group-addon">
                                <i class="fas fa-unlock"></i> 
                               </div>
                               <input class="form-control" id="pass" name="pass" type="password" placeholder="Password" required="required"/>
                              </div><br>
                          
                       
                                   <button type="submit" class="btn btn-primary btn-lg btn-block">Log In</button><br>
                         <a href="#" style="color:black; text-decoration:none">Forgot Password?</a>
                            
                          
                          </form>
                          
                          
                          
                      </div>
                             
                      </div>
                      
                      
                      
                      
                      
                      

              </div><!--panel-body closing-->
          </div>
        </div>
      

 
      
      
      
      
      
      
      
      
      
      
      

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>