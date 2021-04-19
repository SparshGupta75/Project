/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package packages;

import FacultyPackage.ConnectionProvider;
import FacultyPackage.Message;
import FacultyPackage.User;
import FacultyPackage.UserDao;
import StudentPackage.Student;
import StudentPackage.StudentDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
public class signIn extends HttpServlet {

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

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String r = request.getParameter("role");
        
        HttpSession session = request.getSession(true);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/intern?useSSL=false&allowPublicKeyRetrieval=true", "root", "root");

            Statement stmt = con.createStatement();

            ResultSet res = null;
            if (r.equals("Student")) 
            {
//                String query = "select * from student where Email='"+email+"'and Password='"+password+"'";
//                res = stmt.executeQuery(query);
//                
//                if(!res.next())
//                {
//                    Message msg = new Message("Invalid Details. Try using correct credentials for student role.", "error", "alert-danger");
//                    response.sendRedirect("SignUpIn.jsp");
//                    HttpSession s  = request.getSession();
//                    s.setAttribute("msg", msg);
//                }
//               
//                if (res.next() && r.equals("Student")) 
//                {
//                    String name = res.getString("FirstName");
//                    String sid = res.getString("SID");
//                    session.setAttribute("name",name);
//                    session.setAttribute("sid",sid);
//                    RequestDispatcher rd = request.getRequestDispatcher("StudentHome.jsp");
//                    rd.forward(request, response);
//                    
//                    //response.sendRedirect("welcomePage.jsp");
//                }
                
                StudentDao dao = new StudentDao(ConnectionProvider.getConnection());
                Student student = dao.getUserByEmailAndPassword(email, password);
                if(student==null)
                {
                    Message msg = new Message("Invalid Details. Try using correct credentials for student role.", "error", "alert-danger");
                    response.sendRedirect("SignUpIn.jsp");
                    HttpSession s  = request.getSession();
                    s.setAttribute("msg", msg);
                    
                }
                else
                {
                    HttpSession s =request.getSession();
                    s.setAttribute("currentUser", student);
                    response.sendRedirect("StudentHome.jsp");
                }
                
//                 while(res.next())
//                    {
//                        
//                        pw.print(name);
//                        pw.print(sid);
//                    }
            }
            
            if(r.equals("Admin"))
            {
                if(email.equals("admin@gmail.com") && password.equals("admin123"))
                {
//                    response.sendRedirect("AdminHome.jsp");
                    session.setAttribute("name", "Admin");
                    session.setAttribute("email", "admin@gmail.com");
                    RequestDispatcher rd = request.getRequestDispatcher("AdminHome.jsp");
                    rd.forward(request, response);   
                }
            }
            
            if(r.equals("Faculty"))
            {
                UserDao dao = new UserDao(ConnectionProvider.getConnection());
                User u = dao.getUserByEmailAndPassword(email, password);
                if(u==null)
                {
                    Message msg = new Message("Invalid Details. Try using correct credentials for faculty role.", "error", "alert-danger");
                    response.sendRedirect("SignUpIn.jsp");
                    HttpSession s  = request.getSession();
                    s.setAttribute("msg", msg);
                    
                }
                else
                {
                    HttpSession s =request.getSession();
                    s.setAttribute("currentUser", u);
                    response.sendRedirect("FacultyHome.jsp");
                }
                
            }

        } catch (SQLException se) {
            pw.print(se);
        } catch (ClassNotFoundException ce) {
            pw.print(ce);
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
