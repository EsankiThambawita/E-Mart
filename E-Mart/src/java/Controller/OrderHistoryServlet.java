package Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

// Assuming Order class is in the com.example package
import Controller.Order;

@WebServlet(name = "OrderHistoryServlet", urlPatterns = {"/OrderHistoryServlet"})
public class OrderHistoryServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet OrderHistoryServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OrderHistoryServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve order history data from session
        HttpSession session = request.getSession();
        List<Order> orderHistory = (List<Order>) session.getAttribute("orderHistory");
        
        // Retrieve shipping address from session (assuming it's stored as a single string)
        String shippingAddress = (String) session.getAttribute("shippingAddress");

        // Set order history data and shipping address as attributes in the request object
        request.setAttribute("orderHistory", orderHistory);
        request.setAttribute("shippingAddress", shippingAddress);

        // Forward the request to the JSP page
        request.getRequestDispatcher("/OrderHistory.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
