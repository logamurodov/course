<%@ page import="uz.pdp.demo11.repos.CourseRepo" %>
<%@ page import="uz.pdp.demo11.entity.Course" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Courses</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f7fc;
        }
        .container {
            width: 90%;
            max-width: 1200px;
            margin: 40px auto;
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 30px;
        }
        .header button, .header input {
            padding: 12px 18px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 6px;
            transition: background-color 0.3s ease;
        }
        .header input {
            width: 220px;
            margin-right: 20px;
        }
        /* Add and Search button styles */
        .header button[type="submit"]:first-child {
            background-color: #333;
            color: white;
        }
        .header button[type="submit"]:nth-child(2) {
            background-color: #333;
            color: white;
        }
        /* Hover effect for Add and Search buttons */
        .header button[type="submit"]:hover {
            background-color: #0056b3;
            color: white;
        }
        .header input:focus {
            outline: none;
            border-color: #007bff;
        }
        /* Enter button styles */
        .header button.enter {
            background-color: #28a745;
            color: white;
            font-size: 18px;
            padding: 15px 30px;
            border-radius: 8px;
            width: 250px;
            display: block;
            margin: 20px auto;
            text-align: center;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .header button.enter:hover {
            background-color: #218838;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
            border-radius: 6px;
        }
        th, td {
            padding: 15px;
            text-align: left;
        }
        th {
            background-color: #007BFF;
            color: white;
        }
        /* Enter button styles */
        .enter {
            background-color: #28a745; /* Yashil rang */
            color: white;
            font-size: 12px; /* Katta font */
            padding: 10px 35px; /* Katta joylashtirish */
            border-radius: 8px; /* Burchaklar yumaloq */
            display: block; /* Tugma markazda joylashishi uchun */
            margin: 0 auto; /* Markazga joylashishi */
            text-align: center; /* Matnni markazlashtirish */
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease; /* Yaxshi effektlar */
        }

        /* Hover effekti - Tugma rangi o'zgaradi */
        .enter:hover {
            background-color: #218838; /* Quyuq yashil rang */
            transform: scale(1.1); /* Kichik kattalashish effekti */
        }

        /* Active tugma effekti */
        .enter:active {
            background-color: #1e7e34; /* Tugma bosilganda yana quyuqroq rang */
            transform: scale(1); /* Tugma bosilganda kattalashish effekti tugaydi */
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .pagination {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
        .pagination button {
            padding: 12px 20px;
            margin: 0 8px;
            border: none;
            background-color: #007BFF;
            color: white;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .pagination button:hover {
            background-color: #0056b3;
        }
        .pagination button:disabled {
            background-color: #ccc;
            cursor: not-allowed;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="header">
        <form action="/addCourse" method="post">
            <button type="submit">Add Course</button>
        </form>
        <form action="/searchCourse" method="get">
            <input type="text" name="search" placeholder="Search courses">
            <button type="submit">Search</button>
        </form>
    </div>

    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Course Name</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <%
            CourseRepo courseRepo = new CourseRepo();
            List<Course> courses = courseRepo.findAll();
            for (Course course : courses) {
        %>

        <tr>
            <td><%= course.getId() %></td>
            <td><%= course.getCourseName() %></td>
            <td>
                <button class="enter">Enter</button>
            </td>

        </tr>

        <%
            }
        %>
        </tbody>
    </table>

    <div class="pagination">
        <!-- Pagination buttons can be added here if needed -->
    </div>
</div>

</body>
</html>
