<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        <link rel="stylesheet" href="/AdminPanel/CSS/Profile.css"/>
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
                <div class="profile-card">
                    <div class="profile-pic">
                        <img src="/AdminPanel/Images/profile.png" alt="Profile Picture">
                        <div class="profile-info">
                            <h2>User Profile</h2>
                            <% HttpSession currentSession = request.getSession(false);
                               if (currentSession != null && currentSession.getAttribute("email") != null) {
                                   String email = (String) currentSession.getAttribute("email");
                            %>
                            <p>Email: <%= email %></p>
                            <% } else { %>
                            <p>No user logged in</p>
                            <% } %>
                        </div>
                    </div>
                </div>

            </div>

            <script src="/AdminPanel/JS/profile.js"></script>
        </div>
    </body>
</html>
