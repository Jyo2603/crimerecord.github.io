<%-- 
    Document   : dashboradpage
    Created on : 13 Feb, 2024, 10:21:40 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        nav {
            background-color: #333;
            color: white;
            padding: 10px;
            text-align: center;
        }

        nav a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            margin: 0 10px;
            border-radius: 3px;
            background-color: #555;
        }

        .content {
            padding: 20px;
        }
    </style>
</head>
<body>

    <nav>
        <a href="Addrecord.jsp">Add Criminal Record</a>
        <a href="crimedetails.jsp">View Details</a>
         <a href="Updatecase.jsp">Manage Cases</a>
          <a href="viewstatus.jsp">View Cases status</a>
    </nav>

    <div class="content">
        <!-- Your dashboard content goes here -->
        <h2>Welcome to the Dashboard</h2>
        <p>You can navigate to different sections using the links above.</p>
    </div>

</body>
</html>

