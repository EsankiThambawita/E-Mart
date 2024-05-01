/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;

/**
 *
 * @author Esanki Lakvindee
 */
@WebServlet(name = "FeedbackServlet", urlPatterns = {"/FeedbackServlet"})
public class FeedbackServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        /*
        // Assuming you have a method to fetch order data from the database
        List<Order> orders = fetchOrdersFromDatabase();

        // Assuming each Order object has a feedback attribute
        // Retrieve feedback data for each order
        for (Order order : orders) {
            int orderId = order.getId();
            String feedback = fetchFeedbackForOrder(orderId); // Method to fetch feedback from the database
            order.setFeedback(feedback); // Set feedback for the order
        }

        // Set orders attribute in request scope
        request.setAttribute("orders", orders);

        // Forward the request to the JSP page
        RequestDispatcher dispatcher = request.getRequestDispatcher("/AdminPanel/Orders.jsp");
        dispatcher.forward(request, response);
    }*/
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
        // Retrieve feedback value and orderId from request
        String feedbackValue = request.getParameter("feedback");
        String orderId = request.getParameter("orderId");

        // Insert feedback into the database along with orderId
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emart", "root", "")) {
                PreparedStatement pst = con.prepareStatement("UPDATE orders SET feedback = ? WHERE orderId = ?");
                pst.setString(1, feedbackValue);
                pst.setString(2, orderId);
                pst.executeUpdate();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Send response back to client
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();
        out.print("Feedback saved successfully");
        out.flush();
    }

}
