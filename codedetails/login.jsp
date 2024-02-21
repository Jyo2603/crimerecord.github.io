<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*" %>

<%
    String url = "jdbc:mysql://localhost/crm";
    String dbUsername = "root";
    String dbPassword = "";

    String enteredUsername = request.getParameter("username");
    String enteredPassword = request.getParameter("password");

    try {
        // Establish database connection
        Connection connection = DriverManager.getConnection(url, dbUsername, dbPassword);

        // Check if the entered username and password match the default values
        if ("Admin".equals(enteredUsername) && "Admin".equals(enteredPassword)) {
            // Authentication successful
            session.setAttribute("username", enteredUsername);
            response.sendRedirect("dashboradpage.jsp");
        } else {
            // Authentication failed
            out.println("Invalid username or password. Please try again.");
        }

        // Close the connection
        connection.close();
    } catch (SQLException e) {
        e.printStackTrace();
        out.println("Error connecting to the database.");
    }
%>
