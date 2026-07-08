<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Notifications</title>

<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Poppins', sans-serif;
	}

	body {
		background: linear-gradient(135deg, #fdfbfb, #ebedee);
		padding: 20px;
	}

	h1 {
		text-align: center;
		margin-bottom: 20px;
		color: #333;
	}

	.container {
		max-width: 700px;
		margin: auto;
		display: flex;
		flex-direction: column;
		gap: 15px;
	}

	.card {
		background: white;
		padding: 15px 20px;
		border-radius: 12px;
		box-shadow: 0 5px 15px rgba(0,0,0,0.1);
		display: flex;
		justify-content: space-between;
		align-items: center;
		transition: 0.3s;
	}

	.card:hover {
		transform: translateY(-3px);
		box-shadow: 0 10px 25px rgba(0,0,0,0.15);
	}

	.left {
		display: flex;
		align-items: center;
		gap: 15px;
	}

	.icon {
		font-size: 20px;
	}

	.message {
		font-size: 14px;
		color: #333;
	}

	.time {
		font-size: 12px;
		color: #777;
		margin-top: 3px;
	}

	.delete-btn {
		background: #e74c3c;
		color: white;
		border: none;
		padding: 8px 12px;
		border-radius: 6px;
		cursor: pointer;
		font-size: 12px;
		transition: 0.3s;
	}

	.delete-btn:hover {
		background: #c0392b;
	}

	.back-btn {
		margin-top: 20px;
		display: block;
		width: 150px;
		margin-left: auto;
		margin-right: auto;
		padding: 10px;
		border: none;
		border-radius: 8px;
		background: #333;
		color: white;
		cursor: pointer;
	}

	.empty {
		text-align: center;
		color: #888;
		font-size: 14px;
		margin-top: 20px;
	}

</style>

</head>
<body>

	<h1> Notifications</h1>

	<div class="container">

		<c:choose>

			<c:when test="${not empty notifications}">

				<c:forEach var="notification" items="${notifications}">

					<div class="card">

						<div class="left">
							<div class="icon"></div>

							<div>
								<div class="message">${notification.message}</div>
								<div class="time">${notification.time}</div>
							</div>
						</div>

						<a href="/user/delete-notification/${notification.id}">
							<button class="delete-btn">Delete</button>
						</a>

					</div>

				</c:forEach>

			</c:when>

			<c:otherwise>
				<div class="empty">No notifications available</div>
			</c:otherwise>

		</c:choose>

	</div>

	<a href="/user/back">
		<button class="back-btn"> Back</button>
	</a>

</body>
</html>