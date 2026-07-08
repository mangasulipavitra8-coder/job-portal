<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>

<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	}

	body {
		height: 100vh;
		display: flex;
		justify-content: center;
		align-items: center;
		background: linear-gradient(135deg, #1f4037, #99f2c8);
	}

	.container {
		background: white;
		padding: 35px 30px;
		border-radius: 15px;
		box-shadow: 0 10px 30px rgba(0,0,0,0.2);
		text-align: center;
		width: 100%;
		max-width: 350px;
	}

	.icon {
		font-size: 40px;
		margin-bottom: 10px;
	}

	h1 {
		font-size: 20px;
		margin-bottom: 10px;
		color: #333;
	}

	.amount {
		font-size: 28px;
		font-weight: bold;
		color: #27ae60;
		margin-bottom: 20px;
	}

	.desc {
		font-size: 14px;
		color: #777;
		margin-bottom: 25px;
	}

	button {
		width: 100%;
		padding: 12px;
		border: none;
		border-radius: 8px;
		font-size: 15px;
		cursor: pointer;
		background: linear-gradient(135deg, #ff7e5f, #feb47b);
		color: white;
		transition: 0.3s;
	}

	button:hover {
		transform: translateY(-2px);
		opacity: 0.9;
	}

	.secure {
		margin-top: 15px;
		font-size: 12px;
		color: #999;
	}

	@media (max-width: 400px) {
		.container {
			padding: 25px 20px;
		}
	}
</style>

</head>
<body>

	<div class="container">

		<div class="icon">💳</div>

		<h1>Proceed to Payment</h1>

		<div class="amount">₹199</div>

		<div class="desc">
			Prime Membership Access
		</div>

		<button id="rzp-button1"> Pay Securely</button>

		<div class="secure">
			100% Secure Payment via Razorpay
		</div>

	</div>

	<script src="https://checkout.razorpay.com/v1/checkout.js"></script>

	<script>
	var options = {
	    "key": "${details.keyDetails}",
	    "amount": "${details.amount}",
	    "currency": "INR",
	    "name": "Job-Portal",
	    "description": "For Purchasing prime membership",
	    "image": "https://www.google.com/url?sa=i&url=https%3A%2F%2Fexternlabs.com%2Fblogs%2Fjob-portal-app-development%2F",
	    "order_id": "${details.orderId}",
	    "callback_url": "https://fictional-garbanzo-qjvjppwg9qqh95jp-8080.app.github.dev/user/payment/${details.id}",
	    "prefill": {
	        "name": "${user.name}",
	        "email": "${user.email}",
	        "contact": "+91${user.mobile}"
	    },
	    "notes": {
	        "address": "Razorpay Corporate Office"
	    },
	    "theme": {
	        "color": "#ff7e5f"
	    }
	};

	var rzp1 = new Razorpay(options);

	document.getElementById('rzp-button1').onclick = function(e){
	    rzp1.open();
	    e.preventDefault();
	}
	</script>

</body>
</html>