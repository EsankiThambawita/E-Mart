package Controller;

import Model.SignUpUser;
import Model.userDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "SignUpServlet", urlPatterns = {"/SignUpServlet"})
public class SignUpServlet extends HttpServlet {

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
            out.println("<title>Servlet SignUpServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SignUpServlet at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);
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
        //processRequest(request, response);

        //Get data 
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String contactNumber = request.getParameter("ContactNumber");

        username.trim();
        email.trim();
        password.trim();
        contactNumber.trim();

        // If Validation fails
        if (!validation(username, email, password, confirmPassword, contactNumber)) {
            request.getRequestDispatcher("SignUp.jsp").forward(request, response);
        } else {

            // Create user object
            //SignUpUser user = new SignUpUser(username, password, contactNumber);
            // Save to the database
            userDao userDao = new userDao(); // Create an instance of userDao
            userDao.insertDetails(email, username, password, contactNumber);
            // Generate unique UserID
            String userID = UUID.randomUUID().toString();
            // Set session attributes
            HttpSession session = request.getSession();
            session.setAttribute("username", username.trim());
            session.setAttribute("email", email.trim());
            session.setAttribute("password", password.trim());
            session.setAttribute("contactNumber", contactNumber.trim());

            // Set cookie with UserID
            Cookie cookie = new Cookie("UserID", userID);
            cookie.setMaxAge(24 * 60 * 60);

            // Redirect to profile page
            response.sendRedirect("ProfileServlet?email=" + email);

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

    private boolean validation(String username, String email, String password, String confirmPassword, String contactNumber) {
        if (username.isEmpty() || email.isEmpty() || password.isEmpty() || confirmPassword.isEmpty() || contactNumber.isEmpty()) {
            return false;
        }

        if (password.length() < 8) {
            return false;
        }

        if (!password.equals(confirmPassword)) {
            return false;
        }

        return contactNumber.matches("\\d{10}");
    }

}
