<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password</title>

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
		background: linear-gradient(120deg, #89f7fe, #66a6ff);
	}

	.container {
		background: white;
		padding: 40px 30px;
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

	.message {
		font-size: 14px;
		color: #e74c3c;
		margin-bottom: 15px;
	}

	.input-group {
		position: relative;
		margin-bottom: 25px;
	}

	input {
		width: 100%;
		padding: 10px 5px;
		border: none;
		border-bottom: 2px solid #ccc;
		outline: none;
		font-size: 14px;
		background: transparent;
	}

	label {
		position: absolute;
		top: 50%;
		left: 5px;
		transform: translateY(-50%);
		font-size: 13px;
		color: #777;
		transition: 0.3s;
		pointer-events: none;
	}

	input:focus + label,
	input:not(:placeholder-shown) + label {
		top: -8px;
		font-size: 11px;
		color: #66a6ff;
	}

	input:focus {
		border-bottom-color: #66a6ff;
	}

	button {
		width: 100%;
		padding: 12px;
		border: none;
		border-radius: 8px;
		background: linear-gradient(135deg, #66a6ff, #4facfe);
		color: white;
		font-size: 15px;
		cursor: pointer;
		transition: 0.3s;
	}

	button:hover {
		transform: translateY(-2px);
		box-shadow: 0 5px 15px rgba(0,0,0,0.2);
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

		<h2>Forgot Password </h2>

		<div class="message">
			${fail} ${pass}
		</div>

		<form action="/user/forgot-password" method="post">

			<div class="input-group">
				<input type="text" name="email" required placeholder=" ">
				<label>Email Address</label>
			</div>

			<button>Submit</button>

		</form>

	</div>

</body>
</html>