<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Case Status</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

    <div class="container">

        <h2>View Case Status</h2>

        <table>
            <tr>
                <th>Case No</th>
                <th>Case Status</th>
            </tr>

            <% 
                // Assuming your database connection details
                String url = "jdbc:mysql://localhost/crm";
                String username = "root";
                String password = "";

                Connection connection = null;
                Statement statement = null;
                ResultSet resultSet = null;

                try {
                    // Establish database connection
                    Class.forName("com.mysql.jdbc.Driver");
                    connection = DriverManager.getConnection(url, username, password);

                    // Retrieve case status data from the database
                    String query = "SELECT * FROM case_management";
                    statement = connection.createStatement();
                    resultSet = statement.executeQuery(query);

                    // Display case status data in the table
                    while (resultSet.next()) {
                        out.println("<tr>");
                        out.println("<td>" + resultSet.getString("case_no") + "</td>");
                        out.println("<td>" + resultSet.getString("case_status") + "</td>");
                        out.println("</tr>");
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    // Close resources in the finally block to ensure they are always closed
                    try {
                        if (resultSet != null) {
                            resultSet.close();
                        }
                        if (statement != null) {
                            statement.close();
                        }
                        if (connection != null) {
                            connection.close();
                        }
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            %>

        </table>

    </div>

</body>
</html>
