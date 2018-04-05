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
            <li><a href="logout.jsp">LOGOUT</a></li>
            <li><a href="rselectp.html">ADD USERS</a></li>
            <li><a href="bloodbank.html">Search Teachers</a></li>
            <li><a href="viewhospital.jsp">ALL SCHOOLS</a></li>
            <li><a href="hospital.html">Search Students</a></li>
            <li><a href="aboutus.jsp">ABOUT NxTek</a></li>

               </ul>
            </div>
        </nav>
    </div>

<div id="tooplate_middle_subpage">
                             <center>    <h1>Registration From For New Doner</h1></center> 		
</div> <!-- end of middle -->
                                                    
<div style="width: 90%;
   
padding-top: 50px;
padding-bottom: 50px;
   
margin-top: -38px;
   
margin-left: 65px;
   
margin-right: -50px;
 
background: #330D0D;"  
    
>
 

       
                     
<div style=" width: 60%;
   
   
border-radius: 25px;
    
margin-left: 200px;
background-color: #150707;
color: #ffffff;
font-size: 23px;
   
padding: 20px;">
       

   
<form action="Ureg.jsp" method="post">
    <pre>
                          
          <label class="main">Donor Name: </label>    <input type="text" placeholder="uername" name="dname">

          <label class="main">Mobile : </label>       <input type="text" placeholder="mobile" name="mobile">
         
          <label class="main">Email: </label>         <input type="text" placeholder="Email" name="email">
          
          <label class="main">Gender:</label>         <select  style="width: 145px;" name="gender">
                                                    

                                            <option value="male">male</option>
                                                     
                                            <option value="female">female</option>
                                                     
                                            <option value="other">other</option>
                                                    
                                            </select> 
             
          <label class="main">Age: </label>           <input type="text" placeholder="age" name="age">
         
          <label class="main">Blood Group: </label>   <input type="text" placeholder="blood" name="bld">

          <label class="main">Location: </label>      <input type="text" placeholder="location" name="location">
      
          <label class="main">Password: </label>      <input type="password" placeholder="password" name="password">

                
                   <input type="submit" value="Register" style="background: #30122b;
  background-image: -webkit-linear-gradient(top, #30122b, #47340e);
  background-image: -moz-linear-gradient(top, #30122b, #47340e);
  background-image: -ms-linear-gradient(top, #30122b, #47340e);
  background-image: -o-linear-gradient(top, #30122b, #47340e);
  background-image: linear-gradient(to bottom, #30122b, #47340e);
  -webkit-border-radius: 28;
  -moz-border-radius: 28;
  border-radius: 28px;
  font-family: Arial;
  color: #ffffff;
  font-size: 27px;
  padding: 10px 20px 10px 20px;
  text-decoration: none;

">





      
 </form>

       
 </pre>
        
</div>   
        
</div>
   

<div id="tooplate_footer_wrapper">
	<div id="tooplate_footer">
    	<div class="col_w200 float_l">
        	<h4>Pages</h4>
            <ul class="tooplate_list">
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
            </ul>
        </div>
        <div class="col_w200 float_l">
        	<h4>DEVELOPED BY</h4>
            <ul class="tooplate_list"> 
                <li><a href="#"> javatoandroid </a></li>
           
                
            </ul>
        </div>
		<div class="col_w200 float_l">
        	<h4>Partners</h4>
            <ul class="tooplate_list">
	            <li><a href="https://www.facebook.com/SmileyWellFairGroupMultai/?ref=br_rs">"bla bla lba bla bla"</a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>                
                <li><a href="#"></a></li>
            </ul>
        </div>
        <div class="col_w200 float_r col_last">
        	<h4>Contact Us</h4>
            SGSITS COLLEGE <br />
            23 Sir M. Visvesvaraya Marg, <br />
             Indore 452003 (MP) India<br /><br />
            Mobile Number: +91 8888888888  <br />
            Email: <a href="https://accounts.google.com/ServiceLogin?sacu=1&continue=https%3A%2F%2Fwww.google.co.in%2Fwebhp%3Fsourceid%3Dchrome-instant%26ion%3D1%26espv%3D2%26es_th%3D1%26ie%3DUTF-8&hl=en#identifier">bloodbank@gmail.com</a>
        </div>
        
        <div class="cleaner"></div>
    </div>
</div>

<div id="tooplate_copyright_wrapper">
	<div id="tooplate_copyright">
	
    	Copyright © 2016 <a href="#">javatoandroid</a>
		
    </div>
</div>
</body>
    </body>
</html>
