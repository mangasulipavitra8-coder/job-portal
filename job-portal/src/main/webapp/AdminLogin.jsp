<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>

<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Segoe UI', sans-serif;
	}

	body {
		height: 100vh;
		display: flex;
		justify-content: center;
		align-items: center;
		background: #0f172a;
		color: #fff;
	}

	.wrapper {
		width: 100%;
		padding: 20px;
		display: flex;
		justify-content: center;
	}

	.container {
		width: 100%;
		max-width: 360px;
		padding: 35px 25px;
		border-radius: 12px;
		background: #1e293b;
		box-shadow: 0 0 25px rgba(0, 255, 200, 0.2);
		text-align: center;
	}

	h1 {
		margin-bottom: 20px;
		font-weight: 500;
		color: #38bdf8;
	}

	.message {
		font-size: 14px;
		margin-bottom: 10px;
		color: #f87171;
	}

	table {
		width: 100%;
	}

	th {
		text-align: left;
		font-size: 13px;
		padding-top: 10px;
		color: #cbd5f5;
	}

	td {
		padding-bottom: 10px;
	}

	input {
		width: 100%;
		padding: 10px;
		margin-top: 5px;
		border-radius: 6px;
		border: 1px solid #334155;
		background: #0f172a;
		color: white;
		outline: none;
		transition: 0.3s;
	}

	input:focus {
		border-color: #22d3ee;
		box-shadow: 0 0 8px #22d3ee;
	}

	button {
		width: 100%;
		padding: 10px;
		margin-top: 12px;
		border: none;
		border-radius: 6px;
		background: linear-gradient(135deg, #06b6d4, #3b82f6);
		color: white;
		font-size: 15px;
		cursor: pointer;
		transition: 0.3s;
	}

	button:hover {
		transform: translateY(-2px);
		box-shadow: 0 0 12px #38bdf8;
	}

	.back {
		margin-top: 15px;
	}

	.back button {
		width: auto;
		padding: 7px 15px;
		background: #ef4444;
	}

	.back button:hover {
		box-shadow: 0 0 10px #f87171;
	}

	/* Responsive */
	@media (max-width: 480px) {
		.container {
			padding: 25px 20px;
		}

		h1 {
			font-size: 22px;
		}
	}
</style>

</head>
<body>

	<div class="wrapper">
		<div class="container">

			<h1>Admin Login</h1>

			<div class="message">
				${pass} ${fail}
			</div>

			<form action="/admin/login" method="post">
				<table>
					<tr>
						<th> Email</th>
					</tr>
					<tr>
						<td><input type="text" name="email" placeholder="Enter email"></td>
					</tr>

					<tr>
						<th> Password</th>
					</tr>
					<tr>
						<td><input type="password" name="password" placeholder="Enter password"></td>
					</tr>

					<tr>
						<td>
							<button>Login</button>
						</td>
					</tr>
				</table>
			</form>

			<div class="back">
				<a href="/">
					<button> Back</button>
				</a>
			</div>

		</div>
	</div>

</body>
</html>