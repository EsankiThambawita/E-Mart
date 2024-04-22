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
        <link rel="stylesheet" href="/AdminPanel\CSS\Customers.css"/>
    </head>
    <body>
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
                        <td>
                         <button class="editBtn">Edit</button>
                         <button class="saveBtn" style="display: none;">Save</button>
                        </td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
<<<<<<< Updated upstream
=======
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
>>>>>>> Stashed changes
    </body>
</html>
