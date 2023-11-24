<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home Page</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        header {
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
        }

        nav {
            background-color: #4CAF50;
            overflow: hidden;
        }

        nav a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        nav a:hover {
            background-color: #ddd;
            color: black;
        }

        section {
            padding: 20px;
        }
    </style>
</head>
<body>
    <header>
        <h1>Admin Home Page</h1>
    </header>

    <nav>
        <a href="ChangePassword.jsp">Change Password</a>
        <a href="GetAllSales">View All Sales</a>
        <a href="CustomerList">View All Customers</a>
        <a href="#viewCustomerByID">View Customer by ID</a>
    </nav>


      <section id="videoSection">
        <h2>Video Section</h2>
        <!-- Add the video here -->
        <video width="640" height="360" controls>
            <source src="your-video.mp4" type="video/mp4">
            Your browser does not support the video tag.
        </video>
    </section>
    

   

  

    <!-- Add other sections as needed -->

    <footer>
        Developed by Elelwani Magoba<br>
        You can contact me at email: <a href="mailto:elelwanimagoba@gmail.com">elelwanimagoba@gmail.com</a>
    </footer>
</body>
</html>
