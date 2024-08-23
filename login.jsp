
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <!-- Bootstrap CSS CDN link -->
      <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open Sans">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            /* Specify the background image and its properties */
            background-image: url('images11.jpeg');
            background-size: cover; /* Adjust the image to cover the entire container */
            background-position: center; /* Center the image */
            height: 100vh; /* Set full viewport height */
            margin: 0; /* Remove default margin */
            display: flex;
            justify-content: flex-end; /* Align content to the right */
            align-items: center;
        }

        .login-form {
            background-color: transparent;/* Optional: Style for the login form container */
         
            padding : 20px;
            border-radius: 10px;
            box-shadow: 50px 50px 50px 50px rgba(0,0,0,0.5); /* Optional shadow effect */
            width: 300px;
            height: 350px;
            color:aqua;
            font-size:20px;/* Set a fixed width for the login form */
        }

        /* Optional: Style for the form elements */
        .form-control {
            margin-bottom: 10px;
        }

        /* Optional: Style for the login button */
        .btn-login {
            width: 100%;
            background-color:darkslategrey;
            color: bisque;
            font-size: 20px
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row justify-content-end"> <!-- Align content to the right -->
            <div class="col-md-4">
                <div class="login-form">
                    <h2 class="text-center mb-4">Login</h2>
                    <form action="LoginServlet" method="post">
                        <div class="form-group">
                            <label for="username">Username:</label>
                            <input type="text" class="form-control" id="IdUsername" name="username">
                        </div>
                        <div class="form-group">
                            <label for="password">Password:</label>
                            <input type="password" class="form-control" id="IdPassword" name="password">
                        </div>
                        <button type="submit" class="btn btn-login"><b>Login</b></button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and jQuery CDN links (optional, for Bootstrap JS components) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
