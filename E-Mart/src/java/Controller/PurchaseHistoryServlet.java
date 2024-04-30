package Controller;

import Model.Order;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.sql.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "PurchaseHistoryServlet", value = "/PurchaseHistoryServlet")
public class PurchaseHistoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //Retrieve the User_Email from a cookie called User
        Cookie[] cookies = request.getCookies();
        String userEmail = null;
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("userEmail")) {
                    userEmail = cookie.getValue();
                    break;
                }
            }
        }

        //Establish a connection to the database.
        String url = "jdbc:mysql://localhost:3306/emart";
        String username = "root";
        String password = "";

        Connection conn = null;

        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, username, password);
        }catch (ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }

        //Retrieve the data from the database
        List<Order> orderHistory = new ArrayList<>();
        PreparedStatement st = null;
        ResultSet rs = null;
        try{
            String query = "SELECT * FROM orders WHERE email = ?";
            st = conn.prepareStatement(query);
            st.setString(1, userEmail);
            rs = st.executeQuery();

            //Process the resultSet
            while (rs.next()) {
                Order order = new Order();
                order.setOrderID(rs.getInt("orderID"));
                order.setOrderDate(rs.getDate("orderDate"));
                order.setProductID(rs.getInt("productID"));
                order.setOrderStatus(rs.getString("orderStatus"));
                order.setTotalPrice(rs.getInt("totalPrice"));
                order.setFeedback(rs.getString("feedback"));
                order.setQuantity(rs.getInt("quantity"));
                order.setName(rs.getString("name"));
                order.setEmail(rs.getString("email"));
                order.setAddress(rs.getString("address"));
                order.setCity(rs.getString("city"));
                order.setState(rs.getString("state"));
                order.setZip(rs.getString("zip"));
                orderHistory.add(order);

            }
        } catch (SQLException e){
            e.printStackTrace();
        }

        //Pass order history to the JSP
        request.setAttribute("OrderHistory", orderHistory);
        request.getRequestDispatcher("OrderHistory.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

