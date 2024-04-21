
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import java.io.IOException;

@WebServlet(name = "PurchaseHistoryServlet", value = "/PurchaseHistoryServlet")
public class PurchaseHistoryServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve the user ID from the cookie
        String userId = null;
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("userId".equals(cookie.getName())) {
                    userId = cookie.getValue();  //Assuming the cookie is names userID
                    break;
                }
            }
        }

        if (userId != null) {
            // Fetch purchase history data from the database
            List<Order> purchaseHistory = fetchPurchaseHistory(userId);

            // Set the purchase history as a request attribute
            request.setAttribute("purchaseHistory", purchaseHistory);

            // Forward the request and response to the JSP page
            RequestDispatcher dispatcher = request.getRequestDispatcher("purchaseHistory.jsp");
            dispatcher.forward(request, response);
        } else {
            // Redirect to login page if user ID is not found
            response.sendRedirect("login.jsp");
        }
    }

    private List<Order> fetchPurchaseHistory(String userId) {
        // Replace this with your database connection and query
        List<Order> purchaseHistory = new ArrayList<>();

        // Example query (replace with your actual query)
        String query = "SELECT date, order_number, order_status, items_purchased, quantity, total_price " +
                "FROM purchase_history WHERE user_id = ?";

        try (Connection conn = DriverManager.getConnection("jdbc:your_database_url");
             PreparedStatement pstmt = conn.prepareStatement(query)) {
            pstmt.setString(1, userId);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                Order order = new Order();
                order.setDate(rs.getDate("date"));
                order.setOrderNumber(rs.getString("order_number"));
                order.setOrderStatus(rs.getString("order_status"));
                order.setItemsPurchased(rs.getString("items_purchased"));
                order.setQuantity(rs.getInt("quantity"));
                order.setTotalPrice(rs.getDouble("total_price"));

                purchaseHistory.add(order);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return purchaseHistory;
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}






