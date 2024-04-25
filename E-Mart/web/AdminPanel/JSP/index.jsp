<%-- 
    Document   : index
    Created on : Apr 20, 2024, 4:02:04 PM
    Author     : Esanki Lakvindee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="Model.DAO"%>
<%@page import="Model.Smartphone"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
        <link rel="stylesheet" href="/AdminPanel/CSS/navbar.css"/>
        <link rel="stylesheet" href="/AdminPanel/CSS/Menu.css"/>
        <link rel="stylesheet" href="/AdminPanel/CSS/dashboard.css"/>
    </head>
    <body>
        
        <% 
            List<Smartphone> products = DAO.getAllSmartphones();
            for (Smartphone item : products) {
        %>
        <p><%= item.getColor() %></p>
        <% } %>
        <!--        <div class="left-section">
        
    </div>
    
    <div class="right-section">
    <div class="navbar">
        
    </div>
    <div class="content">
            <div class="card left">
                <div class="card-header">Card 1</div>
                <div class="card-body">
                    <form>
                        <label for="image">Image:</label>
                        <input type="file" id="image" name="image">
                        <br>
                        <label for="text1">Text 1:</label>
                        <input type="text" id="text1" name="text1">
                        <br>
                        <label for="text2">Text 2:</label>
                        <input type="text" id="text2" name="text2">
                        <br>
                        <button type="submit">Submit</button>
                    </form>
                </div>
            </div>
            <div class="card right">
                <div class="card-header">Card 2</div>
                <div class="card-body">
                    <form>
                        <label for="image">Image:</label>
                        <input type="file" id="image" name="image">
                        <br>
                        <label for="text1">Text 1:</label>
                        <input type="text" id="text1" name="text1">
                        <br>
                        <label for="text2">Text 2:</label>
                        <input type="text" id="text2" name="text2">
                        <br>
                        <button type="submit">Submit</button>
                    </form>
                </div>

            </div>
        </div>
    </div>-->
    </body>
</html>
