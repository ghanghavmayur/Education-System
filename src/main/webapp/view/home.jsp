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
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            color: #555;
        }
        h1 font {
            color: brown;
        }
        .features {
            margin-top: 30px;
            text-align: left;
        }
        .carousel {
            max-width: 100%;
            margin: 20px 0;
            overflow: hidden;
        }
        .carousel img {
            width: 100%;
            border-radius: 8px;
        }
        .updates {
            margin-top: 30px;
            text-align: left;
        }
        .updates h2 {
            color: brown;
        }
        .updates ul {
            list-style-type: none;
            padding: 0;
        }
        .updates li {
            margin-bottom: 15px;
        }

        /* Media Queries */
        @media screen and (max-width: 600px) {
            .container {
                padding: 10px;
            }
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
        <h1><font color="Brown">Welcome to our Educational Platform</font></h1>
        <p>Explore a world of knowledge and opportunities.</p>
        
        <div class="carousel">
            <!-- Add carousel images and captions -->
            <img src="image1.jpg" alt="Image 1">
            <img src="image2.jpg" alt="Image 2">
            <img src="image3.jpg" alt="Image 3">
            <!-- Add more images as needed -->
        </div>
        
        <div class="features">
            <h2>Key Features:</h2>
            <ul>
                <li>Wide range of courses in various subjects.</li>
                <li>Interactive learning materials and resources.</li>
                <li>Experienced and qualified instructors.</li>
                <li>Flexible scheduling to fit your busy lifestyle.</li>
                <li>Engaging community for collaborative learning.</li>
            </ul>
        </div>
        
        <div class="updates">
            <h2>Recent Updates:</h2>
            <ul>
                <li>New course added: "Introduction to Artificial Intelligence."</li>
                <li>Join our webinar on "Career Opportunities in IT" on [Date].</li>
                <li>Check out our blog for study tips and success stories.</li>
            </ul>
        </div>
        
        <p>Start your educational journey today!</p>
    </div>
</body>
</html>


