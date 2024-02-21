<%@ page import="java.sql.*" %>
<%
// Connect to the MySQL database
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/crm", "root", "");

// Insert data from the form into the criminals table
if (request.getMethod().equals("POST")) {
    String firstName = request.getParameter("first_name");
    String lastName = request.getParameter("last_name");
    String dateOfBirth = request.getParameter("date_of_birth");
    String gender = request.getParameter("gender");
    String address = request.getParameter("address");
    String crimeType = request.getParameter("crime_type");
    String crimeDate = request.getParameter("crime_date");
    String location = request.getParameter("location");
    String description = request.getParameter("description");
    String crimeCaseNo = request.getParameter("crime_case_no");

    // Insert into criminals table
    PreparedStatement pstmtCriminals = con.prepareStatement("INSERT INTO criminals (first_name, last_name, date_of_birth, gender, address, crime_type, crime_date, location, description, crime_case_no) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
    pstmtCriminals.setString(1, firstName);
    pstmtCriminals.setString(2, lastName);
    pstmtCriminals.setDate(3, Date.valueOf(dateOfBirth));
    pstmtCriminals.setString(4, gender);
    pstmtCriminals.setString(5, address);
    pstmtCriminals.setString(6, crimeType);
    pstmtCriminals.setDate(7, Date.valueOf(crimeDate));
    pstmtCriminals.setString(8, location);
    pstmtCriminals.setString(9, description);
    pstmtCriminals.setString(10, crimeCaseNo);
    pstmtCriminals.executeUpdate();
    pstmtCriminals.close();

    // Insert into case_management table
    PreparedStatement pstmtCaseManagement = con.prepareStatement("INSERT INTO case_management (case_no, case_status) VALUES (?, ?)");
    pstmtCaseManagement.setString(1, crimeCaseNo);
    pstmtCaseManagement.setString(2, "Pending"); // Assuming the initial status is "Pending"
    pstmtCaseManagement.executeUpdate();
    pstmtCaseManagement.close();

    con.close();

    response.sendRedirect("view.jsp");
}
%>
