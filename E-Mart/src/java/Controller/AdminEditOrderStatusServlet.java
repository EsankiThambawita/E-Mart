/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import Model.DAO;

/**
 *
 * @author robin
 */
@WebServlet(name = "AdminEditOrderStatusServlet", urlPatterns = {"/AdminEditOrderStatusServlet"})
public class AdminEditOrderStatusServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        
        int orderId = Integer.parseInt(request.getParameter("orderId"));
        String orderStatus = request.getParameter("orderStatus");

        // Call the method to update order status
        DAO.UpdateOrderStatus(orderId, orderStatus);

        // Redirect back to the page where the form was submitted from
        response.sendRedirect("/AdminPanel/JSP/Orders.jsp");
    }

}
