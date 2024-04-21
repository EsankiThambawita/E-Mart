<%-- 
    Document   : Customers
    Created on : Apr 20, 2024, 9:18:18 PM
    Author     : Esanki Lakvindee
--%>

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
        <div class="navbar">
            <%@ include file="navbar.html" %>
        </div>
        <div class="container">
            <h1>Customers</h1>
            <table>
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Address</th>
                        <th>Email</th>
                        <th>Contact</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (int i = 0; i < 10; i++) { %>
                    <tr>
                        <td>Customer <%= i + 1 %></td>
                        <td><%= i + 1 %> Main St, City, Country</td>
                        <td>customer<%= i + 1 %>@example.com</td>
                        <td>123-456-<%= i * 1111 %></td>
                        <td><button>Edit</button><button style="display: none;">Save</button></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
        </div>
    </body>
</html>
