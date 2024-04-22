<%-- 
    Document   : index
    Created on : Apr 20, 2024, 4:02:04 PM
    Author     : Esanki Lakvindee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
        <link rel="stylesheet" href="/AdminPanel/CSS/dashboard.css"/>
        <link rel="stylesheet" href="/AdminPanel/CSS/navbar.css"/>
        <link rel="stylesheet" href="/AdminPanel/CSS/Menu.css"/>
    </head>
    <body>

        <%@ include file="Menu.html" %>
        <%@ include file="navbar.html" %>
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

        <div class="left-section">
            <%@ include file="Menu.html" %>
        </div>
        
        <div class="right-section">
        <div class="navbar">
            <%@ include file="navbar.html" %>
        </div>
        <div class="content">
                <div class="card left">
                    <div class="card-header">Best Sellers</div>
                    <div class="card-body">
                        <form>
                            <label for="text1">Card id:</label>
                            <input type="text" id="text1" name="text1">
                            <br>
                            <label for="image">Image:</label>
                            <input type="file" id="image" name="image">
                            <br>
                            <label for="text1">Product Name:</label>
                            <input type="text" id="text1" name="text1">
                            <br>
                            <label for="text2">Price:</label>
                            <input type="text" id="text2" name="text2">
                            <br>
                            <button type="submit">Submit</button>
                        </form>
                    </div>
                </div>
                <div class="card right">
                    <div class="card-header">New Arrivals</div>
                    <div class="card-body">
                        <form>
                            <label for="text1">Card id:</label>
                            <input type="text" id="text1" name="text1">
                            <br>
                            <label for="image">Image:</label>
                            <input type="file" id="image" name="image">
                            <br>
                            <label for="text1">Product Name:</label>
                            <input type="text" id="text1" name="text1">
                            <br>
                            <label for="text2">Price:</label>

        <div class="left-section">
            <%@ include file="Menu.html" %>
        </div>
        
        <div class="right-section">
        <div class="navbar">
            <%@ include file="navbar.html" %>
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
        </div>
    </body>
</html>
