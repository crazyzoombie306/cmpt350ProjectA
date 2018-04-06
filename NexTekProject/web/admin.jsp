<%-- 
    Document   : admin
    Created on : Apr 5, 2018, 9:12:22 PM
    Author     : priom
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="MyPack.MyDb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Professor</title>
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
                        <li><a href="rselectp.html">ADD USERS</a></li>
                        <li><a href="bloodbank.html">Search Teachers</a></li>
                        <li><a href="viewhospital.jsp">ALL SCHOOLS</a></li>
                        <li><a href="hospital.html">Search Students</a></li>
                        <li><a href="createexam.jsp">Create Exam</a></li>
                        <li><a href="aboutus.jsp">ABOUT NxTek</a></li>
                        <li><a href="logout.jsp">LOGOUT</a></li>

                    </ul>
                </div>
            </nav>
        </div>



        <!-- end of middle -->

        <%
            try {

                String sessionUser = (String) session.getAttribute("userId");
                String sessionType = (String) session.getAttribute("userType");

                MyDb db = new MyDb();
                Connection con = db.getCon();
                Statement stmt = con.createStatement();
                //ResultSet rs = stmt.executeQuery("select name,email,mobile,gender,age,bld,location from uregister where uid = '"+n+"'");
                ResultSet rs = stmt.executeQuery("select userId,userName,userType from adminuser where userId = '" + sessionUser + "'and userType = '" + sessionType + "'");
                rs.next();
                String userID = rs.getString("userId");
                String userName = rs.getString("userName");
                String userType = rs.getString("userType");

        %>

        <div class="jumbotron" style="background-color:#6baf56;">
            <div class="container-fluid">
                <br/>
                 <label> User Information </label>
                 <br/>
                <label>User ID        : </label> <%out.println(userID);%>
                <br/>
                <label>User Name          : </label><%out.println(userName);%>
                <br/>
                <label>User Type         : </label> <%out.println(userType);%>
            </div>
        </div>
    </div><%

        } catch (Exception e) {
            
            out.println(e);
        }

    %>

</body>
</html>

