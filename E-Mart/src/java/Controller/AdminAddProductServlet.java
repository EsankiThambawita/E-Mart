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
            String photo1 = request.getParameter("photo1");
            String photo2 = request.getParameter("photo2");
            String photo3 = request.getParameter("photo3");
            String photo4 = request.getParameter("photo4");
            String brand = request.getParameter("brand");
            String modelName = request.getParameter("modelName");
            String productDescription = request.getParameter("productDescription");
            String storageCapacity = request.getParameter("storageCapacity");
            String screenSize = request.getParameter("screenSize");
            String color = request.getParameter("color");

            // Call DAO method to add the product to the database
            DAO.addProduct(productId, productName, category, quantity, price, photo1, photo2, photo3, photo4, brand, modelName, productDescription, storageCapacity, screenSize, color);

            // Redirect back to the products page or any other appropriate page
            response.sendRedirect("/AdminPanel/JSP/Products.jsp");


    }

}
