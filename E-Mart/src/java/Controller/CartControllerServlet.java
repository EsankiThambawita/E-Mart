package Controller;

import Controller.CartService; // Import the CartService class
import Controller.BillingDetails; // Import the BillingDetails class from the correct package
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.*;
import java.util.*;


@WebServlet(name = "CartControllerServlet", urlPatterns = {"/CartControllerServlet"})
public class CartControllerServlet extends HttpServlet {
    private CartService cartService;

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
                case "add":
                    String productName = request.getParameter("productName");
                    double productPrice = Double.parseDouble(request.getParameter("productPrice"));
                    int quantity = Integer.parseInt(request.getParameter("quantity"));
                    cartService.addToCart(productName, productPrice, quantity);
                    break;
                case "remove":
                    String removedProductName = request.getParameter("productName");
                    cartService.removeFromCart(removedProductName);
                    break;
                case "update":
                    String updatedProductName = request.getParameter("productName");
                    int updatedQuantity = Integer.parseInt(request.getParameter("quantity"));
                    cartService.updateCart(updatedProductName, updatedQuantity);
                    break;
                case "checkout":
                    // Handle checkout
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
                    BillingDetails billingDetails = new BillingDetails(fullName, email, address, city, state, zip, cardType, cardName, cardNumber, expiryDate, cvv);
                    boolean checkoutSuccess = cartService.processCheckout(billingDetails);
                    if (checkoutSuccess) {
                        // Checkout successful
                        response.sendRedirect("CheckoutSuccess.jsp");
                    } else {
                        // Checkout failed
                        response.sendRedirect("CheckoutSuccess.jsp");
                    }
                    break;
                default:
                    // Invalid action
                    break;
            }
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
