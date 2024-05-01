/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.sql.Connection;
import jakarta.resource.cci.ResultSet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.util.UUID;

/**
 *
 * @author DELL
 */
@WebServlet(name = "SignInServlet", urlPatterns = {"/SignInServlet"})
public class SignInServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SignInServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SignInServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        // Retrieve email and password from the form
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Validate email and password
        if (email == null || email.isEmpty() || password == null || password.isEmpty()) {
            out.println("Please provide both email and password.");
            return;
        }

        // Database connection parameters
        String url = "jdbc:mysql://localhost:3306/emart"; // database name

        try {
            // Load the MySQL driver
            Class.forName("com.mysql.jdbc.Driver");

            // Establish the database connection
            Connection con = DriverManager.getConnection(url, "root", "");

            // Prepare the SQL statement
            String sql = "SELECT * FROM users WHERE email=? AND password=?";
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, email.trim());
            statement.setString(2, password.trim());

            // Execute the query
            var rs = statement.executeQuery();
            out.println(rs);

            if (rs.next()) {
                String userID = UUID.randomUUID().toString();
                // User exists, you can perform further actions here like setting session attributes or redirecting to a different page.
                HttpSession session = request.getSession();
                session.setAttribute("email", email.trim());

                // Set cookie with UserID
                Cookie cookie = new Cookie("UserID", userID);
                cookie.setMaxAge(24 * 60 * 60);

                // Redirect to profile page
                response.sendRedirect("ProfileServlet?email=" + email);
            } else {
                // User doesn't exist or provided credentials are incorrect.
                response.sendRedirect("SignIn.jsp?message=fails");
            }

            // Close resources
            rs.close();
            statement.close();
            con.close();
        } catch (ClassNotFoundException e) {
            out.println("MySQL JDBC Driver not found.");
        } catch (SQLException e) {
            out.println("SQL Exception: " + e.getMessage());
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
