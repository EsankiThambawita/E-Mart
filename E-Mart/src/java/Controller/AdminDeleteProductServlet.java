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
 * @author Esanki Lakvindee
 */
@WebServlet(name = "AdminDeleteProductServlet", urlPatterns = {"/AdminDeleteProductServlet"})
public class AdminDeleteProductServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String productId = request.getParameter("productId");
        // Call your DAO method to delete the product from the database
        DAO.deleteProduct(productId);
        // Redirect back to the products page
        response.sendRedirect("Products.jsp");
    }

  
}
