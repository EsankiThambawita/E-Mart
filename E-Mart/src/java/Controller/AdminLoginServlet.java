/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Esanki Lakvindee
 */
@WebServlet(name = "AdminLoginServlet", urlPatterns = {"/AdminLoginServlet"})
public class AdminLoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            // Check if email and password are not empty
            if (email != null && !email.isEmpty() && password != null && !password.isEmpty()) {
                // Implement logic to check if the email and password match an admin profile
                if (isValidAdmin(email, password)) {
                    // Redirect to Products.jsp if the admin is valid
                    response.sendRedirect(request.getContextPath() + "/AdminPanel/JSP/Products.jsp");
                } else {
                    // Redirect back to the login page with an error message
                    response.sendRedirect(request.getContextPath() + "/AdminPanel/JSP/Login.jsp?error=invalid");
                }
            } else {
                // Redirect back to the login page with an error message if email or password is empty
                response.sendRedirect(request.getContextPath() + "/AdminPanel/JSP/Login.jsp?error=empty");
            }
        }

        // Method to validate admin credentials (replace with your actual validation logic)
        private boolean isValidAdmin(String email, String password) {
            // Implement your logic to validate the admin credentials here
            // For example, check if the email and password match an admin profile in the database
            // Return true if the admin is valid, false otherwise
            return false; // Placeholder return value
        }
    

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
