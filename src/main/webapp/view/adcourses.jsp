<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Admin Courses</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <!-- Custom CSS -->
    <style>
        body {
            background-color: #f8f9fa;
        }

        .container {
            margin-top: 50px;
        }

        .card {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #dee2e6;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #007bff;
            color: #ffffff;
        }

        .update-btn, .delete-btn, .add-btn {
            margin-right: 5px;
        }
    </style>
</head>

<body>
    <div class="container">
        <h3>Admin Courses</h3>
        <div class="card">
            <div class="card-body">
                <div class="col-md-10">
                    <a href="/admin/add-course" class="btn btn-success add-btn">
                        Add Course
                    </a>
                    
                    <table class="table table-striped table-responsive-md">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Course Name</th>
                                <th>Provider</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="course" items="${courses}">
                                <tr>
                                    <td>${course.course_id}</td>
                                    <td>${course.course_name}</td>
                                    <td>${course.provider}</td>
                                    <td>
                                        <a href="/admin/course-update/${course.course_id}" class="btn btn-primary update-btn">
                                            Update
                                        </a>
                                    </td>
                                    <td>
                                        <a href="/admin/course-delete/${course.course_id}" class="btn btn-danger delete-btn">
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
