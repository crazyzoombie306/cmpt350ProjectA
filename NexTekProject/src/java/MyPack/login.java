/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MyPack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Oops
 */
public class login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String userId = request.getParameter("userId");

            String userType = request.getParameter("userType");

            String pass = request.getParameter("pass");

            MyDb db = new MyDb();
            Connection con = db.getCon();
            Statement stmt = con.createStatement();
            out.println("Invalid Password");
            if (userType.equals("Admin")) {
                System.out.println("Looking For Admin User");
                ResultSet rs = stmt.executeQuery("select userId,userName,userType,userPass from adminuser where userId = '" + userId + "' and userPass = '" + pass + "'");
                
                rs.next();
                String n1 = rs.getString("userId");
                String n2 = rs.getString("userType");
                HttpSession session = request.getSession();
                session.setAttribute("userId", n1);
                session.setAttribute("userType", n2);
                String redirectedPage = "/parentPage";
                response.sendRedirect("admin.jsp");
            }

            if (userType.equals("Professor")) {
                System.out.println("Looking For Professor");

                ResultSet rs1 = stmt.executeQuery("select Id, Professor_fName,Professor_email,Professor_PWD,userType from professor where Professor_email = '" + userId + "' and Professor_PWD = '" + pass + "'");
                rs1.next();
                String n3 = rs1.getString("Id");
                String n4 = rs1.getString("userType");
                HttpSession session = request.getSession();
                session.setAttribute("userId", n3);
                session.setAttribute("userType", n4);
                response.sendRedirect("professor.jsp");
            }
//
//            if (userType.equals("reviewer")) {
//                ResultSet rs2 = stmt.executeQuery("select Professor_fName,Professor_email,Professor_PWD from professor where Professor_email = '" + userId + "' and Professor_PWD = '" + pass + "' and userType = '" + userType + "'");
//                rs2.next();
//
//                response.sendRedirect("welcome.jsp");
//            }



        } catch (SQLException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
