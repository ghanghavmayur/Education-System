<%@page import="com.Mayur.Education.System.Model.admin_courses_model"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<% List<admin_courses_model> listUsers = (List<admin_courses_model>) request.getAttribute("listUsers"); %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #343a40;
            color: #ffffff;
            padding: 20px;
            text-align: center;
        }

        nav {
            background-color: #343a40;
            padding: 10px;
            color: #ffffff;
        }
        
	 	nav a:hover {
			    background-color: #dc3545; 
		}

        .container {
            max-width: 800px;
            margin: 20px auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #dddddd;
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #343a40;
            color: #ffffff;
        }

        tbody tr:hover {
            background-color: #f2f2f2;
        }

        .btn-edit, .btn-delete {
            color: #ffffff;
            text-decoration: none;
            padding: 8px 12px;
            margin-right: 5px;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn-edit {
            background-color: #28a745;
        }

        .btn-delete {
            background-color: #dc3545;
        }

        .btn-primary {
            background-color: #007bff;
            color: #ffffff;
            text-decoration: none;
            padding: 10px 15px;
            border-radius: 4px;
            display: inline-block;
            margin-top: 10px;
        }

        .btn-dark {
            background-color: #343a40;
            color: #ffffff;
            text-decoration: none;
            padding: 10px 15px;
            border-radius: 4px;
            display: inline-block;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1>Manage Courses!</h1>
        </header>
        <nav>
            <a href="<%= request.getContextPath() %>/adlogin" class="btn btn-dark">Logout</a>
        </nav>
        <div class="mt-3">
            <a href="<%= request.getContextPath() %>/admin/add" class="btn btn-primary">Add New Course</a>
        </div>
        <div>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Course Name</th>
                        <th>Provider</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (admin_courses_model admin : listUsers) { %>
                        <tr>
                            <td><%= admin.getCourse_id() %></td>
                            <td><%= admin.getCourse_name() %></td>
                            <td><%= admin.getProvider() %></td>
                            <td>
                                <a href="<%=request.getContextPath()%>/admin/edit/<%=admin.getCourse_id()%>" class="btn btn-success btn-edit">Edit</a>
                                <a href="<%=request.getContextPath()%>/admin/delete/<%=admin.getCourse_id()%>" class="btn btn-danger btn-delete">Delete</a>
                            </td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
