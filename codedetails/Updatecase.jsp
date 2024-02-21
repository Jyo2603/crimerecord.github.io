<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Case Status</title>
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

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
        }

        button {
            background-color: #4caf50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
    </style>
</head>
<body>

    <div class="container">

        <h2>Update Case Status</h2>

        <form action="" method="post">
            <label for="case_no">Case No:</label>
            <input type="text" id="case_no" name="case_no" required>

            <label for="case_status">New Case Status:</label>
            <input type="text" id="case_status" name="case_status" required>

            <button type="submit">Update Status</button>
        </form>

        <% 
            // Assuming your database connection details
            String url = "jdbc:mysql://localhost/crm";
            String username = "root";
            String password = "";

            Connection connection = null;
            PreparedStatement preparedStatement = null;

            // Update case status based on the form submission
            if (request.getMethod().equals("POST")) {
                String caseNo = request.getParameter("case_no");
                String newStatus = request.getParameter("case_status");

                try {
                    // Establish database connection
                    Class.forName("com.mysql.jdbc.Driver");
                    connection = DriverManager.getConnection(url, username, password);

                    // Update case status in the database
                    String updateQuery = "UPDATE case_management SET case_status = ? WHERE case_no = ?";
                    preparedStatement = connection.prepareStatement(updateQuery);
                    preparedStatement.setString(1, newStatus);
                    preparedStatement.setString(2, caseNo);
                    preparedStatement.executeUpdate();
                    response.sendRedirect("viewstatus.jsp");

                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    // Close resources in the finally block to ensure they are always closed
                    try {
                        if (preparedStatement != null) {
                            preparedStatement.close();
                        }
                        if (connection != null) {
                            connection.close();
                        }
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            }
        %>

    </div>

</body>
</html>
