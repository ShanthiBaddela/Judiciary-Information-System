<!--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>-->
<!DOCTYPE html>
<html>
<head>
    <title>Registrar Home</title>
    <!-- Bootstrap CSS CDN link -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Custom styles for the navbar and content */
        /* Add your custom styles here */
        body {
            background-image: url('image3.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: #333;
            /* Default text color */
            font-family: Arial, sans-serif;
            /* Default font */
            background-color: #f8f9fa; /* Background color for the body */
            color: #333; /* Default text color */
            font-family: Arial, sans-serif; /* Default font */
        }
        .navbar {
            background-color:darkseagreen; /* Navbar background color */
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
            height:180px;
            width:250px;
            background-color:lavender;
        }
        .btn{
            background-color: darkseagreen;
            
        }
        #add{
            
            margin-left: 10px;
            padding:5px 30px;
        }

        #del{
            margin-left:15px;
            padding:5px 15px;/* Push the right button to the right by setting margin-left to auto */
        }
        .options-container{
            position: relative;
            display: inline-block;
        }
        
        .option-container{
            position: relative;
            display: inline-block;
        }
         .addacc {
            display: none;
            position: absolute;
            top: 100%;
            left: 0;
            background-color: #f9f9f9;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            border-radius: 4px;
            padding: 10px;
            z-index: 1;
        }
         .delacc {
            display: none;
            position: absolute;
            top: 100%;
            left: 0;
            background-color: #f9f9f9;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            border-radius: 4px;
            padding: 10px;
            z-index: 1;
        }

        .options-container:hover .addacc {
            display: block;
        }
        
        .option-container:hover .delacc {
            display: block;

        /* Additional styling for the button */
        

        /* Styling for individual options */
        .option {
            margin-bottom: 8px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    
    <nav class="navbar navbar-expand-lg navbar-light">
        <a class="navbar-brand" href="#">Registrar Home</a>
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
        <h1>Welcome, Registrar!</h1>
        <div class="row mt-3">
            <div class="col-md-3">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Add Cases</h5>
                        <p class="card-text">You can add a new or closed cases here.</p>
                        <center><a href="" class="btn">Add Cases</a></center>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Assign Cases</h5>
                        <p class="card-text">You can assign cases here.</p><br>
                        <center><a href="#" class="btn">Assign Cases</a></center>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">View Cases</h5>
                        <p class="card-text">You can view cases here.</p><br>
                        <center><a href="#" class="btn">View Cases</a></center>
                    </div>
                </div>
            </div>
            
            <div class="col-md-3">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Add/Delete</h5>
                        <p class="card-text">You can add or delete accounts here.</p>
                        <div class="options-container">
                        <a href="#" class="btn" id="add">Add</a>
                        <div class="addacc">
            <div class="option"><a href="addjudge.jsp">Judge</a></div>
            <div class="option"><a href="addlawyer.jsp">Lawyer</a></div>
            <div class="option"><a href="addcustomer.jsp">Customer</a></div>
        </div>
                       </div> 
                        <div class="option-container">
                        <a href="#" class="btn" id="del" >Delete</a>
                        <div class="delacc">
                            <div class="option"><a href="">Judge</a></div>
                            <div class="option"><a href="">Lawyer</a></div>
                            <div class="option"><a href="">Customer</a></div>
        </div>
                        </div>
                    </div>
                </div>
            </div>
            
            
        </div>

    </div>

    <!-- Bootstrap JS and jQuery CDN links -->
    <!-- ... Bootstrap JS CDN links ... -->
</body>
</html>

