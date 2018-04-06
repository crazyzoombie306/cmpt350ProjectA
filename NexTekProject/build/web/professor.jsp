<%-- 
    Document   : welcome
    Created on : Feb 23, 2016, 12:49:01 AM
    Author     : Oops
--%>

<%@page import="java.util.ArrayList"%>
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
                        <li><a href="rselectp.html">ADD Question</a></li>
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
                ResultSet rs = stmt.executeQuery("select Professor_fName,Professor_lName,Professor_email,School_Id,userType from professor where Id = '" + sessionUser + "' and userType = '" + sessionType + "'");
                rs.next();
                String fName = rs.getString("Professor_fName");
                String lName = rs.getString("Professor_lName");
                String email = rs.getString("Professor_email");
                String userType = rs.getString("userType");
                String School_Id = rs.getString("School_Id");
                ResultSet rs1 = stmt.executeQuery("select School_Name,School_Address from school where School_Id = '" + School_Id + "'");
                rs1.next();
                String School_name = rs1.getString("School_Name");
                ResultSet rs3 = stmt.executeQuery("select * from course where course.Id in (select Course_ID from professor_course where professor_course.Professor_Id='" + sessionUser + "')");
                //rs3.next();
                //String courseName = rs3.getString("Course_Name");
                ArrayList<String> courseList = new ArrayList<String>();
                while (rs3.next()) {
                    String courseName = rs3.getString("Course_Name") + "-" + rs3.getString("Course_ID");
                    //out.println(rs3.getString("Course_Name"));
                    courseList.add(courseName);
                }
        %>      

        <div class="jumbotron" style="background-color:#6baf56;">
            <div class="container-fluid">
                <label> User Information </label>
                <br/>
                <label>First Name        :</label> <%out.println(fName);%>
                <br/>
                <label>Last Name          :</label><%out.println(lName);%>
                <br/>
                <label>Email          :</label><%out.println(email);%>
                <br/>
                <label>User Type          :</label> <%out.println(userType);%>
                <br/>
                <label>School         :</label> <%out.println(School_name);%>
                <br/> 
                <label>Course List         : </label> <%for (int i=0; i<courseList.size();i++) {
                        
                        out.println(courseList.get(i));
                    }
%>
            </div>
        </div>
    </div><%

        

    } catch (Exception e) {
        out.println(e);
    }

%>

</body>
</html>
