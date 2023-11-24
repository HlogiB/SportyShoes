<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            text-align: center;
        }

        header {
            background-color: #333;
            color: white;
            padding: 10px;
            text-align: center;
        }

        h1 {
            margin: 40px 0 20px;
        }

        p {
            margin-top: 10px;
        }

        #delivery-info {
            margin-top: 20px;
        }

        #confirmation-message {
            font-size: 18px;
            font-weight: bold;
            color: #4CAF50;
            margin-top: 20px;
        }

        #back-to-store {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #333;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            cursor: pointer;
        }

        #back-to-store:hover {
            background-color: #555;
        }
    </style>
</head>
<body>

<header>
    <i class="fa fa-shopping-cart"></i>
</header>

<h1>Order Confirmation</h1>

<div id="confirmation-message">
    <p>Your order has been received and is being processed. It will be delivered to you in two working days.</p>
</div>

<div id="delivery-info">
    <p>Delivery Information:</p>
    <p>Name: Tshepo</p>
    <p>Address: 725 Mokokone Street </p>
    <p>Contact Number: 0673516172</p>
    <p>Email: Tshep@gmail.com</p>
</div>

<br/>
<div id="delivery-info">
    <p>If you have queries regarding your order contact us on</p>   
    <p>Contact Number: +27 773516172</p>
    <p>Email: ElellwaniSportyShoes@gmail.com</p>
</div>

<br/>
<a href="MainPage.jsp" id="back-to-store">Back to Store</a>

</body>
</html>
