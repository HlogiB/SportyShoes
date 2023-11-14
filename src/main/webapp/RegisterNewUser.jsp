<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Sporty Shoe Store</title>
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

        .registration-container {
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
            background-color: #28a745;
            color: #fff;
            border: none;
            padding: 10px 20px;
            margin-top: 20px;
            border-radius: 20px;
            cursor: pointer;
        }

        button:hover {
            background-color: #218838;
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
    <div class="registration-container">
        <form action="register.php" method="POST">
            <h2>Register</h2>
            <div class="input-container">
                <label for="customerID">Customer ID</label>
                <input type="text" id="customerID" name="customerID" placeholder="Enter your Customer ID" required>
            </div>
            <div class="input-container">
                <label for="customerName">Customer Name</label>
                <input type="text" id="customerName" name="customerName" placeholder="Enter your Customer Name" required>
            </div>
            <div class="input-container">
                <label for="customerEmail">Customer Email</label>
                <input type="email" id="customerEmail" name="customerEmail" placeholder="Enter your Customer Email" required>
            </div>
            <div class="input-container">
                <label for="customerPhoneNumber">Customer Phone Number</label>
                <input type="tel" id="customerPhoneNumber" name="customerPhoneNumber" placeholder="Enter your Customer Phone Number" required>
            </div>
            <div class="input-container">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter your Password" required>
            </div>
            <div class="input-container">
                <label for="customerAddress">Customer Address</label>
                <input type="text" id="customerAddress" name="customerAddress" placeholder="Enter your Customer Address" required>
            </div>
            <div class="input-container">
                <label for="customerCardInfoID">Customer Card Info ID</label>
                <input type="text" id="customerCardInfoID" name="customerCardInfoID" placeholder="Enter your Customer Card Info ID" required>
            </div>
            <button type="submit">Register</button>
        </form>
        <p>Already have an account? <a href="Login.jsp">Login</a></p>
    </div>
</body>
</html>
