<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Dashboard</title>

<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	}

	body {
		min-height: 100vh;
		background: linear-gradient(135deg, #5f9cff, #a18cd1);
		padding: 20px;
	}

	.header {
		text-align: center;
		color: white;
		margin-bottom: 20px;
	}

	.header h1 {
		margin-bottom: 10px;
	}

	.message {
		text-align: center;
		color: #ffecec;
		margin-bottom: 10px;
	}

	.container {
		max-width: 900px;
		margin: auto;
		display: grid;
		grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
		gap: 20px;
	}

	.card {
		background: white;
		padding: 25px;
		border-radius: 12px;
		box-shadow: 0 8px 20px rgba(0,0,0,0.15);
		text-align: center;
		transition: 0.3s;
	}

	.card:hover {
		transform: translateY(-5px);
	}

	.icon {
		font-size: 35px;
		margin-bottom: 10px;
	}

	.card h3 {
		margin-bottom: 10px;
		color: #333;
	}

	.card p {
		font-size: 13px;
		color: #666;
		margin-bottom: 15px;
	}

	button {
		padding: 8px 15px;
		border: none;
		border-radius: 6px;
		cursor: pointer;
		color: white;
		font-size: 14px;
	}

	.jobs {
		background: #3498db;
	}

	.apps {
		background: #9b59b6;
	}

	.notify {
		background: #f39c12;
	}

	.profile {
		background: #2ecc71;
	}

	.logout {
		background: #e74c3c;
	}

	.prime {
		background: linear-gradient(135deg, #f7971e, #ffd200);
		color: black;
		font-weight: bold;
	}

	button:hover {
		opacity: 0.9;
	}

	/* Highlight Prime Card */
	.prime-card {
		border: 2px dashed gold;
	}

	@media (max-width: 500px) {
		.header h1 {
			font-size: 22px;
		}
	}
</style>

</head>
<body>

	<div class="header">
		<h1> Job Seeker Dashboard</h1>
	</div>

	<div class="message">
		${pass} ${fail}
	</div>

	<div class="container">

		<c:if test="${!user.prime}">
			<div class="card prime-card">
				<div class="icon"></div>
				<h3>Go Prime</h3>
				<p>Unlock premium features & better visibility</p>
				<a href="/user/buy-prime">
					<button class="prime">Upgrade</button>
				</a>
			</div>
		</c:if>

		<div class="card">
			<div class="icon"></div>
			<h3>Jobs</h3>
			<p>Explore available jobs</p>
			<a href="/user/view-jobs">
				<button class="jobs">Open</button>
			</a>
		</div>

		<div class="card">
			<div class="icon"></div>
			<h3>My Applications</h3>
			<p>Track your job applications</p>
			<a href="/user/view-application">
				<button class="apps">Open</button>
			</a>
		</div>

		<div class="card">
			<div class="icon"></div>
			<h3>Notifications</h3>
			<p>Check updates & alerts</p>
			<a href="/user/notifications">
				<button class="notify">Open</button>
			</a>
		</div>

		<div class="card">
			<div class="icon"></div>
			<h3>Edit Profile</h3>
			<p>Update your details</p>
			<a href="/user/profile">
				<button class="profile">Open</button>
			</a>
		</div>

		<div class="card">
			<div class="icon"></div>
			<h3>Logout</h3>
			<p>Exit your account</p>
			<a href="/logout">
				<button class="logout">Logout</button>
			</a>
		</div>

	</div>

</body>
</html>