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
@WebServlet(name = "AdminEditProductServlet", urlPatterns = {"/AdminEditProductServlet"})
public class AdminEditProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form data
        String productId = request.getParameter("productId");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int price = Integer.parseInt(request.getParameter("price"));
        String category = request.getParameter("category");

        // Update database
        DAO.updateProduct(productId, quantity, price); 

        // Redirect back to the page where the form was submitted from
        response.sendRedirect("/AdminPanel/JSP/Products.jsp");
    
    }

}
