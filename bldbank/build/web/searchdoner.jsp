<%-- 
    Document   : searchdoner
    Created on : Feb 23, 2016, 3:08:19 AM
    Author     : Oops
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="MyPack.MyDb"%>
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
    		
</div> <!-- end of middle -->



        <%
        try{
        String loc = request.getParameter("loc");
            String bld = request.getParameter("bld");
            
             MyDb db = new MyDb();
           Connection con =db.getCon();
           Statement stmt = con.createStatement();
           
           
           ResultSet rs = stmt.executeQuery("select bname,bld,address,email from bregister where address = '"+loc+"' and bld = '"+bld+"'"); 
           while(rs.next()){
           String name = rs.getString("bname");
           String bldg = rs.getString("bld");
           String add = rs.getString("address");
           String email = rs.getString("email");
           
           %>
           <div style="background-color: #330D0D; color: #ffffff; margin-top: 20px;">
               <div style="margin-left: 200px; padding-top: 20px; padding-bottom: 20px;">
               <label>NAME    :</label> <%out.println(name);%>
               <br/>
           <label>Blood Group :</label><%out.println(bldg);%>
              <br/>
          <label>ADDRESS      :</label> <%out.println(add);%>
           <br/>
         <label>EMAIL      :</label> <%out.println(email);%>
             </div>
           </div><%
           }
        
        }catch(Exception e){}
        
        
        %>
        
    
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
                <li><a href="#"> javatoandroid.com </a></li>
              
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
            Mobile Number: +91 888888888  <br />
            Email: <a href="https://accounts.google.com/ServiceLogin?sacu=1&continue=https%3A%2F%2Fwww.google.co.in%2Fwebhp%3Fsourceid%3Dchrome-instant%26ion%3D1%26espv%3D2%26es_th%3D1%26ie%3DUTF-8&hl=en#identifier">bloodbank@gmail.com</a>
        </div>
        
        <div class="cleaner"></div>
    </div>
</div>

<div id="tooplate_copyright_wrapper">
	<div id="tooplate_copyright">
	
    	Copyright � 2016 <a href="#">javatoandroid</a>
		
    </div>
</div>
    </body>
</html>
