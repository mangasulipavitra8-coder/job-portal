<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset Password</title>

<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Poppins', sans-serif;
	}

	body {
		height: 100vh;
		display: flex;
		justify-content: center;
		align-items: center;
		background: linear-gradient(135deg, #11998e, #38ef7d);
	}

	.card {
		background: white;
		padding: 35px 30px;
		border-radius: 15px;
		box-shadow: 0 10px 30px rgba(0,0,0,0.2);
		width: 100%;
		max-width: 350px;
		text-align: center;
	}

	h2 {
		margin-bottom: 10px;
		color: #333;
	}

	.icon {
		font-size: 35px;
		margin-bottom: 10px;
	}

	.message {
		font-size: 14px;
		color: #e74c3c;
		margin-bottom: 15px;
	}

	.input-group {
		text-align: left;
		margin-bottom: 15px;
	}

	label {
		font-size: 13px;
		color: #555;
	}

	input {
		width: 100%;
		padding: 10px;
		border-radius: 8px;
		border: 1px solid #ccc;
		margin-top: 5px;
		outline: none;
		transition: 0.3s;
	}

	input:focus {
		border-color: #11998e;
		box-shadow: 0 0 6px rgba(17,153,142,0.3);
	}

	button {
		width: 100%;
		padding: 12px;
		border: none;
		border-radius: 8px;
		background: linear-gradient(135deg, #11998e, #38ef7d);
		color: white;
		font-size: 15px;
		cursor: pointer;
		transition: 0.3s;
		margin-top: 10px;
	}

	button:hover {
		transform: translateY(-2px);
		box-shadow: 0 5px 20px rgba(0,0,0,0.2);
	}

	@media (max-width: 480px) {
		.card {
			padding: 25px 20px;
		}
	}
</style>

</head>
<body>

	<div class="card">

		<div class="icon"></div>
		<h2>Reset Password</h2>

		<div class="message">
			${pass} ${fail}
		</div>

		<form action="/user/reset-password" method="post">

			<input type="text" name="id" value="${id}" hidden>

			<div class="input-group">
				<label>Enter OTP</label>
				<input type="text" name="otp" required>
			</div>

			<div class="input-group">
				<label>New Password</label>
				<input type="password" name="password" required>
			</div>

			<button>Reset Password</button>

		</form>

	</div>

</body>
</html>