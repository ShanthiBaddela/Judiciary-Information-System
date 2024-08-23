<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lawyer Cases</title>
    <!-- Bootstrap CSS CDN link -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-4">
        <h1>Lawyer Cases</h1>
        <table class="table table-bordered mt-4">
            <thead>
                <tr>
                    <th>Case ID</th>
                    <th>Case Details</th>
                    <th>Current Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <!-- Java code to retrieve cases -->
                <% 
                    String jdbcURL = "jdbc:mysql://localhost:3306/judiciary";
                    String dbUser = "root";
                    String dbPassword = "9866773003";

                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
                        PreparedStatement statement = conn.prepareStatement("SELECT * FROM LawyerCases where LawyerUsername = ?");
                        
                        // Get lawyer's username from session
                        String lawyerUsername = (String) session.getAttribute("username");
                        statement.setString(1, lawyerUsername);

                        ResultSet resultSet = statement.executeQuery();

                        while(resultSet.next()) {
                %>
                            <tr>
                                <td><%= resultSet.getString("CaseID") %></td>
                                <td><%= resultSet.getString("CaseDetails") %></td>
                                <td><%= resultSet.getString("CaseStatus") %></td>
                                <td>
                                    <!-- Add a form to update case status -->
                                    <form action="UpdateCaseStatusServlet" method="post">
                                        <input type="hidden" name="caseID" value="<%= resultSet.getString("CaseID") %>">
                                        <select name="newStatus" class="form-control">
                                            <option value="Pending">Pending</option>
                                            <option value="In Progress">In Progress</option>
                                            <option value="Closed">Closed</option>
                                        </select>
                                        <button type="submit" class="btn btn-primary mt-2">Update Status</button>
                                    </form>
                                </td>
                            </tr>
                <% 
                        }
                        resultSet.close();
                        statement.close();
                        conn.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
                <!-- End of Java code -->
            </tbody>
        </table>
    </div>

    <!-- Bootstrap JS and jQuery CDN links -->
    <!-- ... Bootstrap JS CDN links ... -->
</body>
</html>
