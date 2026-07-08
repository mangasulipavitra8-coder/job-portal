<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Verify OTP</title>

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
		background: linear-gradient(135deg, #a18cd1, #5f9cff);
	}

	.container {
		background: white;
		padding: 30px 25px;
		border-radius: 15px;
		box-shadow: 0 10px 30px rgba(0,0,0,0.2);
		text-align: center;
		width: 100%;
		max-width: 320px;
	}

	h2 {
		margin-bottom: 10px;
		color: #333;
	}

	.sub {
		font-size: 13px;
		color: #777;
		margin-bottom: 15px;
	}

	.message {
		font-size: 13px;
		color: #e74c3c;
		margin-bottom: 10px;
	}

	.otp-input {
		width: 100%;
		padding: 12px;
		font-size: 18px;
		letter-spacing: 6px;
		text-align: center;
		border-radius: 8px;
		border: 1px solid #ccc;
		outline: none;
		margin-bottom: 15px;
	}

	.otp-input:focus {
		border-color: #6c63ff;
		box-shadow: 0 0 5px rgba(108,99,255,0.5);
	}

	button {
		width: 100%;
		padding: 11px;
		border: none;
		border-radius: 8px;
		font-size: 14px;
		cursor: pointer;
		background: linear-gradient(135deg, #6c63ff, #5f9cff);
		color: white;
		transition: 0.3s;
	}

	button:hover {
		transform: translateY(-2px);
		opacity: 0.9;
	}

	@media (max-width: 400px) {
		.container {
			padding: 20px;
		}
	}
</style>

</head>
<body>

	<div class="container">

		<h2> Verify OTP</h2>
		<div class="sub">Enter the OTP sent to your email</div>

		<div class="message">
			${pass} ${fail}
		</div>

		<form action="/user/verify-otp" method="post">

			<input type="text" name="id" value="${id}" hidden>

			<input type="text" name="otp" class="otp-input" maxlength="6" placeholder="------" required>

			<button> Verify</button>

		</form>

	</div>

</body>
</html>