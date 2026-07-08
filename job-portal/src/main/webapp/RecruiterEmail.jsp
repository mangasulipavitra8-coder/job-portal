<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Enter Email</title>

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
		background: #e0e5ec;
	}

	.container {
		background: #e0e5ec;
		padding: 40px 30px;
		border-radius: 20px;
		box-shadow: 10px 10px 25px #bec3c9,
		            -10px -10px 25px #ffffff;
		width: 100%;
		max-width: 350px;
		text-align: center;
	}

	h2 {
		margin-bottom: 20px;
		color: #333;
	}

	.message {
		margin-bottom: 10px;
		font-size: 14px;
		color: #e74c3c;
	}

	.input-group {
		margin: 20px 0;
	}

	input {
		width: 100%;
		padding: 12px;
		border-radius: 10px;
		border: none;
		outline: none;
		background: #e0e5ec;
		box-shadow: inset 5px 5px 10px #bec3c9,
		            inset -5px -5px 10px #ffffff;
		font-size: 14px;
	}

	button {
		width: 100%;
		padding: 12px;
		border-radius: 10px;
		border: none;
		background: #e0e5ec;
		box-shadow: 5px 5px 15px #bec3c9,
		            -5px -5px 15px #ffffff;
		font-size: 15px;
		cursor: pointer;
		transition: 0.3s;
	}

	button:hover {
		box-shadow: inset 5px 5px 10px #bec3c9,
		            inset -5px -5px 10px #ffffff;
	}

	button:active {
		transform: scale(0.97);
	}

	@media (max-width: 480px) {
		.container {
			padding: 25px 20px;
		}
	}
</style>

</head>
<body>

	<div class="container">

		<h2>Forgot Password</h2>

		<div class="message">
			${fail} ${pass}
		</div>

		<form action="/recruiter/forgot-password" method="post">

			<div class="input-group">
				<input type="text" name="email" placeholder="Enter your email" required>
			</div>

			<button>Submit</button>

		</form>

	</div>

</body>
</html>