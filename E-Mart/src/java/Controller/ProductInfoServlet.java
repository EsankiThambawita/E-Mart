/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


@WebServlet(name = "ProductInfoServlet", value = "/ProductInfoServlet")
public class ProductInfoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int  productID = Integer.parseInt(request.getParameter("productID"));

        //Establishing a connection
        String url = "jdbc:mysql://localhost:3306/emart";
        String user = "root";
        String password = "";

        Connection conn = null;

        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);

            //Retrieve the data from the database
            String query = "select * from smartphone where productID = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setInt(1, productID);
            ResultSet rs = st.executeQuery();

            //Forward the result to the JSP
            request.setAttribute("productResultSet", rs);
            request.getRequestDispatcher("ProductInfoTemplate.jsp").forward(request, response);

            rs.close();
            st.close();
            conn.close();

        }catch(ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}


