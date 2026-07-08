<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recruiter Login</title>

<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Poppins', sans-serif;
	}

	body {
		min-height: 100vh;
		display: flex;
		align-items: center;
		justify-content: center;
		background: #0ea5e9;
	}

	.wrapper {
		width: 100%;
		max-width: 900px;
		display: grid;
		grid-template-columns: 1fr 1fr;
		background: #fff;
		border-radius: 16px;
		overflow: hidden;
		box-shadow: 0 15px 40px rgba(0,0,0,0.2);
	}

	/* Left side (visual panel) */
	.left {
		background: linear-gradient(135deg, #0ea5e9, #2563eb);
		color: white;
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		padding: 40px;
		text-align: center;
	}

	.left h2 {
		font-size: 26px;
		margin-bottom: 10px;
	}

	.left p {
		font-size: 14px;
		opacity: 0.9;
	}

	/* Right side (form) */
	.right {
		padding: 40px 30px;
		display: flex;
		flex-direction: column;
		justify-content: center;
	}

	h1 {
		text-align: center;
		margin-bottom: 15px;
		color: #333;
	}

	.message {
		text-align: center;
		font-size: 14px;
		color: #ef4444;
		margin-bottom: 10px;
	}

	table {
		width: 100%;
	}

	th {
		text-align: left;
		font-size: 13px;
		color: #555;
		padding-top: 10px;
	}

	td {
		padding-bottom: 10px;
	}

	input {
		width: 100%;
		padding: 10px;
		border-radius: 8px;
		border: 1px solid #ddd;
		font-size: 14px;
		transition: 0.3s;
	}

	input:focus {
		border-color: #2563eb;
		box-shadow: 0 0 5px rgba(37,99,235,0.3);
		outline: none;
	}

	a {
		text-decoration: none;
		font-size: 13px;
		color: #2563eb;
	}

	a:hover {
		text-decoration: underline;
	}

	button {
		width: 100%;
		padding: 10px;
		border: none;
		border-radius: 8px;
		background: linear-gradient(135deg, #2563eb, #1e40af);
		color: white;
		font-size: 15px;
		cursor: pointer;
		margin-top: 10px;
		transition: 0.3s;
	}

	button:hover {
		transform: translateY(-2px);
		box-shadow: 0 5px 15px rgba(0,0,0,0.2);
	}

	.signup {
		margin-top: 15px;
		background: linear-gradient(135deg, #10b981, #059669);
	}

	.back-btn {
		margin-top: 10px;
		background: #ef4444;
	}

	hr {
		margin: 20px 0;
		border: 0.5px solid #ddd;
	}

	/* Responsive */
	@media (max-width: 768px) {
		.wrapper {
			grid-template-columns: 1fr;
		}

		.left {
			padding: 20px;
		}
	}
</style>

</head>
<body>

	<div class="wrapper">

		<div class="left">
			<h2>Welcome Recruiter </h2>
			<p>Manage jobs, track applications and hire the best talent easily.</p>
		</div>

		<div class="right">

			<h1>Login</h1>

			<div class="message">
				${pass} ${fail}
			</div>

			<form action="/recruiter/login" method="post">
				<table>

					<tr>
						<th>Email</th>
					</tr>
					<tr>
						<td><input type="email" name="email" placeholder="Enter email"></td>
					</tr>

					<tr>
						<th>Password</th>
					</tr>
					<tr>
						<td><input type="password" name="password" placeholder="Enter password"></td>
					</tr>

					<tr>
						<td><a href="/recruiter/forgot-password">Forgot Password?</a></td>
					</tr>

					<tr>
						<td><button>Login</button></td>
					</tr>

				</table>
			</form>

			<hr>

			<a href="/recruiter/signup">
				<button class="signup">Create Account</button>
			</a>

			<a href="/">
				<button class="back-btn"> Back</button>
			</a>

		</div>

	</div>

</body>
</html>