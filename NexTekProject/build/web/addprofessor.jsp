<%-- 
    Document   : uregister
    Created on : Feb 22, 2016, 7:50:56 PM
    Author     : Oops
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
    <title>Welcome</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
    <body>
        <div>
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand">SCHOOL SYSTEM</a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">LOGGED IN</a></li>
                        <li><a href="addprofessor.jsp">Add Professor/Reviewers</a></li>
                        <li><a href="bloodbank.html">Search Professors</a></li>
                        <li><a href="createexam.jsp">Create Exam</a></li>
                        <li><a href="aboutus.jsp">Add Questions</a></li>

                        <li><a href="aboutus.jsp">ABOUT NexTek</a></li>
                        
                        <li><a href="logout.jsp">LOGOUT</a></li>

                    </ul>
                </div>
            </nav>
        </div>

<div class="container-fluid">
        <p class="h4 text-center mb-4">Add User</p>
</div> <!-- end of middle -->
<div class="container">

    <form action="professor.jsp" method="post">
            <div class="text-left mt-4" class="form-control">        
            <i class="fa fa-envelope prefix grey-text"></i>
                          
          <label class="main">First Name: </label>    <input type="text" placeholder="Professor's First Name" name="Professor_fName" class="form-control">

          <label class="main">Last Name: </label>       <input type="text" placeholder="mobile" name="Professor_lName" class="form-control"> 
         
          <label class="main">Email: </label>         <input type="text" placeholder="Email" name="Professor_email" class="form-control">
                                                              
          </br>
          <select>
                                            <option value="Professor">Professor</option>
                                                     
                                            <option value="Reviewer">Reviewer</option>
                                                    
                                            </select> 
          </br>
             
          <label class="main">School: </label>           <input type="text" placeholder="School Name" name="School_Id" class="form-control">
         
          <label class="main">Password: </label>      <input type="password" placeholder="password" name="Password" class="form-control">
                    </br>

                   <input type="submit" value="Register" class="btn btn-warning btn-block">
            </div>
    </form>
   
</body>
</html>
