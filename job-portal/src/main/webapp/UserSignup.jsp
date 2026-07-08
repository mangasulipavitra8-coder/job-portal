<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Signup</title>

<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Poppins', sans-serif;
	}

	body {
		min-height: 100vh;
		background: #e0e5ec;
		display: flex;
		justify-content: center;
		align-items: center;
		padding: 20px;
	}

	.container {
		background: #e0e5ec;
		padding: 30px;
		border-radius: 20px;
		box-shadow: 8px 8px 15px #a3b1c6, -8px -8px 15px #ffffff;
		width: 100%;
		max-width: 500px;
	}

	h1 {
		text-align: center;
		margin-bottom: 20px;
		color: #333;
	}

	form {
		display: flex;
		flex-direction: column;
		gap: 15px;
	}

	label {
		font-size: 13px;
		color: #555;
	}

	input {
		width: 100%;
		padding: 10px 12px;
		border-radius: 10px;
		border: none;
		outline: none;
		background: #e0e5ec;
		box-shadow: inset 3px 3px 6px #a3b1c6,
		            inset -3px -3px 6px #ffffff;
		font-size: 14px;
	}

	.row {
		display: flex;
		gap: 10px;
	}

	.row div {
		flex: 1;
	}

	.gender {
		font-size: 14px;
		color: #333;
	}

	.gender input {
		margin-left: 10px;
	}

	.buttons {
		display: flex;
		gap: 10px;
		margin-top: 10px;
	}

	button {
		flex: 1;
		padding: 12px;
		border-radius: 10px;
		border: none;
		font-size: 15px;
		cursor: pointer;
		background: #e0e5ec;
		box-shadow: 5px 5px 10px #a3b1c6,
		            -5px -5px 10px #ffffff;
		transition: 0.3s;
	}

	button:hover {
		transform: translateY(-2px);
	}

	.signup {
		color: #2ecc71;
		font-weight: bold;
	}

	.cancel {
		color: #e74c3c;
		font-weight: bold;
	}

	.back {
		margin-top: 15px;
		width: 100%;
	}

	@media (max-width: 500px) {
		.row {
			flex-direction: column;
		}
	}
</style>

</head>
<body>

	<div class="container">

		<h1>User Sign Up </h1>

		<form action="/user/signup" method="post" enctype="multipart/form-data">

			<div>
				<label>Name</label>
				<input type="text" name="name" required>
			</div>

			<div>
				<label>Email</label>
				<input type="email" name="email" required>
			</div>

			<div>
				<label>Mobile Number</label>
				<input type="tel" pattern="[0-9]{10}" name="mobile" required>
			</div>

			<div>
				<label>Password</label>
				<input type="password" name="password" required>
			</div>

			<div>
				<label>Date of Birth</label>
				<input type="date" name="dob" required>
			</div>

			<div class="gender">
				Gender:
				<input type="radio" name="gender" value="male"> Male
				<input type="radio" name="gender" value="female"> Female
			</div>

			<div class="buttons">
				<button class="signup">Sign Up</button>
				<button type="reset" class="cancel">Cancel</button>
			</div>

		</form>

		<a href="/user/login">
			<button class="back"> Back to Login</button>
		</a>

	</div>

</body>
</html>