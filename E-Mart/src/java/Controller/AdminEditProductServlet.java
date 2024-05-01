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
         // Retrieve form data including photo parameters
        String productId = request.getParameter("productId");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        double price = Double.parseDouble(request.getParameter("price"));
        String productName = request.getParameter("productName");
        String brand = request.getParameter("brand");
        String modelName = request.getParameter("modelName");
        String productDescription = request.getParameter("productDescription");
        String storageCapacity = request.getParameter("storageCapacity");
        String screenSize = request.getParameter("screenSize");
        String color = request.getParameter("color");
        String cpu = request.getParameter("cpu"); // Add CPU parameter
        String memory = request.getParameter("memory"); 
        String photo1 = "Images/Home/" + request.getParameter("photo1");
        String photo2 = "Images/Home/" + request.getParameter("photo2"); 
        String photo3 = "Images/Home/" + request.getParameter("photo3");
        String photo4 = "Images/Home/" + request.getParameter("photo4"); 

        // Update database including photo parameters
        DAO.updateSmartphone(productId, quantity, price, productName, brand, modelName, productDescription, storageCapacity, screenSize, color, cpu, memory, photo1, photo2, photo3, photo4); 

        // Redirect back to the page where the form was submitted from
        response.sendRedirect("/AdminPanel/JSP/Products.jsp");
    }

}
