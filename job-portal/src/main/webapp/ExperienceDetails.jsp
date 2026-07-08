<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Apply Experience</title>

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
		background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
	}

	.container {
		background: rgba(255, 255, 255, 0.08);
		backdrop-filter: blur(12px);
		padding: 30px;
		border-radius: 15px;
		width: 100%;
		max-width: 400px;
		box-shadow: 0 8px 25px rgba(0,0,0,0.3);
		color: white;
	}

	h1 {
		text-align: center;
		margin-bottom: 25px;
		font-size: 22px;
	}

	form {
		display: flex;
		flex-direction: column;
		gap: 18px;
	}

	.input-group {
		position: relative;
	}

	input {
		width: 100%;
		padding: 12px 10px;
		border-radius: 8px;
		border: none;
		outline: none;
		background: rgba(255,255,255,0.15);
		color: white;
		font-size: 14px;
	}

	label {
		position: absolute;
		left: 10px;
		top: 50%;
		transform: translateY(-50%);
		font-size: 13px;
		color: #ddd;
		pointer-events: none;
		transition: 0.3s;
	}

	input:focus + label,
	input:not(:placeholder-shown) + label {
		top: -8px;
		left: 8px;
		font-size: 11px;
		background: #203a43;
		padding: 0 5px;
		border-radius: 5px;
	}

	button {
		margin-top: 10px;
		padding: 12px;
		border: none;
		border-radius: 8px;
		background: linear-gradient(135deg, #00c6ff, #0072ff);
		color: white;
		font-size: 15px;
		cursor: pointer;
		transition: 0.3s;
	}

	button:hover {
		transform: translateY(-2px);
		box-shadow: 0 5px 15px rgba(0,0,0,0.3);
	}

	/* Responsive */
	@media (max-width: 480px) {
		.container {
			padding: 25px 20px;
		}
	}
</style>

</head>
<body>

	<div class="container">
		<h1>Enter Details</h1>

		<form action="/user/experience/apply" method="post">
			<input type="text" name="id" value="${id}" hidden>

			<div class="input-group">
				<input type="number" name="years" required placeholder=" ">
				<label>Years of Experience</label>
			</div>

			<div class="input-group">
				<input type="text" name="description" required placeholder=" ">
				<label>Previous Role Description</label>
			</div>

			<div class="input-group">
				<input type="date" name="notice" required placeholder=" ">
				<label>Notice Period Till</label>
			</div>

			<button> Apply</button>
		</form>
	</div>

</body>
</html>