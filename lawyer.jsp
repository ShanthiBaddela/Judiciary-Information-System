<%@ page import="java.util.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Lawyer Home</title>
    <!-- Bootstrap CSS CDN link -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Custom styles for the navbar and content */
        body {
            /* Specify the background image and its properties */
            background-image: url('/home/naveenkumar/Desktop/index.jpeg');
            background-size: cover; /* Adjust the image to cover the entire container */
            background-position: center; /* Center the image */
            background-repeat: no-repeat;
            color: #333;
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            color: #333;
            font-family: Arial, sans-serif;
        }
        .navbar {
            background-color: #3498db;
            color: #fff;
        }
        .navbar-brand:hover, .navbar-nav .nav-link:hover {
            color: #f8f9fa;
        }
        .container {
            padding-top: 20px;
        }
        .card {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light">
        <a class="navbar-brand" href="#">Lawyer Home</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Dashboard</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Settings</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Content -->
    <div class="container mt-4">
        <% if (session.getAttribute("username") != null) { %>
            <h1>Welcome, <%= session.getAttribute("username") %>!</h1>
        <% } else { %>
            <h1>Welcome!</h1>
        <% } %>
        <!--<h2>Your Role: <%= session.getAttribute("role") %></h2>-->
        <div class="row mt-4">
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">View Cases</h5>
                    <p class="card-text">You can view the cases you are handling.</p>
                    <a href="viewcases.jsp" class="btn btn-primary">View Cases</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Update Case Details</h5>
                    <p class="card-text">You can update details and information about the cases you are involved in.</p>
                    <a href="update-details.jsp" class="btn btn-primary">Update Details</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Legal Research</h5>
                    <p class="card-text">Conduct legal research on relevant cases and laws.</p>
                    <a href="#" class="btn btn-primary">Legal Research</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Previous Content -->
    <div class="mt-4">
        <h2>Previous Content</h2>
        <p>This is where your previous content goes.</p>
        <!-- Include your existing content here -->
    </div>
        <!-- Your content goes here -->

    </div>

    <!-- Bootstrap JS and jQuery CDN links -->
    <!-- ... Bootstrap JS CDN links ... -->
</body>
</html>
