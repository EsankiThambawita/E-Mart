package Controller;


import Model.BillingDetails;
import Model.CartService;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.*;
import java.util.*;

@WebServlet(name = "CartControllerServlet", urlPatterns = {"/CartControllerServlet"})
public class CartControllerServlet extends HttpServlet {
    private CartService cartService;

    @Override
    public void init() throws ServletException {
        cartService = new CartService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action != null) {
            switch (action) {
                case "checkout":
                    handleCheckout(request, response);
                    break;
                default:
                    // Invalid action
                    response.sendRedirect("ErrorPage.jsp");
                    break;
            }
        } else {
            // No action specified
            response.sendRedirect("ErrorPage.jsp");
        }
    }

    private void handleCheckout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Extract billing details from request
        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String zip = request.getParameter("zip");
        String cardType = request.getParameter("cardType");
        String cardName = request.getParameter("cardName");
        String cardNumber = request.getParameter("cardNumber");
        String expiryDate = request.getParameter("expiryDate");
        String cvv = request.getParameter("cvv");

        // Create BillingDetails object
        BillingDetails billingDetails = new BillingDetails(email,fullName, address, city, state, zip, cardType, cardName, cardNumber, expiryDate, cvv);

        // Process checkout
        boolean checkoutSuccess = false;
        try {
            checkoutSuccess = cartService.processCheckout(billingDetails);
        } catch (Exception e) {
            // Handle exceptions
            e.printStackTrace(); // Log the exception
            response.sendRedirect("OrderConfirmation.jsp"); // Redirect to failure page
            return;
        }

        if (checkoutSuccess) {
            // Checkout successful
            response.sendRedirect("OrderConfirmation.jsp");
        } else {
            // Checkout failed
            response.sendRedirect("CheckoutFailiure.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CartControllerServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CartControllerServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
}
