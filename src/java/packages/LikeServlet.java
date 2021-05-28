/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package packages;

import FacultyPackage.ConnectionProvider;
import Like.LikeDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
public class LikeServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter())
        {
            
            String operation = request.getParameter("operation");
            int pid = Integer.parseInt(request.getParameter("pid"));
            String uid = request.getParameter("uid");
            String user = request.getParameter("user");
            
            
//            out.println("Data from server "+uid+ " "+pid+" "+operation);
            if(operation.equals("like"))
            {
                LikeDao dao = new LikeDao(ConnectionProvider.getConnection());
                boolean flag = dao.insertLike(pid, uid, user);
                out.print(flag);
                
            }
            if(operation.equals("check")){
                LikeDao dao = new LikeDao(ConnectionProvider.getConnection());
                boolean flag = dao.isLikedByUser(pid, uid, user);
                if(flag){
                    
                    boolean f = dao.deleteLike(pid, uid, user);
                    if(f){
                        out.print("liked");
                    }
                    
                } else{
                    boolean f = dao.insertLike(pid, uid, user);
//                      out.print(flag);
                   out.print(f); 
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
