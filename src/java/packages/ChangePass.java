/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package packages;

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

@MultipartConfig
public class ChangePass extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();
            String email = (String) session.getAttribute("email");
            String role = (String) session.getAttribute("role");
            String password = request.getParameter("pass");
            String repassword = request.getParameter("repass");

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/intern?useSSL=false&allowPublicKeyRetrieval=true", "root", "root");

                Statement stmt = con.createStatement();

                ResultSet res = null;
                if (!password.equals(repassword)) {
                    out.print("notEqual");
                } 
                else {
                    if (role.equals("Student")) {
                        String q = "update student set Password=? where Email=?";
                        PreparedStatement ps = con.prepareStatement(q);
                        ps.setString(1, password);
                        ps.setString(2, email);
                        int x = ps.executeUpdate();
                        if (x > 0) {
                            out.print("done");
                        }
                    }
                    if (role.equals("Faculty")) {
                        String q = "update faculty set Password=? where Email=?";
                        PreparedStatement ps = con.prepareStatement(q);
                        ps.setString(1, password);
                        ps.setString(2, email);
                        int x = ps.executeUpdate();
                        if (x > 0) {
                            out.print("done");
                        }
                    }
                }

            } catch (Exception e) {
                e.printStackTrace();
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
