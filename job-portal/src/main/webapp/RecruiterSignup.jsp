<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recruiter Signup</title>

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
		justify-content: center;
		align-items: center;
		background: linear-gradient(135deg, #ff758c, #ff7eb3);
		padding: 20px;
	}

	.container {
		background: rgba(255,255,255,0.15);
		backdrop-filter: blur(12px);
		padding: 35px 30px;
		border-radius: 18px;
		box-shadow: 0 10px 30px rgba(0,0,0,0.2);
		width: 100%;
		max-width: 500px;
		color: white;
	}

	h1 {
		text-align: center;
		margin-bottom: 10px;
	}

	.message {
		text-align: center;
		color: #fff;
		margin-bottom: 15px;
	}

	form {
		display: flex;
		flex-direction: column;
		gap: 15px;
	}

	label {
		font-size: 13px;
		margin-bottom: 3px;
	}

	input {
		width: 100%;
		padding: 10px;
		border-radius: 8px;
		border: none;
		outline: none;
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
		display: flex;
		align-items: center;
		gap: 10px;
		font-size: 14px;
	}

	.buttons {
		display: flex;
		gap: 10px;
		margin-top: 10px;
	}

	button {
		flex: 1;
		padding: 12px;
		border: none;
		border-radius: 8px;
		font-size: 15px;
		cursor: pointer;
		transition: 0.3s;
	}

	.signup {
		background: linear-gradient(135deg, #00f2fe, #4facfe);
		color: black;
	}

	.cancel {
		background: linear-gradient(135deg, #ff512f, #dd2476);
		color: white;
	}

	button:hover {
		transform: scale(1.05);
	}

	.back {
		margin-top: 15px;
		width: 100%;
		background: white;
		color: black;
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

		<h1>Recruiter Sign Up </h1>

		<div class="message">
			${fail}
		</div>

		<form action="/recruiter/signup" method="post">

			<div>
				<label>Full Name</label>
				<input type="text" name="fullname" required>
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

			<div class="gender">
				Gender:
				<input type="radio" name="gender" value="male"> Male
				<input type="radio" name="gender" value="female"> Female
			</div>

			<div class="row">
				<div>
					<label>Company Name</label>
					<input type="text" name="companyname" required>
				</div>

				<div>
					<label>Location</label>
					<input type="text" name="companylocation" required>
				</div>
			</div>

			<div class="buttons">
				<button class="signup">Sign Up</button>
				<button type="reset" class="cancel">Cancel</button>
			</div>

		</form>

		<a href="/recruiter/login">
			<button class="back"> Back to Login</button>
		</a>

	</div>

</body>
</html>