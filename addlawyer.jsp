

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://fonts.googleapis.com/css?family=Alkalami' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Amaranth' rel='stylesheet'>
     <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <title>Add Account</title>
    <style>
        
         body {
            background-image: url('image16.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            
            /* Default text color */
            font-family: Arial, sans-serif;
            /* Default font */
            background-color: #f8f9fa; /* Background color for the body */
             /* Default text color */
            font-family: Arial, sans-serif; /* Default font */
        }
        .navbar {
            background-color: darkseagreen; /* Navbar background color */
            color: #fff; /* Navbar text color */
        }
        .navbar-brand:hover, .navbar-nav .nav-link:hover {
            color: #f8f9fa; /* Navbar text color on hover */
        }
        .container {
            padding:0px 0px 0px 320px;
        }
        .card {
            margin-bottom: 20px;
        }
        form {
            max-width: 400px;
            margin: 0 auto;
        }

        label {
            
            margin-bottom: 5px;
        }

        input, select {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            
        }

        button {
            background-color: #83488a;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #460f4d;
        }
        .login-form {
            background-color: transparent;/* Optional: Style for the login form container */
            
            padding : 20px;
            border-radius: 30px;
            box-shadow: 50px 50px 50px 50px rgba(0,0,0,0.5); /* Optional shadow effect */
            width: 300px;
            height: 400px;
            color:#a6910d;
            font-family: Amaranth ;
            font-size:22px;/* Set a fixed width for the login form */
        }
        .form-control {
            margin-bottom: 10px;
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
 </nav><br><br>
<div class="container">
    <h2  style="font-family: 'Alkalami';color:#460f4d">Add Lawyer Account</h2>
    <div class="login-form">
    <form action="AddAccountServlet" method="post">
        <label for="username">Username:</label>
        <input type="text" class="form-control" id="username" name="username" required>

        <label for="username">Name:</label>
        <input type="text" class="form-control" id="name" name="name" required><!-- comment -->
        
        <label for="password">Password:</label>
        <input type="password" class="form-control" id="password" name="password" required><br>

        
        <button type="submit">Add Account</button>
    </form>
    </div>
</div>

</body>
</html>
