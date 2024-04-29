/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.AdminLogin;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

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

        String Email = request.getParameter("email");
        String Password = request.getParameter("password");

        // Check if the password is correct
        if ("emart24051".equals(Password)) {
            // Create a session
            HttpSession session = request.getSession();
            // Store user information in session
            session.setAttribute("email", Email);
            // Redirect to profile page
            response.sendRedirect(request.getContextPath() + "/AdminPanel/JSP/Profile.jsp");
        } else {
            // Password is incorrect, display an error message
            request.setAttribute("errorMessage", "Incorrect password");
            request.getRequestDispatcher("/AdminPanel/JSP/Login.jsp").forward(request, response);
        }

        AdminLogin login = new AdminLogin();
        login.insertloginData(Email, Password);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
