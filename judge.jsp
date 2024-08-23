<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Judge Home</title>
    <!-- Bootstrap CSS CDN link -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Custom styles for the navbar and content */
        body {
            background-image: url('/home/naveenkumar/Desktop/index.jpeg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: #333;
            /* Default text color */
            font-family: Arial, sans-serif;
            /* Default font */
        }

        .navbar {
            background-color: #3498db;
            /* Navbar background color */
            color: #fff;
            /* Navbar text color */
        }

        .navbar-brand:hover,
        .navbar-nav .nav-link:hover {
            color: #f8f9fa;
            /* Navbar text color on hover */
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
        <a class="navbar-brand" href="#">Judge Home</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
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
            <h3>Welcome, <%= session.getAttribute("username") %>!</h3>
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
                        <a href="judgeviewcases.jsp" class="btn btn-primary">View Cases</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Update Case Status</h5>
                        <p class="card-text">You can update the status of the cases you are handling.</p>
                        <a href="#" class="btn btn-primary">Update Status</a>
                    </div>
                </div>
            </div>
            <!-- Add more cards here... -->
        </div>
    </div>

    <!-- Bootstrap JS and jQuery CDN links -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
