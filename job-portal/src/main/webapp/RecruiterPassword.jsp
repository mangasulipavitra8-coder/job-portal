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
		min-height: 100vh;
		display: flex;
		align-items: center;
		justify-content: center;
		background: radial-gradient(circle at 20% 20%, #8ec5fc, transparent 40%),
		            radial-gradient(circle at 80% 80%, #e0c3fc, transparent 40%),
		            #0f172a;
		color: #0f172a;
	}

	.card {
		width: 100%;
		max-width: 380px;
		padding: 30px 28px;
		border-radius: 18px;
		background: #ffffff;
		box-shadow: 0 20px 50px rgba(0,0,0,0.25);
		position: relative;
		overflow: hidden;
	}

	/* top glow line */
	.card::before {
		content: "";
		position: absolute;
		inset: 0 0 auto 0;
		height: 4px;
		background: linear-gradient(90deg, #60a5fa, #a78bfa, #f472b6);
	}

	h2 {
		text-align: center;
		margin-bottom: 10px;
		color: #111827;
	}

	.message {
		text-align: center;
		font-size: 13px;
		color: #ef4444;
		margin-bottom: 10px;
	}

	.desc {
		text-align: center;
		font-size: 12px;
		color: #6b7280;
		margin-bottom: 18px;
	}

	form {
		display: flex;
		flex-direction: column;
		gap: 14px;
	}

	.input {
		display: flex;
		align-items: center;
		gap: 10px;
		padding: 10px 12px;
		border-radius: 10px;
		border: 1px solid #e5e7eb;
		transition: 0.25s;
	}

	.input:focus-within {
		border-color: #6366f1;
		box-shadow: 0 0 0 3px rgba(99,102,241,0.15);
	}

	.input span {
		font-size: 16px;
	}

	.input input {
		border: none;
		outline: none;
		width: 100%;
		font-size: 14px;
	}

	/* Password strength hint */
	.hint {
		font-size: 11px;
		color: #6b7280;
		margin-top: -6px;
	}

	button {
		margin-top: 6px;
		padding: 12px;
		border: none;
		border-radius: 10px;
		background: linear-gradient(135deg, #6366f1, #8b5cf6);
		color: #fff;
		font-size: 15px;
		cursor: pointer;
		transition: 0.25s;
	}

	button:hover {
		transform: translateY(-2px);
		box-shadow: 0 10px 20px rgba(99,102,241,0.3);
	}

	/* Responsive */
	@media (max-width: 420px) {
		.card {
			margin: 0 14px;
			padding: 24px 20px;
		}
	}
</style>

</head>
<body>

	<div class="card">

		<h2>Reset Password </h2>

		<div class="message">
			${pass} ${fail}
		</div>

		<div class="desc">
			Enter the OTP and create a new secure password
		</div>

		<form action="/recruiter/reset-password" method="post">
			<input type="text" name="id" value="${id}" hidden>

			<div class="input">
				<span></span>
				<input type="text" name="otp" placeholder="Enter OTP" required>
			</div>

			<div class="input">
				<span></span>
				<input type="password" name="password" placeholder="New Password" required>
			</div>

			<div class="hint">
				Use at least 8 characters, mix of letters & numbers
			</div>

			<button>Reset Password</button>
		</form>

	</div>

</body>
</html>