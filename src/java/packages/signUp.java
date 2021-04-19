/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package packages;

import StudentPackage.ConnectionProvider;
//import FacultyPackage.ConnectionProvider;
import StudentPackage.Student;
import StudentPackage.StudentDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
@MultipartConfig
@WebServlet(name = "signUp", urlPatterns = {"/signUp"})
public class signUp extends HttpServlet {

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
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        String firstName = request.getParameter("fname");
        String lastName = request.getParameter("lname");
        String SID = request.getParameter("sid");
        String email = request.getParameter("email");
        String password = request.getParameter("pass");
        String gender = request.getParameter("inlineRadioOptions");
        String branch = request.getParameter("branch");
        String DOB = request.getParameter("dob");
        String year = "", branchID;

        if (branch.equals("CSE")) {
            branchID = "1";
        } else {
            branchID = "2";
        }

        String temp = SID.substring(0, 2);
        if (temp.equals("17")) {
            year = "4";
        } else if (temp.equals("18")) {
            year = "3";
        } else if (temp.equals("19")) {
            year = "2";
        } else if (temp.equals("20")) {
            year = "1";
        }
        
        Student student = new Student(SID, firstName,lastName,email,password,gender,branchID, DOB, year);
        StudentDao dao = new StudentDao(ConnectionProvider.getConnection());
        
        if(dao.saveStudent(student))
        {
            pw.println("done"); 
        }
        else{
            pw.print("error");
        }

//        try {
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/intern?useSSL=false&allowPublicKeyRetrieval=true", "root", "root");
//
//            Statement stmt = con.createStatement();
//            String query = "insert into student(SID, FirstName, LastName, Email, Password, Gender, BranchID, Dob, Year) values('" + SID + "','" + firstName + "','" + lastName + "','"
//                    + email + "','" + password + "','" + gender + "','" + branchID + "','" + DOB + "','" + year + "')";
//            int res = stmt.executeUpdate(query);
//
//            if (res > 0) {
////                response.sendRedirect("SignUpIn.html");
//                    pw.print("done (from the servlet)");
//            }
//            else
//            {
//                pw.print("error (from the servlet)");
//            }
//        } catch (SQLException se) {
//            pw.print(se);
//        } catch (ClassNotFoundException ce) {
//            pw.print(ce);
//        }
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
