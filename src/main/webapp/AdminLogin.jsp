<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .login-container {
            max-width: 400px;
            margin: 100px auto;
            padding: 20px;
            background-color: white;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            font-size: 16px;
            margin-bottom: 5px;
        }

        input {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 10px;
        }

        button {
            padding: 10px 20px;
            font-size: 18px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<div class="login-container">
    <h1>Admin Login</h1>
    <form id="admin-login-form">
        <div class="form-group">
            <label for="admin-username">Username:</label>
            <input type="text" id="admin-username" required>
        </div>
        <div class="form-group">
            <label for="admin-password">Password:</label>
            <input type="password" id="admin-password" required>
        </div>
        <button type="button" onclick="authenticateAdmin()">Login</button>
    </form>
</div>

<script>
    function authenticateAdmin() {
        // Replace this with your actual authentication logic
        const username = document.getElementById('admin-username').value;
        const password = document.getElementById('admin-password').value;

        // Example: Check if username and password match a predefined admin credentials
        if (username === 'admin' && password === 'admin123') {
            alert('Login successful. Redirecting to admin page.');
            // Redirect to the admin page
            window.location.href = 'admin-page.html';
        } else {
            alert('Invalid credentials. Please try again.');
        }
    }
</script>

</body>
</html>
