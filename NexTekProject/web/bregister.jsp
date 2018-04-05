<%-- 
    Document   : bregister
    Created on : Feb 22, 2016, 7:56:57 PM
    Author     : Oops
--%>
<%-- 
    Document   : rhospital
    Created on : Feb 22, 2016, 7:54:59 PM
    Author     : Oops
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                             <center>    <h1>Registration Form For hospital</h1></center> 		
</div> <!-- end of middle -->
                                                    
        <div class="regDiv"style=" width: 60%;
   
   
border-radius: 25px;
    
margin-left: 200px;
background-color: #150707;
color: #ffffff;
font-size: 23px;
   
padding: 20px;">
         <pre>
        <form action="bregister" method="post">
            
        <label class="main">Blood Bank Name : </label>   <input type="text" placeholder="name" name="name">
                 
        <label class="main">Blood Group : </label>       <input type="text" placeholder="blood group" name="bld">
            
        <label class="main">Address: </label>            <input type="text" placeholder="address" name="add">

        <label class="main">Eamil: </label>              <input type="text" placeholder="email" name="email">
           
        <label class="main">Password: </label>           <input type="password" placeholder="password" name="pass">

                        
                 <input type="submit" value="Register"style="background: #30122b;
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
  text-decoration: none;"/>

       </form>

        </pre>
            
        </div>
        <div class="rightDiv">
                
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
                <li><a href="#"> VIPLAVI BHISEKAR </a></li>
                <li><a href="#">SHRUTI SHARMA</a></li>
                <li><a href="#">SHUBHI JAIN</a></li>
                <li><a href="#">RAKHI SHARMA</a></li>
                
            </ul>
        </div>
		<div class="col_w200 float_l">
        	<h4>Partners</h4>
            <ul class="tooplate_list">
	            <li><a href="https://www.facebook.com/SmileyWellFairGroupMultai/?ref=br_rs">"SMILEY WELL FAIR GROUP MULTAI"</a></li>
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
            Mobile Number: +91 9926824101  <br />
            Email: <a href="https://accounts.google.com/ServiceLogin?sacu=1&continue=https%3A%2F%2Fwww.google.co.in%2Fwebhp%3Fsourceid%3Dchrome-instant%26ion%3D1%26espv%3D2%26es_th%3D1%26ie%3DUTF-8&hl=en#identifier">srsvbloodbank@gmail.com</a>
        </div>
        
        <div class="cleaner"></div>
    </div>
</div>

<div id="tooplate_copyright_wrapper">
	<div id="tooplate_copyright">
	
    	Copyright © 2016 <a href="#">SRSV</a>
		
    </div>
</div>
</body>
    </body>
</html>
