<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mayur Ghanghav</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
           
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #333;
            color: white;
            padding: 10px;
            text-align: center;
        }
        nav {
            background-color: #555;
            overflow: hidden;
        }
        nav a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        nav a:hover {
            background-color: #ddd;
            color: black;
        }
        .container {
            text-align: center;
            padding: 20px;
            color: #555;
        }
        form {
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Added box-shadow */
            border-radius: 8px;
            max-width: 400px;
            margin: 0 auto;
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"], input[type="reset"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <header>
        <h1>Mayur Ghanghav</h1>
    </header>
    <nav>
        <a href="homePage">Home</a>
        <a href="aboutpage">About</a>
        <a href="coursepage">Courses</a>
        <a href="contactpage">Contact</a>
        <a href="loginpage">Logout</a>
    </nav>
    <div class="container">
        <h1>Contact Page</h1>
        
        <!-- Contact Form -->
        <form action="contact" method="post">
            Name: <input type="text" name="name" required><br>
            Address: <input type="text" name="address" required><br>
            Email: <input type="text" name="email" required><br>
            Mobile: <input type="text" name="mobile" required><br>
            <input type="submit" value="Submit">
            <input type="reset" value="Reset">
        </form>
    </div>
</body>
</html>

