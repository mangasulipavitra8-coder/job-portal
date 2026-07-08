<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main</title>

<style>
	/* Reset */
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
		background: linear-gradient(135deg, #667eea, #764ba2);
		color: #333;
	}

	.container {
		background: #fff;
		padding: 40px 30px;
		border-radius: 12px;
		box-shadow: 0 8px 25px rgba(0,0,0,0.15);
		text-align: center;
		width: 100%;
		max-width: 400px;
	}

	h1 {
		margin-bottom: 25px;
		color: #444;
	}

	.message {
		margin-bottom: 15px;
		font-weight: 500;
		color: #e74c3c;
	}

	.buttons {
		display: flex;
		flex-direction: column;
		gap: 15px;
	}

	button {
		width: 100%;
		padding: 12px;
		border: none;
		border-radius: 8px;
		font-size: 16px;
		cursor: pointer;
		transition: 0.3s;
		color: white;
	}

	/* Button Colors */
	.admin {
		background-color: #3498db;
	}

	.recruiter {
		background-color: #2ecc71;
	}

	.user {
		background-color: #e67e22;
	}

	button:hover {
		opacity: 0.9;
		transform: translateY(-2px);
	}

	/* Responsive */
	@media (max-width: 480px) {
		.container {
			padding: 25px 20px;
		}

		h1 {
			font-size: 22px;
		}

		button {
			font-size: 14px;
			padding: 10px;
		}
	}
</style>

</head>
<body>

	<div class="container">
		
		<div class="message">
			${pass} ${fail}
		</div>

		<h1>Home Page</h1>

		<div class="buttons">
			<a href="/admin/login">
				<button class="admin">Admin</button>
			</a>

			<a href="/recruiter/login">
				<button class="recruiter">Recruiter</button>
			</a>

			<a href="/user/login">
				<button class="user">Job Seeker</button>
			</a>
		</div>

	</div>

</body>
</html>