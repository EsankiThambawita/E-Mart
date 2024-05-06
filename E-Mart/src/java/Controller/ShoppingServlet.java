package Controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "ShoppingServlet", value = "/ShoppingServlet")
public class ShoppingServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productID = request.getParameter("ID");
        String action = request.getParameter("action");
        String category = request.getParameter("category");


        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/";
        String user = "root";
        String password = "";
        Statement statement;
        ResultSet resultSet;

        try {
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url,user,password);

            statement = con.createStatement();

            //Retrieve the data from the database
            String selectQuery = "select * from smartphone where productid = '" + productID + "'";
            resultSet = statement.executeQuery(selectQuery);

            //inserting data to the ShoppingCart table
            while (resultSet.next()){
                String insertQuery = "INSERT INTO shoppingcart (email, productName, productPrice, quantity, description, category, iconPath, productId) VALUES (" +
                        resultSet.getString("email") + "', '" +
                        resultSet.getString("productName") + "', " +
                        resultSet.getInt("productPrice") + ", " +
                        resultSet.getInt("quantity") + ", '" +
                        resultSet.getString("description") + "', '" +
                        resultSet.getString("category") + "', '" +
                        resultSet.getString("iconPath") + "', " +
                        resultSet.getInt("productId") +
                        ")";
                statement.executeUpdate(insertQuery);
            }

        } catch (ClassNotFoundException | SQLException ex){
            Logger.getLogger(ShoppingServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        if ("buy_now".equals(action)) {
            // Redirect to the "checkout" JSP page
            response.sendRedirect("Checkout.jsp");
        } else if ("add_to_cart".equals(action)) {
            // Redirect to the "add to cart" JSP page
            response.sendRedirect("ShoppingCart.jsp");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }
}

