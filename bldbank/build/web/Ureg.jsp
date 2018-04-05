<%-- 
    Document   : Ureg
    Created on : Feb 22, 2016, 8:48:29 PM
    Author     : Oops
--%>

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
        <%
       try{
          String name = request.getParameter("dname");
          String gen = request.getParameter("gender");
          String  age = request.getParameter("age");
          String add = request.getParameter("location");
          String mob = request.getParameter("mobile");
          String email = request.getParameter("email");
          String bld = request.getParameter("bld");
          String pass = request.getParameter("password");
          
          MyDb db = new MyDb();
         Connection con = db.getCon();
         Statement stmt = con.createStatement();
         stmt.executeUpdate("insert into uregister(name,email,mobile,gender,age,bld,location,pass)values('"+name+"','"+email+"','"+mob+"','"+gen+"','"+bld+"','"+add+"','"+bld+"','"+pass+"') ");
         out.println("welocme : "+name);
          String redirectedPage = "/parentPage";
          response.sendRedirect("registrationsuccess.jsp");
      
       }catch(Exception e){
       out.println(e);
       }
        
        %>
    </body>
</html>
