<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shoe Store</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        header {
            background-color: #333;
            color: white;
            padding: 10px;
            text-align: center;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
        }

        header i {
            font-size: 24px;
            cursor: pointer;
        }

        h1 {
            margin: 40px 0 20px;
            text-align: center;
        }

        .top-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
        }

        .shoe-size-dropdown {
            margin-right: 20px;
        }

        label {
            font-size: 16px;
            margin-right: 10px;
        }

        #shoe-size {
            font-size: 16px;
            padding: 8px;
            border-radius: 5px;
        }

        ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            grid-gap: 20px;
        }

        li {
            border: 1px solid #ddd;
            border-radius: 5px;
            overflow: hidden;
        }

        img {
            max-width: 100%;
            height: auto;
            cursor: pointer;
            transition: transform 0.3s ease-in-out;
        }

        img:hover {
            transform: scale(1.1);
        }

        strong {
            display: block;
            margin-top: 10px;
        }

        p {
            margin-top: 10px;
        }

        button {
            margin-top: 10px;
            padding: 5px 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        /* Styles for the shopping cart */
        #cart {
            margin-top: 40px;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 10px;
        }

        #cart h2 {
            text-align: center;
        }

        #cart-items {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        #cart-items li {
            margin-bottom: 10px;
        }

        #cart-buttons {
            text-align: center;
            margin-top: 20px;
        }

        #cart-buttons button {
            margin-right: 10px;
        }

        /* Modal styles */
        #orders-modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
        }

        .modal-content {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
        }

        .close {
            cursor: pointer;
            font-size: 20px;
            position: absolute;
            top: 10px;
            right: 10px;
        }
    </style>
</head>
<body>

<header>
    <i class="fa fa-shopping-cart" onclick="showOrdersModal()"></i>
</header>

<div class="top-container">
    <h1>Welcome to Our Shoe Store</h1>
    <div class="shoe-size-dropdown">
        <label for="shoe-size">Select Shoe Size:</label>
        <select id="shoe-size">
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
            <!-- Add more sizes as needed -->
        </select>
    </div>
</div>

<ul>
    <li>
        <a href="#" onclick="addToCart(1)">
            <img src="exm1.jpg"" alt="Shoe 1">
        </a>
        <strong>Shoe 1</strong>
        <p>Description of Shoe 1.</p>
        <button onclick="addToCart(1)">Add to Cart</button>
    </li>

    <li>
        <a href="#" onclick="addToCart(2)">
            <img src="exm1.jpg"" alt="Shoe 2">
        </a>
        <strong>Shoe 2</strong>
        <p>Description of Shoe 2.</p>
        <button onclick="addToCart(2)">Add to Cart</button>
    </li>

    <li>
        <a href="#" onclick="addToCart(3)">
            <img src="exm1.jpg"" alt="Shoe 3">
        </a>
        <strong>Shoe 3</strong>
        <p>Description of Shoe 3.</p>
        <button onclick="addToCart(3)">Add to Cart</button>
    </li>

    <li>
        <a href="#" onclick="addToCart(4)">
            <img src="exm1.jpg"" alt="Shoe 4">
        </a>
        <strong>Shoe 4</strong>
        <p>Description of Shoe 4.</p>
        <button onclick="addToCart(4)">Add to Cart</button>
    </li>

    <li>
        <a href="#" onclick="addToCart(5)">
            <img src="exm1.jpg"" alt="Shoe 5">
        </a>
        <strong>Shoe 5</strong>
        <p>Description of Shoe 5.</p>
        <button onclick="addToCart(5)">Add to Cart</button>
    </li>

    <li>
        <a href="#" onclick="addToCart(6)">
            <img src="exm1.jpg" alt="Shoe 6">
        </a>
        <strong>Shoe 6</strong>
        <p>Description of Shoe 6.</p>
        <button onclick="addToCart(6)">Add to Cart</button>
    </li>
</ul>

<!-- Shopping Cart Section -->
<div id="cart">
    <h2>Shopping Cart</h2>
    <ul id="cart-items"></ul>
    <div id="cart-buttons">
        <button onclick="clearCart()">Clear Cart</button>
        <button onclick="proceedToPayment()">Proceed to Payment</button>
    </div>
</div>

<div id="orders-modal">
    <div class="modal-content">
        <span class="close" onclick="closeOrdersModal()">&times;</span>
        <h2>Your Orders</h2>
        <ul id="orders-list"></ul>
    </div>
</div>

<script>
    function addToCart(shoeId) {
        alert("Added Shoe " + shoeId + " to Cart!");
        // You can add more logic here, like updating a shopping cart on the server.

        // Add the selected item to the shopping cart
        const cartItems = document.getElementById('cart-items');
        const listItem = document.createElement('li');
        listItem.textContent = 'Shoe ' + shoeId;
        cartItems.appendChild(listItem);
    }

    function clearCart() {
        const cartItems = document.getElementById('cart-items');
        cartItems.innerHTML = ''; // Clear the cart items
    }

    function proceedToPayment() {
        alert("Proceeding to Payment. Implement your payment logic here.");
        // You can redirect to a payment page or implement payment processing logic.
    }
</script>

</body>
</html>
