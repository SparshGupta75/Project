/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package packages;

import FacultyPackage.ConnectionProvider;
import FacultyPackage.User;
import FacultyPackage.UserDao;
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
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
@MultipartConfig
@WebServlet(name = "AddFaculty", urlPatterns = {"/AddFaculty"})
public class AddFaculty extends HttpServlet {

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
//        
        String firstName = request.getParameter("fname");
        String lastName = request.getParameter("lname");
        String FID = request.getParameter("fid");
        String email = request.getParameter("email");
        String password = request.getParameter("pass");
        String gender = request.getParameter("inlineRadioOptions");
        String branch = request.getParameter("branch");
        String DOB = request.getParameter("dob");
        String branchID;
        
        if(branch.equals("CSE"))
            branchID="1";
        else
            branchID="2";
        
        User user = new User(FID,firstName,lastName, email, password, gender, branchID, DOB);
        UserDao dao = new UserDao(ConnectionProvider.getConnection());
        if(dao.saveUser(user))
        {
            pw.println("done");
        }
        else
        {
            
            pw.print("error");
        }
       
//        
////        String temp = SID.substring(0, 2);
////        if(temp.equals("17"))
////            year="4";
////        else if(temp.equals("18"))
////            year="3";
////        else if(temp.equals("19"))
////            year="2";
////        else if(temp.equals("20"))
////            year="1";
//        
//        try
//        {
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/intern?useSSL=false&allowPublicKeyRetrieval=true", "root", "root");
//            
//            Statement stmt = con.createStatement();
//            String query = "insert into faculty(FID, FirstName, LastName, Email, Password, Gender, BranchID, Dob) values('"+FID+"','"+firstName+"','"+lastName+"','"
//                    +email+"','"+password+"','"+gender+"','"+branchID+"','"+DOB+"')";
//            int res = stmt.executeUpdate(query);
//            if(res>0)
//            {
//                pw.println("done");
//            }
//            else    
//            {
//              pw.println("error");  
//            }
//            
////            if(res>0)
////            response.sendRedirect("SignUpIn.html");
//        }
//        catch(SQLException se)
//        {
//            pw.print(se);
//        }
//        catch(ClassNotFoundException ce)
//        {
//            pw.print(ce);
//        }










//        String FirstName = request.getParameter("fname");
//        pw.print("FirstName");
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
