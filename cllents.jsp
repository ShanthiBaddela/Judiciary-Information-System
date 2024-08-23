<!--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>-->
<!DOCTYPE html>
<html>
<head>
    <title>Victim Home</title>
    <!-- Bootstrap CSS CDN link -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Custom styles for the navbar and content */
        /* Add your custom styles here */
        body {
            background-image: url('/home/naveenkumar/Desktop/index.jpeg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: #333;
            /* Default text color */
            font-family: Arial, sans-serif;
            /* Default font *
            background-color: #f8f9fa; /* Background color for the body */
            color: #333; /* Default text color */
            font-family: Arial, sans-serif; /* Default font */
        }
        .navbar {
            background-color: #3498db; /* Navbar background color */
            color: #fff; /* Navbar text color */
        }
        .navbar-brand:hover, .navbar-nav .nav-link:hover {
            color: #f8f9fa; /* Navbar text color on hover */
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
        <a class="navbar-brand" href="#">Victim Home</a>
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
   


<div class="container mt-4">
    <h1>Welcome, Victim!</h1>
    <div class="row mt-4">
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">View Case Updates</h5>
                    <p class="card-text">You can view updates and progress on your case.</p>
                    <a href="#" class="btn btn-primary">View Updates</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Contact Your Lawyer</h5>
                    <p class="card-text">Communicate with your lawyer regarding your case.</p>
                    <a href="#" class="btn btn-primary">Contact Lawyer</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Provide Additional Information</h5>
                    <p class="card-text">You can provide additional information related to your case.</p>
                    <a href="#" class="btn btn-primary">Provide Information</a>
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
</div>

<!-- Bootstrap JS and jQuery CDN links -->
<!-- ... Bootstrap JS CDN links ... -->
</body>
</html>

