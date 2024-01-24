<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <!-- Favicon -->
    <link rel="icon" href="img/M-Logo.jpg">
</head>
<body>
    <center>
        <a href="homePage">Home</a>
    </center>
    
    <div class="login-container">
        <center>
            <marquee>
                <font color="Brown">******** Admin Login ********</font>
            </marquee>
            
            <form action="adminlogin" method="post">
                <label for="admin_name">Admin Name</label>
                <input type="text" name="admin_name" id="admin_name" required><br>
                
                <label for="password">Password</label>
                <input type="password" name="password" id="password" required><br>
                
                <div class="button-container">
                    <input type="submit" value="Login">
                    <input type="reset" value="Reset"><br>
                </div>
            </form>
            
            <% if (request.getAttribute("msg") != null) { %>
                <div style="color: red;">
                    <%= request.getAttribute("msg") %>
                </div>
            <% } %>  
        </center>
    </div>
</body>
</html>

<style>
    <style>
body {
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
    margin: 0;
    padding: 0;
    font-family: 'Arial', sans-serif;
}

center {
    text-align: center;
}

a {
    color: white;
    text-decoration: none;
}

a:hover {
    color: #ddd;
}

.login-container {
    background-color: rgba(255, 255, 255, 0.9);
    padding: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    border-radius: 8px;
    max-width: 400px;
    margin: 50px auto;
}

form {
    text-align: left;
}

label {
    display: block;
    margin-bottom: 8px;
    color: #555;
}

input[type="text"],
input[type="password"] {
    width: 100%;
    padding: 10px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
}

.button-container {
    text-align: center;
    margin-top: 20px;
}

input[type="submit"],
input[type="reset"] {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    margin: 8px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type="submit"]:hover,
input[type="reset"]:hover {
    background-color: #45a049;
}
</style>
</style>
