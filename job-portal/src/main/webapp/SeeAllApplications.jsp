<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Applications</title>

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
		background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
	}

	.card {
		position: relative;
		padding: 35px 30px;
		border-radius: 18px;
		background: rgba(255,255,255,0.08);
		backdrop-filter: blur(10px);
		box-shadow: 0 10px 30px rgba(0,0,0,0.3);
		text-align: center;
		width: 100%;
		max-width: 380px;
		color: white;
	}

	/* Gradient border effect */
	.card::before {
		content: "";
		position: absolute;
		inset: -2px;
		border-radius: 20px;
		background: linear-gradient(135deg, #00f2fe, #4facfe);
		z-index: -1;
	}

	h2 {
		margin-bottom: 20px;
	}

	select {
		width: 100%;
		padding: 10px;
		border-radius: 8px;
		border: none;
		outline: none;
		font-size: 14px;
		margin-bottom: 15px;
	}

	button {
		width: 100%;
		padding: 12px;
		border: none;
		border-radius: 8px;
		font-size: 15px;
		cursor: pointer;
		transition: 0.3s;
	}

	.submit {
		background: linear-gradient(135deg, #00f2fe, #4facfe);
		color: black;
		margin-bottom: 10px;
	}

	.back {
		background: rgba(255,255,255,0.2);
		color: white;
	}

	button:hover {
		transform: translateY(-2px);
		box-shadow: 0 5px 15px rgba(0,0,0,0.3);
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

		<h2> View Applications</h2>

		<form action="/recruiter/view-application" method="post">

			<select name="id" required>
				<c:forEach var="job" items="${jobs}">
					<option value="${job.id}">${job.title}</option>
				</c:forEach>
			</select>

			<button class="submit">View Applications</button>

		</form>

		<a href="/recruiter/back">
			<button class="back"> Back</button>
		</a>

	</div>

</body>
</html>