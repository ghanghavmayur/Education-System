<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mayur Ghanghav Education - Admin Panel</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
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
        }
        .course {
            display: inline-block;
            margin: 20px;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            transition: transform 0.3s;
        }
        .course:hover {
            transform: scale(1.05);
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"]{
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <header>
        <h1>Mayur Ghanghav Education</h1>
    </header>
    <nav>
         <a href="homePage">Home</a>
        <a href="aboutpage">About</a>
        <a href="coursepage">Courses</a>
        <a href="contactpage">Contact</a>
        <a href="loginpage">Logout</a>
    </nav>
    <div class="container">
        <h1 style="color: #555;">Explore Our Courses</h1>

        <!-- Display the list of courses -->
        <c:forEach var="course" items="${listUsers}">
            <div class="course">
                <h2>Course ID: ${course.course_id}</h2>
                <p>Course Name: ${course.course_name}</p>
                <p>Provider: ${course.provider}</p>
                <input type="submit" value="Enroll">
            </div>
        </c:forEach>
    </div>
</body>
</html>
