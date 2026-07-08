<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.Duration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Experience</title>

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
		background: linear-gradient(135deg, #ff9a9e, #fad0c4);
	}

	.card {
		background: white;
		padding: 35px 30px;
		border-radius: 16px;
		box-shadow: 0 10px 30px rgba(0,0,0,0.2);
		text-align: center;
		width: 100%;
		max-width: 380px;
	}

	h2 {
		margin-bottom: 20px;
		color: #444;
	}

	form {
		display: flex;
		flex-direction: column;
		gap: 20px;
	}

	/* Custom radio buttons */
	.radio-group {
		display: flex;
		justify-content: center;
		gap: 15px;
	}

	.radio-group input {
		display: none;
	}

	.radio-label {
		padding: 10px 20px;
		border-radius: 25px;
		border: 2px solid #ccc;
		cursor: pointer;
		transition: 0.3s;
		font-size: 14px;
	}

	input:checked + .radio-label {
		background: linear-gradient(135deg, #667eea, #764ba2);
		color: white;
		border: none;
		box-shadow: 0 4px 10px rgba(0,0,0,0.2);
	}

	.radio-label:hover {
		border-color: #667eea;
	}

	.buttons {
		display: flex;
		justify-content: center;
		gap: 10px;
	}

	button {
		padding: 10px 18px;
		border: none;
		border-radius: 8px;
		font-size: 14px;
		cursor: pointer;
		transition: 0.3s;
		color: white;
	}

	button:first-child {
		background: linear-gradient(135deg, #43e97b, #38f9d7);
	}

	button:last-child {
		background: linear-gradient(135deg, #ff6a6a, #ff3d3d);
	}

	button:hover {
		transform: translateY(-2px);
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
		<h2>Are you Experienced?</h2>

		<form action="/user/experience" method="post">
			<input type="text" name="id" value="${id}" hidden>

			<div class="radio-group">
				<input type="radio" id="yes" name="experience" value="yes">
				<label for="yes" class="radio-label"> Yes</label>

				<input type="radio" id="no" name="experience" value="no">
				<label for="no" class="radio-label"> No</label>
			</div>

			<div class="buttons">
				<button>Submit</button>
				<button type="reset">Cancel</button>
			</div>
		</form>
	</div>

</body>
</html>