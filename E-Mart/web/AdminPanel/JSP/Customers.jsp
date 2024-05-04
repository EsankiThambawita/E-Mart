<%-- 
    Document   : Customers
    Created on : Apr 20, 2024, 9:18:18 PM
    Author     : Esanki Lakvindee
--%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Info</title>
        <link rel="stylesheet" href="/AdminPanel/CSS/Customers.css"/>
        <link rel="stylesheet" href="/AdminPanel/CSS/navbar.css"/>
        <link rel="stylesheet" href="/AdminPanel/CSS/Menu.css"/>
    </head>
    <body>
        <div class="left-section">
            <%@ include file="Menu.html" %>
        </div>
        
        <div class="right-section">
        <div class="container">
            <h1>Customers</h1>
            <table>
                <thead>
                    <tr>
                        <th>Email</th>
                        <th>Username</th>
                        <th>Password</th>
                        <th>Contact</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                     <% 
                try {
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/emart", "root", "");
                    Statement stmt = conn.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM users");
                    while (rs.next()) {
                %>
                <tr>
                    <td><%= rs.getString("email") %></td>
                    <td><%= rs.getString("username") %></td>
                    <td><%= rs.getString("password") %></td>
                     <td><%= rs.getString("contactNumber") %></td>
                     <td>
                        <form action="/AdminDeleteCustomerServlet" method="post">
                        <input type="hidden" name="email" value="<%= rs.getString("email") %>">
                        <button type="submit">Delete</button>
                        </form>
                       </td>                
                </tr>
                <% 
                    }
                    rs.close();
                    stmt.close();
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                %>
                </tbody>
            </table>
        </div>
        </div>
                
        <!-- Popup Form -->
        <div id="editFormContainer" class="edit-form-container" style="display: none;">
            <div class="edit-form">
                <h2>Edit Customer</h2>
                <form id="editForm">
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name">
                    <label for="address">Address:</label>
                    <input type="text" id="address" name="address">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email">
                    <label for="contact">Contact:</label>
                    <input type="tel" id="contact" name="contact">
                    <button type="button" id="saveBtn">Save</button>
                    <button type="button" id="cancelBtn">Cancel</button>
                </form>
            </div>
        </div>
                
         <script src="/AdminPanel/JS/Customers.js"></script>

        </div>
    </body>
</html>
