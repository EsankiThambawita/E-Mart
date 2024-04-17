package Controller;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


/**
 *
 * @author Esanki Lakvindee
 */
@WebServlet(urlPatterns = {"/FeedbackServlet"})
public class FeedbackServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String feedback = request.getParameter("feedback"); // Assuming the name attribute of your form input is "feedback"
        // You can add more parameters as needed
        
        // JDBC driver name and database URL
        final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
        final String DB_URL="jdbc:mysql://localhost:3306/Emart";

        // Database credentials
        final String USER = "root";
        final String PASS = "";

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Register JDBC driver
            Class.forName(JDBC_DRIVER);

            // Open a connection
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            // Execute a query
            String sql = "INSERT INTO Feedback (feedback) VALUES (?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, feedback);
            // You can set more parameters if you have additional fields in your table

            // Execute the update
            int rowsAffected = stmt.executeUpdate();

            // Check if the update was successful
            if (rowsAffected > 0) {
                response.sendRedirect("success.html"); // Redirect to a success page
            } else {
                response.sendRedirect("error.html"); // Redirect to an error page
            }
        } catch(Exception e) {
            // Handle errors
            e.printStackTrace();
            response.sendRedirect("error.html"); // Redirect to an error page
        } finally {
            // Finally block to close resources
            try {
                if(stmt != null) stmt.close();
            } catch(Exception e) {
                e.printStackTrace();
            }
            try {
                if(conn != null) conn.close();
            } catch(Exception e) {
                e.printStackTrace();
            }
        }
        
        
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
