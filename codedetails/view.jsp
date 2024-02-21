+<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*" %>

<%
    String url = "jdbc:mysql://localhost/crm";
    String dbUsername = "root";
    String dbPassword = "";

    try {
        Connection connection = DriverManager.getConnection(url, dbUsername, dbPassword);

        // Fetch all records from the database
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT * FROM criminals");

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Criminal Records</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1000px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        h2 {
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #4caf50;
            color: white;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Criminal Records</h2>

        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Date of Birth</th>
                    <th>Gender</th>
                    <th>Address</th>
                    <th>Crime Type</th>
                    <th>Crime Date</th>
                    <th>Location</th>
                    <th>Description</th>
                    <th>Crime Case Number</th>
                </tr>
            </thead>
            <tbody>
<%
        // Iterate through the result set and display records
        while (resultSet.next()) {
%>
                <tr>
                    <td><%= resultSet.getInt("id") %></td>
                    <td><%= resultSet.getString("first_name") %></td>
                    <td><%= resultSet.getString("last_name") %></td>
                    <td><%= resultSet.getDate("date_of_birth") %></td>
                    <td><%= resultSet.getString("gender") %></td>
                    <td><%= resultSet.getString("address") %></td>
                    <td><%= resultSet.getString("crime_type") %></td>
                    <td><%= resultSet.getDate("crime_date") %></td>
                    <td><%= resultSet.getString("location") %></td>
                    <td><%= resultSet.getString("description") %></td>
                    <td><%= resultSet.getString("crime_case_no") %></td>
                </tr>
<%
        }
%>
            </tbody>
        </table>
    </div>

</body>
</html>

<%
        // Close resources
        resultSet.close();
        statement.close();
        connection.close();
    } catch (SQLException e) {
        e.printStackTrace();
        out.println("Error: " + e.getMessage());
    }
%>
