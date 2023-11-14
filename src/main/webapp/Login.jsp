<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Sporty Shoe Store</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #000;
            color: #fff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .video-container {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            overflow: hidden;
        }

        video {
            object-fit: cover;
            width: 100%;
            height: 100%;
            z-index: -1;
        }

        .login-container {
            background: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
            box-shadow: 0px 0px 20px 0px #000;
            text-align: center;
            padding: 20px;
            border-radius: 10px;
            width: 400px; /* Adjust the width as needed */
        }

        form {
            display: flex;
            flex-direction: column;
        }

        h2 {
            margin-bottom: 20px;
            font-size: 24px;
        }

        .input-container {
            margin: 10px 0;
            text-align: left;
        }

        label {
            display: block;
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: none;
            border-radius: 20px;
        }

        button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            margin-top: 20px;
            border-radius: 20px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        a {
            text-decoration: none;
            color: #007bff;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>  
    <div class="login-container">
        <form action="login.php" method="POST">
            <h2>Login</h2>
            <div class="input-container">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" placeholder="Enter your username" required>
            </div>
            <div class="input-container">
                <label for "password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required>
            </div>
            <button type="submit"><a href="products.jsp">Login</a></button>
        </form>
        <p>Don't have an account? <a href="products.jsp">Register</a></p>
    </div>
</body>
</html>
