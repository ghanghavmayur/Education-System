<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mayur Ghanghav</title>

    <!-- Favicon -->
    <link rel="icon" href="img/M-Logo.jpg">

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
            color: #555;
        }

        a {
            color: #3498db;
            text-decoration: none;
        }

        a:hover {
            color: #555;
        }

        h1 {
            color: brown;
        }

        form {
            max-width: 400px;
            width: 80%; /* Adjusted width for responsiveness */
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
        }

        label {
            display: block;
            margin: 8px 0;
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

        .input-container a {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #3498db;
        }

        /* Responsive styles */
        @media (max-width: 600px) {
            form {
                max-width: 100%; /* Adjusted width for smaller screens */
           		margin: 20px;
            }
        }
    </style>
</head>
<body>
    <br><br><br><br><br><br><br><br>
    <center>
        <marquee>
            <font color="Brown">******** Develoed By Mayur Ghanghav ********</font>
        </marquee>

        <h1><font color="Brown">Create Account Page</font></h1>

        <form action="createaccount" method="post">
            username &nbsp<input type="text" name="username"><br><br>
            password &nbsp<input type="password" name="password"><br><br>  
            <input type="submit" value="create">&nbsp&nbsp 
            <input type="reset" value="reset"><br>
            <br>
            <div class="input-container">
                <a href="loginpage">Back To Login</a>
            </div>
        </form>
    </center>
</body>
</html>
