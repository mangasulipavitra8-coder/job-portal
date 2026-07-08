<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>

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
	}

	/* LEFT PANEL */
	.left {
		flex: 1;
		background: linear-gradient(135deg, #4facfe, #00f2fe);
		color: white;
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		padding: 30px;
	}

	.left h1 {
		font-size: 32px;
		margin-bottom: 10px;
	}

	.left p {
		font-size: 16px;
		text-align: center;
		max-width: 300px;
	}

	/* RIGHT PANEL */
	.right {
		flex: 1;
		display: flex;
		justify-content: center;
		align-items: center;
		background: #f9fafb;
	}

	.form-box {
		background: white;
		padding: 35px 30px;
		border-radius: 15px;
		box-shadow: 0 10px 25px rgba(0,0,0,0.15);
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
		margin-bottom: 10px;
	}

	.input-group {
		margin-bottom: 15px;
		text-align: left;
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
	}

	input:focus {
		border-color: #4facfe;
		box-shadow: 0 0 5px rgba(79,172,254,0.4);
	}

	.forgot {
		display: block;
		text-align: right;
		font-size: 12px;
		margin-bottom: 10px;
		color: #4facfe;
		text-decoration: none;
	}

	button {
		width: 100%;
		padding: 12px;
		border: none;
		border-radius: 8px;
		background: linear-gradient(135deg, #4facfe, #00f2fe);
		color: white;
		font-size: 15px;
		cursor: pointer;
		margin-top: 5px;
		transition: 0.3s;
	}

	button:hover {
		transform: translateY(-2px);
		box-shadow: 0 5px 15px rgba(0,0,0,0.2);
	}

	.extra {
		margin-top: 15px;
		font-size: 13px;
	}

	.extra a {
		color: #4facfe;
		text-decoration: none;
	}

	.back {
		margin-top: 10px;
		background: #444;
	}

	/* RESPONSIVE */
	@media (max-width: 768px) {
		body {
			flex-direction: column;
		}

		.left {
			height: 30vh;
		}
	}
</style>

</head>
<body>

	<!-- LEFT SIDE -->
	<div class="left">
		<h1>Welcome Back </h1>
		<p>Login to explore jobs, track applications, and grow your career.</p>
	</div>

	<!-- RIGHT SIDE -->
	<div class="right">

		<div class="form-box">

			<h2>User Login</h2>

			<div class="message">
				${pass} ${fail}
			</div>

			<form action="/user/login" method="post">

				<div class="input-group">
					<label>Email</label>
					<input type="email" name="email" required>
				</div>

				<div class="input-group">
					<label>Password</label>
					<input type="password" name="password" required>
				</div>

				<a href="/user/forgot-password" class="forgot">Forgot Password?</a>

				<button>Login</button>

			</form>

			<div class="extra">
				Don't have an account? <a href="/user/signup">Create Account</a>
			</div>

			<a href="/"><button class="back"> Back</button></a>

		</div>

	</div>

</body>
</html>