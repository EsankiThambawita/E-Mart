/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.DAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Esanki Lakvindee
 */
@WebServlet(name = "AdminAddSmartwatchServlet", urlPatterns = {"/AdminAddSmartwatchServlet"})
public class AdminAddSmartwatchServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                // Retrieve form data
                String productId = request.getParameter("productId");
                String productName = request.getParameter("productName");
                String category = request.getParameter("category");
                int pieces = Integer.parseInt(request.getParameter("pieces"));
                double price = Double.parseDouble(request.getParameter("price"));
                String photo1 = request.getParameter("photo1");
                String photo2 = request.getParameter("photo2");
                String photo3 = request.getParameter("photo3");
                String photo4 = request.getParameter("photo4");
                String brand = request.getParameter("brand");
                String modelName = request.getParameter("modelName");
                String productDescription = request.getParameter("productDescription");
                String screenSize = request.getParameter("screenSize");
                String color = request.getParameter("color");

                // Call method to add smartwatch to the database
                DAO.addSmartwatch(productId, pieces, price, productName, category, photo1, photo2, photo3, photo4, brand, modelName, productDescription, screenSize, color);

                // Redirect back to the smartwatch page
                response.sendRedirect("/AdminPanel/JSP/Smartwatch.jsp");

    }

}
