/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Baquiran
 */
@MultipartConfig
@WebServlet(urlPatterns = {"/Quiz"})
public class Upload extends HttpServlet {

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
        try {
            response.setContentType("text/html;charset=UTF-8");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/weblabg3?user=root&password=");
            Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            
            String title = request.getParameter("costumetitle");
            String details = request.getParameter("costumedetails");
            String description = request.getParameter("costumedescription");
            String category = request.getParameter("costumecat");
            String tag = request.getParameter("costumetag");
            int qty = Integer.parseInt(request.getParameter("costumeqty"));
            Part filePart = request.getPart("photo");
            InputStream stream = filePart.getInputStream();
            String status = "pending";
            int id = 4;
            double price = 200.69;
            int i = 1;
            
            String toQuery = "Insert into weblabg3.products values (?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement update = con.prepareStatement(toQuery);
            update.setInt(1,id);
            update.setInt(2,qty);
            update.setDouble(3,price);
            update.setString(4,title);
            update.setString(5, details);
            update.setString(6,description);
            update.setString(7,category);
            update.setString(8, tag);
            update.setString(9,status);
            update.setBlob(10, stream);
            update.setInt(11,i);
            update.executeUpdate();
            
            int result = update.executeUpdate();
            
            response.sendRedirect("Service.jsp");
            
            
           
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Upload.class.getName()).log(Level.SEVERE, null, ex);
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
