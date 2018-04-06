package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import MyPack.MyDb;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Amin</title>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>\n");
      out.write("        <script src=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div>\n");
      out.write("            <nav class=\"navbar navbar-inverse\">\n");
      out.write("                <div class=\"container-fluid\">\n");
      out.write("                    <div class=\"navbar-header\">\n");
      out.write("                        <a class=\"navbar-brand\">SCHOOL SYSTEM</a>\n");
      out.write("                    </div>\n");
      out.write("                    <ul class=\"nav navbar-nav\">\n");
      out.write("                        <li class=\"active\"><a href=\"#\">LOGGED IN</a></li>\n");
      out.write("                        <li><a href=\"addprofessor.jsp\">Add Professor/Reviewers</a></li>\n");
      out.write("                        <li><a href=\"bloodbank.html\">Search Professors</a></li>\n");
      out.write("                        <li><a href=\"createexam.jsp\">Create Exam</a></li>\n");
      out.write("                        <li><a href=\"aboutus.jsp\">Add Questions</a></li>\n");
      out.write("\n");
      out.write("                        <li><a href=\"aboutus.jsp\">ABOUT NexTek</a></li>\n");
      out.write("                        \n");
      out.write("                        <li><a href=\"logout.jsp\">LOGOUT</a></li>\n");
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- end of middle -->\n");
      out.write("\n");
      out.write("        ");

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

        
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"jumbotron\" style=\"background-color:#6baf56;\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <br/>\n");
      out.write("                 <label> User Information </label>\n");
      out.write("                 <br/>\n");
      out.write("                <label>User ID        : </label> ");
out.println(userID);
      out.write("\n");
      out.write("                <br/>\n");
      out.write("                <label>User Name          : </label>");
out.println(userName);
      out.write("\n");
      out.write("                <br/>\n");
      out.write("                <label>User Type         : </label> ");
out.println(userType);
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>");


        } catch (Exception e) {
            
            out.println(e);
        }

    
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
