/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.Checkout;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import Model.DAO;
import Model.ShoppingCartObj;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Random;

/**
 *
 * @author hp
 */
@WebServlet(name = "CheckoutServlet", urlPatterns = {"/CheckoutServlet"})
public class CheckoutServlet extends HttpServlet {

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
            out.println("<title>Servlet CheckoutServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CheckoutServlet at " + request.getContextPath() + "</h1>");
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
        PrintWriter out = response.getWriter();
        try {
            String name = request.getParameter("fullName");
            String mail = request.getParameter("email");
            String add = request.getParameter("address");
            String citys = request.getParameter("city");
            String states = request.getParameter("state");
            int zips = Integer.parseInt(request.getParameter("zip"));
            String orderDate = request.getParameter("orderDate"); // Retrieve the order date parameter
            int price = Integer.parseInt(request.getParameter("totalPrice"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));

            // Generate orderId (for example, using a simple timestamp-based approach)
//            int orderId = GenerateOrderId();

            String email = (String) request.getSession().getAttribute("email");
            List<ShoppingCartObj> cartItems = DAO.getAllCartItems(email); // Retrieve list of cart items

            // Convert cart items to a map of product IDs and quantities
            Map<Integer, Integer> cartItemsMap = new HashMap<>();
            for (ShoppingCartObj item : cartItems) {
                cartItemsMap.put(item.getProductId(), item.getQuantity());
            }

            Checkout c = new Checkout();
            var result = c.addCheckout(name, mail, add, citys, states, zips, cartItemsMap, orderDate, price, quantity);
            out.println(result);

            // Redirect to orderConfirmation.jsp
            response.sendRedirect("OrderConfirmation.jsp");
            return; // Exit the method after redirection
        } catch (NumberFormatException e) {
            // Handle NumberFormatException (e.g., invalid ZIP code)
            out.println("Number Exception");
        } catch (Exception e) {
            // Handle other exceptions
            out.println("Exception");
        }

        // Forward to an error page or show an error message to the user
        response.sendRedirect("error.jsp");
    }

// Method to generate orderId (simple timestamp-based approach)
    ///<summary>
    ///Genearates a Random Number seeded from millies
    ///</summary>
    ///<returns>A Integer random number with 8 digits</returns>
    static Random GlobalRandom = new Random();

    public static int GenerateOrderId() {
        // get the current millis from the system
        long rawmills = System.currentTimeMillis();
        // add a random number to increase the uniquesness
        rawmills += GlobalRandom.nextInt(59660498);
        // convert it to string to take only 8
        String mills = "" + rawmills;
        // take only the last 8 numbers from the unique value
        String consatted = mills.substring(mills.length() - 8);
        // convert it to int and return to the caller
        return Integer.parseInt(consatted);
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
