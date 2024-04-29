/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import Model.DAO;

/**
 *
 * @author Esanki Lakvindee
 */
@WebServlet(name = "AdminAddProductServlet", urlPatterns = {"/AdminAddProductServlet"})
public class AdminAddProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            // Retrieve form inputs
            String productId = request.getParameter("productId");
            String productName = request.getParameter("productName");
            String category = request.getParameter("category");
            int quantity = Integer.parseInt(request.getParameter("pieces"));
            int price = Integer.parseInt(request.getParameter("price"));

            // Call DAO method to add the product to the database
            DAO.addProduct(productId, productName, category, quantity, price);

            // Redirect back to the products page or any other appropriate page
            response.sendRedirect("/AdminPanel/JSP/Products.jsp");

    }

}
