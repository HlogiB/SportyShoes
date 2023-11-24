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
 /* Add this style to your existing style tag */
.styled-button {
    margin-top: 10px;
    padding: 5px 10px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 3px;
    cursor: pointer;
}

.styled-button:hover {
    background-color: #45a049;
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
            max-width: 10000%;
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
        
          #hiddenButton {
            display: none;
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
        .form-group {
        display: flex;
        flex-direction: column;
        margin-bottom: 20px;
    }
    
    label {
        font-size: 18px;
        font-weight: bold;
        margin-bottom: 5px;
    }
    
    input[type="text"] {
        padding: 10px;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    
    input[type="submit"] {
        padding: 10px 20px;
        font-size: 18px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    
    input[type="submit"]:hover {
        background-color: #45a049;
    </style>
</head>
<body>

<header>
    <i class="fa fa-shopping-cart" onclick="showOrdersModal()"></i>
</header>

<a href="AdminLogin.jsp">Admin Page</a>

<div class="top-container">
    <h1>Welcome to Elelwani's SportyShoes</h1>
    <a href="AdminLogin.jsp">Admin Page</a>
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
            <img src="airfoce.jpg"" alt="Nike AF">
        </a>
        <strong>Nike Airforce 1.0 - R2000</strong>
        <p>A mix of both style and work</p>
        <button onclick="addToCart(1)">Add to Cart</button>
    </li>

    <li>
        <a href="#" onclick="addToCart(2)">
            <img src="exm1.jpg"" alt="Nike T">
        </a>
        <strong>Nike Trainer - R1500</strong>
        <p>Perfect your daily walks</p>
        <button onclick="addToCart(2)">Add to Cart</button>
    </li>

    <li>
        <a href="#" onclick="addToCart(3)">
            <img src="AirJordan.jpg"" alt="Air JR">
        </a>
        <strong>Air Jordan Retro - R4000</strong>
        <p>For the Basketball court</p>
        <button onclick="addToCart(3)">Add to Cart</button>
    </li>

    <li>
        <a href="#" onclick="addToCart(Nike GLB)">
            <img src="Golf.jpg"" alt="Nike GLB">
        </a>
        <strong>Nike Golfers low bend - R5000</strong>
        <p>Always a Good day for golf</p>
        <button onclick="addToCart(4)">Add to Cart</button>
    </li>

    <li>
        <a href="#" onclick="addToCart(5)">
            <img src="last.jpg"" alt="Nike WS">
        </a>
        <strong>Nike Wimbeldoen Series - R6000</strong>
        <p>Wether on and off the tennis court they will make sure you are comfortable</p>
        <button onclick="addToCart(5)">Add to Cart</button>
    </li>

    <li>
        <a href="#" onclick="addToCart(6)">
            <img src="la.jpg" alt="Nike TH">
        </a>
        <strong>Nike Tony Hawk Edition - R700</strong>
        <p>Skate of the wall with the legenadry shoes from the legend</p>
        <button onclick="addToCart(6)">Add to Cart</button>
    </li>
</ul>

<!-- Shopping Cart Section -->
<div id="cart">
    <h2>Shopping Cart</h2>
    <ul id="cart-items"></ul>
    <div id="cart-buttons">
        <button onclick="clearCart()">Clear Cart</button>
        <button  id="hiddenButton" onclick="proceedToPayment()">Clear Cart</button>
    </div>
</div>



<!-- Display total amount -->
<div id="total-amount">
    <strong>Total Amount Spent: R<span id="total-amount-value">0</span></strong>
</div>

<!-- Payment Section -->




 <div style="text-align: center;">
  <div id="payment-section">
        <h2>Payment Information</h2>
        
        <form id="payment-form" method="get" action="Confirmation">
         <input type="hidden" id="Total" name="Total" value="">
         <input type="hidden" id="Items" name="Items" value="">
         <input type="hidden" id="uid" name="uid" value="">
         
        <label for="userid">UserID:</label>
        <input type="text" id="userid" placeholder="Enter your ID" ><br/>
        
        <label for="card-number">Username:</label>        
        <input type="text" id="username" placeholder="Enter your Name" ><br/>
        
        <label for="card-number">Phone number:</label>        
        <input type="text" id="phonenumeber" placeholder="Enter your number" ><br/>
        
        <label for="card-number">Email:</label>        
        <input type="text" id="email" placeholder="Enter your Email" ><br/>
        
        <label for="card-number">Address:</label>        
        <input type="text" id="address" placeholder="Enter your Address" ><br/>
        
         <label for="card-number">Card Number:</label>         
        <input type="text" id="card-number" placeholder="Enter your card number" ><br/>	
        	
        <label for="expiry-date">Expiry Date:</label>        
        <input type="text" id="expiry-date" placeholder="MM/YY" ><br/>
		
        <label for="cvv">CVV:</label>
        <input type="text" id="cvv" placeholder="Enter CVV" ><br/>
        
        <input type="submit" value="Submit" class="styled-button">
        </form>
        
        
    </div>
</div>



<script>


const shoePrices = {
	    1: 2000,
	    2: 1500,
	    3: 4000,
	    4: 5000,
	    5: 6000,
	    6: 700
	};

	let selectedSize;
	let totalAmount = 0;

	document.addEventListener('DOMContentLoaded', function () {
	    // Enable the "Proceed to Payment" button by default
	    updateProceedToPaymentButton();
	});

	function addToCart(shoeId,name) {
	    // Get the selected shoe size
	    selectedSize = document.getElementById('shoe-size').value;

	    // Add the selected item to the shopping cart
	    const cartItems = document.getElementById('cart-items');
	    const listItem = document.createElement('li');
	    const price = shoePrices[shoeId];
	    listItem.textContent = 'Shoe ' + shoeId + ' (Size ' + selectedSize + ') - R' + price;
	    cartItems.appendChild(listItem);

	    
	    updateCartItemsInput();
	    // Update the total amount
	    
	    totalAmount += price;
	    document.getElementById('total-amount-value').textContent = totalAmount;
	    document.getElementById('Total').value = totalAmount;
	    document.getElementBId('Items').value= document.getElementById('cart-items');

	    // Enable the "Proceed to Payment" button
	    updateProceedToPaymentButton();
	}
	
	//cart
	
	function updateCartItemsInput() {
    const cartItems = document.getElementById('cart-items');
    const formInput = document.getElementById('Items');

    // Iterate through each cart item and concatenate them into a string
    let cartItemsString = '';
    const cartItemList = cartItems.getElementsByTagName('li');

    for (let i = 0; i < cartItemList.length; i++) {
        cartItemsString += cartItemList[i].textContent + '\n';
    }

    // Update the form input value with the cart items
    formInput.value = cartItemsString.trim(); // Trim to remove any leading or trailing whitespace
}

	
	//
	
	

	function clearCart() {
	    const cartItems = document.getElementById('cart-items');
	    cartItems.innerHTML = ''; // Clear the cart items
	    const formInput = document.getElementById('Items');

	    // Reset the total amount
	    totalAmount = 0;
	    document.getElementById('total-amount-value').textContent = totalAmount;
	    document.getElementById('Total').value = totalAmount;
	    document.getElementById('uid').value=document.getElementById('userid').value

	    // Enable the "Proceed to Payment" button
	    updateProceedToPaymentButton();
	    formInput.value 
	}
	
	

	function proceedToPayment() {
	    alert("Proceeding to Payment. Implement your payment logic here.");
	    // You can redirect to a payment page or implement payment processing logic.
	}

	function updateProceedToPaymentButton() {
	    // Enable the "Proceed to Payment" button if the cart is not empty
	    const proceedButton = document.querySelector('#cart-buttons button:last-child');
	    proceedButton.disabled = document.getElementById('cart-items').children.length === 0;
	}
	function processPayment() {
	    // You can implement the actual payment processing logic here.
	    const cardNumber = document.getElementById('card-number').value;
	    const expiryDate = document.getElementById('expiry-date').value;
	    const cvv = document.getElementById('cvv').value;

	    // Perform validation and processing as needed
	    if (cardNumber && expiryDate && cvv) {
	        alert('Payment processed successfully!');
	        clearCart(); // Optionally, clear the cart after successful payment
	    } else {
	        alert('Please fill in all the payment details.');
	    }
	}


</script>

</body>
</html>
