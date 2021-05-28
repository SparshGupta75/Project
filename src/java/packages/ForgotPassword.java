/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package packages;

import forgotPassword.sendEmail;
import forgotPassword.userEmail;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
@MultipartConfig
public class ForgotPassword extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String email = request.getParameter("email");
            String role = request.getParameter("role");
            
            sendEmail sm = new sendEmail();
            String code = sm.getRandom();
            
            userEmail user = new userEmail(email, code);
            boolean test = sm.sendemail(user);
            
            if(test)
            {
                HttpSession session = request.getSession();
                session.setAttribute("authcode", user);
                session.setAttribute("email", email);
                session.setAttribute("role", role);
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/intern?useSSL=false&allowPublicKeyRetrieval=true", "root", "root");
                Statement stmt = con.createStatement();
                ResultSet res=null;
                
                if (role.equals("Student")) {
                        String q = "select * from student where Email=?";
                        PreparedStatement ps = con.prepareStatement(q);
                        ps.setString(1, email);
                        res = ps.executeQuery();
                        if (res.next()) {
                            out.print("yes");
//                            response.sendRedirect("verify.jsp");
                        }
                        else{
                            out.print("No");
                        }
                    }
                if (role.equals("Faculty")) {
                        String q = "select * from faculty where Email=?";
                        PreparedStatement ps = con.prepareStatement(q);
                        ps.setString(1, email);
                        res = ps.executeQuery();
                        if (res.next()) {
                            out.print("yes");
//                            response.sendRedirect("verify.jsp");
                        }
                        else{
                            out.print("No");
                        }
                    }
                
                
                    
                } catch (Exception e) {
                    e.printStackTrace();
                }
                
            }
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
