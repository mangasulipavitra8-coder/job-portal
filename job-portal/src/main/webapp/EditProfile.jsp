<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Segoe UI', sans-serif;
}

body {
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	background: linear-gradient(135deg, #5f9cff, #a18cd1);
}

.container {
	background: white;
	padding: 30px;
	border-radius: 12px;
	width: 100%;
	max-width: 500px;
	box-shadow: 0 10px 25px rgba(0,0,0,0.2);
}

h2 {
	text-align: center;
	margin-bottom: 15px;
	color: #333;
}

.message {
	text-align: center;
	color: red;
	margin-bottom: 10px;
}

form {
	display: flex;
	flex-direction: column;
	gap: 12px;
}

label {
	font-size: 14px;
	color: #444;
}

input, select {
	padding: 10px;
	border-radius: 6px;
	border: 1px solid #ccc;
	font-size: 14px;
}

input:focus {
	border-color: #5f9cff;
	outline: none;
}

button {
	padding: 10px;
	border: none;
	border-radius: 6px;
	background: #5f9cff;
	color: white;
	cursor: pointer;
	font-size: 15px;
}

button:hover {
	background: #4a86e8;
}

.back-btn {
	background: #555;
	margin-top: 10px;
}

.back-btn:hover {
	background: #333;
}
</style>

</head>
<body>

<div class="container">

	<h2>Edit Profile</h2>

	<div class="message">
		${pass} ${fail}
	</div>

	<form action="/user/profile" method="post" enctype="multipart/form-data">

		<!-- Name -->
		<label>Name</label>
		<input type="text" name="name" value="${user.name}" required>

		<!-- DOB -->
		<label>Date of Birth</label>
		<input type="date" name="dob" value="${user.dob}" required>

		<!-- Gender -->
		<label>Gender</label>
		<select name="gender">
			<option value="male" ${user.gender=='male'?'selected':''}>Male</option>
			<option value="female" ${user.gender=='female'?'selected':''}>Female</option>
		</select>

		<!-- 10th -->
		<label>10th Percentage</label>
		<input type="number" step="0.01" name="tenthPercentage" value="${user.tenthPercentage}">

		<!-- 12th -->
		<label>12th Percentage</label>
		<input type="number" step="0.01" name="twelthPercentage" value="${user.twelthPercentage}">

		<!-- Degree -->
		<label>Degree Percentage</label>
		<input type="number" step="0.01" name="degreePercenatge" value="${user.degreePercenatge}">

		<!-- Resume -->
		<label>Upload Resume</label>
		<input type="file" name="res" required>

		<button>Update Profile</button>
	</form>

	<a href="/user/back">
		<button class="back-btn">Back</button>
	</a>

</div>

</body>
</html>