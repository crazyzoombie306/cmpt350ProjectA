<%-- 
    Document   : welcome
    Created on : Feb 23, 2016, 12:49:01 AM
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



 <!-- end of middle -->

<%
try{

String n =(String)session.getAttribute("uname");

  MyDb db = new MyDb();
         Connection con = db.getCon();
         Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select name,email,mobile,gender,age,bld,location from uregister where uid = '"+n+"'");
  rs.next();
  String name = rs.getString("name");
  String email = rs.getString("email");
  String mobile= rs.getString("mobile");
  String gender = rs.getString("gender");
  String age = rs.getString("age");
  String bld = rs.getString("bld");
  String location = rs.getString("location");

     %>

        <div class="jumbotron" style="background-color:#6baf56;">
        <div class="container-fluid">
                <br/>
               <label>First Name        :</label> <%out.println(name);%>
               <br/>
           <label>Last Name          :</label><%out.println(email);%>
              <br/>
          <label>Gender          :</label> <%out.println(gender);%>
           <br/>
         <label>Class              :</label> <%out.println(age);%>
          <br/>
         <label>Professor      :</label> <%out.println(bld);%>
          <br/>
         <label>School         :</label> <%out.println(location);%>
             </div>
        </div>
           </div><%



}catch(Exception e){}

%>

    </body>
</html>
