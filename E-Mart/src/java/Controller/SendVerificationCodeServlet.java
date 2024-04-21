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
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author DELL
 */
@WebServlet(name = "SendVerificationCodeServlet", urlPatterns = {"/SendVerificationCodeServlet"})
public class SendVerificationCodeServlet extends HttpServlet {

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
            out.println("<title>Servlet SendVerificationCodeServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SendVerificationCodeServlet at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);
          // Get the user's number from the request
        String userNumber = request.getParameter("mobileNumber");

             String API_KEY = "942f32b7"; 
        String API_SEC = "pkYTozjIXO4qAJeK";
        String UsersNumber = "94722646386";

        String URL_TO_VERIFY = "https://api.nexmo.com/verify/json?&api_key=" + API_KEY + "&api_secret=" + API_SEC + "&number=" + UsersNumber + "&brand=AcmeInc";

        try {
            URL url = new URL(URL_TO_VERIFY);

            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("GET");
            StringBuilder apiResponse = new StringBuilder();
            BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            String line;
            while ((line = reader.readLine()) != null) {
                apiResponse.append(line);
            }
 
            // Extract request_id from response
            System.out.println(response.toString());
            // Extract request_id from response
            String requestId = extractRequestId(response.toString());
            System.out.println("Request ID: " + requestId);
            
        
        // Set request attributes
        request.setAttribute("requestId", requestId);
        
        // Forward the request to verifycode.jsp
        request.getRequestDispatcher("verify.jsp").forward(request, response);
        
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

    // Method to extract request ID from Nexmo API response
    private static String extractRequestId(String response) {
        // Using regex to extract request_id
        Pattern pattern = Pattern.compile("\"request_id\":\"(.*?)\"");
        Matcher matcher = pattern.matcher(response);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return response;

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
