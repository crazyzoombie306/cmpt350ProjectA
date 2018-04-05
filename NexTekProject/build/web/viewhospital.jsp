<%-- 
    Document   : viewhospital
    Created on : Feb 23, 2016, 3:11:10 AM
    Author     : Oops
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="MyPack.MyDb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <title>AllSchools</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<header class="schoosysten">
    <div class="container">
        <div class="jumbotron" style="background-color:#6baf56;">
            <h1>View All Schools</h1>
        </div>
    </div>
</header>
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

  <%
        try{
        String loc = request.getParameter("loc");
            String bld = request.getParameter("bld");
            
             MyDb db = new MyDb();
           Connection con =db.getCon();
           Statement stmt = con.createStatement();
           
           
           ResultSet rs = stmt.executeQuery("select hname,bld,address,email from hregister;"); 
          while( rs.next()){
           String name = rs.getString("hname");
           String bldg = rs.getString("bld");
           String add = rs.getString("address");
           String email = rs.getString("email");
           
           
        %>
           <div style="background-color: #330D0D; color: #ffffff; margin-top: 20px;">
               <div style="margin-left: 200px; padding-top: 20px; padding-bottom: 20px;">
               <label>NAME    :</label> <%out.println(name);%>
               <br/>
           <label>District :</label><%out.println(bldg);%>
              <br/>
          <label>ADDRESS      :</label> <%out.println(add);%>
           <br/>
         <label>Phone NUmber      :</label> <%out.println(email);%>
             </div>
           </div><%
           
          }
        
        }catch(Exception e){}
        
        
        %>
</div>
    </body>
</html>
