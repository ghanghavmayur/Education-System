<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>adding</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        form {
            max-width: 500px;
            margin: 0 auto;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
        }
 
        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }

        .text-center {
            text-align: center;
        }

        .btn {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn-secondary {
            background-color: #6c757d;
        }
    </style>
</head>
<body>
    <div>
        <div style="text-align: center;"><h2>Add Course</h2></div>
        
        <form action="<%= request.getContextPath() %>/admin/save" method="post" style="max-width: 500px; margin: 0 auto;">
            <div class="border border-secondary rounded p-3">
                <div class="form-group">
                    <label>ID</label>
                    <input type="text" name="course_id" value="${admin.course_id}">
                </div>

                <div class="form-group">
                    <label>Course Name</label>
                    <input type="text" name="course_name" value="${admin.course_name}">
                </div>

                <div class="form-group">
                    <label>Provider</label>
                    <input type="text" name="provider" value="${admin.provider}">
                </div>

                <div class="text-center">
                    <button type="submit" class="btn">Save</button>
                    <button type="button" class="btn btn-secondary" onclick="cancelForm()">Cancel</button>
                </div>
            </div>
        </form>
    </div>

    <script type="text/javascript">
        function cancelForm() {
            window.location = '/admin/courses';
        }
    </script>
</body>
</html>
