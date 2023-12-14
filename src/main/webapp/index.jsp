<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
<% %>
<!DOCTYPE html>
<html>
    <head>
        <title>KSRCT-Project</title>
        <link rel="stylesheet" href="styles.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="icon" type="image/x-icon" href="/img/logo.png">
    </head>
<body>
    <section class="header">
        <nav>
            <img src="img/logo.png">
            <div>
                <h2>K.S.RANGASAMY<h1>COLLEGE OF TECHNOLOGY</h1></h2>
            </div>
            <div class="nav-links">
            <ul>
                <li><a href="about.jsp">About</a></li>
                <li><a href="view.jsp">Report</a></li>
                <li><a href="login.jsp">Login</a></li>
            </ul>
            </div>
        </nav>
        <div class="text-box">
            <h1>Final Year Project</h1>
            <h2>Registeration Portal</h2><br>    
            <div class="reg-link">
                <a href="register.jsp"><button class="btn1">Click to Register</button></a>
                <a href="view.jsp"><button class="btn2">View Report</button></a>
            </div>
        </div>
    </section>
</body>
</html>