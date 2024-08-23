<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
    <title>Judge View Cases</title>
    <!-- Bootstrap CSS CDN link -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-4">
        <h1>Judge View Cases</h1>
        <table class="table table-bordered mt-4">
            <thead>
                <tr>
                    <th>Case ID</th>
                    <th>Judge Name</th>
                    <th>Case Details</th>
                    <th>Case Status</th>
                    <th>Lawyer Name</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    String jdbcURL = "jdbc:mysql://localhost:3306/judiciary";
                    String dbUser = "root";
                    String dbPassword = "9866774004";

                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
                        HttpSession sessionObj = request.getSession(); // Renamed the variable to sessionObj
                        String loggedInJudge = (String) sessionObj.getAttribute("loggedInJudge");
                        
                        PreparedStatement statement = conn.prepareStatement("SELECT * FROM JudgeCases WHERE UserName = ?");
                        statement.setString(1, loggedInJudge);
                        
                        ResultSet resultSet = statement.executeQuery();

                        while(resultSet.next()) {
                %>
                            <tr>
                                <td><%= resultSet.getString("CaseID") %></td>
                                <td><%= resultSet.getString("UserName") %></td>
                                <td><%= resultSet.getString("CaseDetails") %></td>
                                <td><%= resultSet.getString("CaseStatus") %></td>
                                <td><%= resultSet.getString("lawyername") %></td>
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
            </tbody>
        </table>
    </div>

    <!-- Bootstrap JS and jQuery CDN links -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
