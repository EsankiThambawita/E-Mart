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

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);

            //Retrieve the data from the database
            String query = "";
            if (category.equals("smartphone")) {
                query = "SELECT * FROM smartphone WHERE productId = ?";
            } else if (category.equals("smartwatch")) {
                query = "SELECT * FROM smartwatch WHERE productId = ?";
            } else if (category.equals("monitor")) {
                query = "SELECT * FROM monitor WHERE productId = ?";
            } else if (category.equals("laptop")) {
                query = "SELECT * FROM laptop WHERE productId = ?";
            } else if (category.equals("camera")) {
                query = "SELECT * FROM camera WHERE productId = ?";
            }

            PreparedStatement st = conn.prepareStatement(query);
            st.setInt(1, productID);
            ResultSet rs = st.executeQuery();

            //Forward the result to the JSP
            if (rs.next()) {
                request.setAttribute("productName", rs.getString("productName"));
                request.setAttribute("productID", rs.getInt("productId"));
                request.setAttribute("price", rs.getInt("price"));
                request.setAttribute("brand", rs.getString("brand"));
                request.setAttribute("modelName", rs.getString("modelName"));
                switch (category) {
                    case "smartphone":
                        request.setAttribute("storageCapacity", rs.getString("storageCapacity"));
                        request.setAttribute("screenSize", rs.getString("screenSize"));
                        request.setAttribute("color", rs.getString("color"));
                        break;
                    case "smartwatch":
                        request.setAttribute("screenSize", rs.getString("screenSize"));
                        request.setAttribute("color", rs.getString("color"));
                        break;
                    case "monitor":
                        request.setAttribute("refreshRate", rs.getString("refreshRate"));
                        request.setAttribute("screenSize", rs.getString("screenSize"));
                        request.setAttribute("resolution", rs.getString("resolution"));
                        break;
                    case "laptop":
                        request.setAttribute("storageCapacity", rs.getString("storageCapacity"));
                        request.setAttribute("cpu", rs.getString("cpu"));
                        request.setAttribute("memory", rs.getString("memory"));
                        break;
                    case "camera":
                        request.setAttribute("formFactor", rs.getString("formFactor"));
                        break;
                    default:
                        break;
                }
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

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
