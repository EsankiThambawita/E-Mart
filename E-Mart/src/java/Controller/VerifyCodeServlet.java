/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 *
 * @author DELL
 */
@WebServlet(name = "VerifyCodeServlet", urlPatterns = {"/VerifyCodeServlet"})
public class VerifyCodeServlet extends HttpServlet {

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
            out.println("<title>Servlet VerifyCodeServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet VerifyCodeServlet at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);\
            // Get the user's entered OTP from the request
    String userEnteredOTP = request.getParameter("otp");

    // Get the stored request ID from the session
    String storedRequestId = (String) request.getSession().getAttribute("requestId");

    // Nexmo API credentials
        String API_KEY = "942f32b7"; 
        String API_SEC = "pkYTozjIXO4qAJeK";
        
    // Construct the URL to verify the OTP with Nexmo
    String URL_TO_VERIFY = "https://api.nexmo.com/verify/check/json?" +
            "&api_key=" + API_KEY +
            "&api_secret=" + API_SEC +
            "&request_id=" + storedRequestId +
            "&code=" + userEnteredOTP;

    try {
        URL url = new URL(URL_TO_VERIFY);
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.setRequestMethod("GET");

        // Get the response from the Nexmo API
        StringBuilder apiResponse = new StringBuilder();
        try (BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()))) {
            String line;
            while ((line = reader.readLine()) != null) {
                apiResponse.append(line);
            }
        }

        // Check if the response contains patterns indicating success or failure
        if (apiResponse.toString().contains("\"status\": \"0\"")) {
            // Verification successful
            // Perform the desired action (e.g., allow access, redirect to a success page)
            response.sendRedirect("resetPassword.jsp");
        } else {
            // Verification failed
            // Handle the error (e.g., display an error message, redirect to a failure page)
            response.sendRedirect("verify.jsp");
        }
    } catch (Exception ex) {
        System.out.println(ex);
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
