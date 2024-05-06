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
        int productID = Integer.parseInt(request.getParameter("productID"));
        
        // Retrieve the value of the hidden input field "category"
        String category = request.getParameter("category");

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
            if(rs.next()) {
                request.setAttribute("productName", rs.getString("productName"));
                request.setAttribute("price", rs.getInt("price"));
                request.setAttribute("brand", rs.getString("brand"));
                request.setAttribute("modelName", rs.getString("modelName"));
                request.setAttribute("storageCapacity", rs.getString("storageCapacity"));
                request.setAttribute("screenSize", rs.getDouble("screenSize"));
                request.setAttribute("color", rs.getString("color"));
                request.setAttribute("productDescription", rs.getString("productDescription"));
                request.setAttribute("photo1", rs.getString("photo1"));
                request.setAttribute("photo2", rs.getString("photo2"));
                request.setAttribute("photo3", rs.getString("photo3"));
                request.setAttribute("photo4", rs.getString("photo4"));
                
                // Set the category attribute
                request.setAttribute("category", category);
            }
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

