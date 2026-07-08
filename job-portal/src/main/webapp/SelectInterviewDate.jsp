<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Schedule Interview</title>

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
		background: linear-gradient(135deg, #0f0c29, #302b63, #24243e);
		color: white;
	}

	.card {
		position: relative;
		background: rgba(255,255,255,0.08);
		backdrop-filter: blur(12px);
		padding: 35px 30px;
		border-radius: 18px;
		width: 100%;
		max-width: 380px;
		text-align: center;
		box-shadow: 0 10px 30px rgba(0,0,0,0.4);
	}

	/* Neon border glow */
	.card::before {
		content: "";
		position: absolute;
		inset: -2px;
		border-radius: 20px;
		background: linear-gradient(135deg, #00f5a0, #00d9f5);
		z-index: -1;
		filter: blur(6px);
		opacity: 0.7;
	}

	h2 {
		margin-bottom: 20px;
		font-weight: 500;
	}

	.input-group {
		margin-bottom: 20px;
		text-align: left;
	}

	label {
		font-size: 13px;
		color: #ccc;
		margin-bottom: 5px;
		display: block;
	}

	input {
		width: 100%;
		padding: 10px;
		border-radius: 8px;
		border: none;
		outline: none;
		font-size: 14px;
	}

	button {
		width: 100%;
		padding: 12px;
		border: none;
		border-radius: 10px;
		background: linear-gradient(135deg, #00f5a0, #00d9f5);
		color: black;
		font-size: 15px;
		cursor: pointer;
		transition: 0.3s;
	}

	button:hover {
		transform: translateY(-2px);
		box-shadow: 0 5px 20px rgba(0,255,200,0.4);
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

		<h2> Schedule Interview</h2>

		<form action="/recruiter/schedule" method="post">

			<input type="text" name="id" value="${id}" hidden>

			<div class="input-group">
				<label>Select Date & Time</label>
				<input type="datetime-local" name="interviewDate" required>
			</div>

			<button>Schedule</button>

		</form>

	</div>

</body>
</html>