/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ChangePasswordController")
public class ChangePasswordController extends HttpServlet {

    // JDBC connection parameters
    private final String jdbcUrl = "jdbc:mysql://localhost:3306/your_database"; //url of ur database
    private final String jdbcUsername = "your_username"; //its username
    private final String jdbcPassword = "your_password"; //password

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Forward the request to the change password JSP view
        request.getRequestDispatcher("/WEB-INF/views/changePassword.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve parameters from the request
        String currentPassword = request.getParameter("currentPassword");
        String newPassword = request.getParameter("newPassword");

        // Get the user's ID from the session or wherever you store it
        String userId = (String) request.getSession().getAttribute("userId");

        // Validate the current password
        if (validatePassword(userId, currentPassword)) {
            // Update the password
            updatePassword(userId, newPassword);
            // Redirect to the profile page
            response.sendRedirect(request.getContextPath() + "/Profile.jsp");
        } else {
            // Password validation failed, redirect back to the change password page with an error message
            request.setAttribute("errorMessage", "Incorrect current password");
            request.getRequestDispatcher("/WEB-INF/views/ChangePassword.jsp").forward(request, response);
        }
    }

    // Method to validate the current password
    private boolean validatePassword(String userId, String currentPassword) {
        try (Connection conn = DriverManager.getConnection(jdbcUrl, jdbcUsername, jdbcPassword)) {
            String query = "SELECT password FROM users WHERE id = ? AND password = ?";
            try (PreparedStatement statement = conn.prepareStatement(query)) {
                statement.setString(1, userId);
                statement.setString(2, currentPassword);
                try (ResultSet resultSet = statement.executeQuery()) {
                    return resultSet.next();
                }
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    // Method to update the user's password
    private void updatePassword(String userId, String newPassword) {
        try (Connection conn = DriverManager.getConnection(jdbcUrl, jdbcUsername, jdbcPassword)) {
            String query = "UPDATE users SET password = ? WHERE id = ?";
            try (PreparedStatement statement = conn.prepareStatement(query)) {
                statement.setString(1, newPassword);
                statement.setString(2, userId);
                statement.executeUpdate();
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}
