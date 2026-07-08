<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.Duration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Jobs</title>

<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Poppins', sans-serif;
	}

	body {
		background: linear-gradient(135deg, #f6f9fc, #e9eff5);
		padding: 20px;
	}

	h1 {
		text-align: center;
		margin-bottom: 25px;
		color: #333;
	}

	.container {
		display: grid;
		grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
		gap: 20px;
	}

	.card {
		background: white;
		padding: 20px;
		border-radius: 15px;
		box-shadow: 0 8px 20px rgba(0,0,0,0.1);
		transition: 0.3s;
		display: flex;
		flex-direction: column;
		gap: 10px;
	}

	.card:hover {
		transform: translateY(-5px);
		box-shadow: 0 15px 30px rgba(0,0,0,0.2);
	}

	.title {
		font-size: 18px;
		font-weight: bold;
		color: #2c3e50;
	}

	.desc {
		font-size: 14px;
		color: #555;
	}

	.info {
		font-size: 13px;
		color: #777;
	}

	.badge {
		display: inline-block;
		padding: 5px 10px;
		border-radius: 20px;
		font-size: 12px;
		color: white;
		width: fit-content;
	}

	.approved {
		background: #2ecc71;
	}

	.pending {
		background: #e67e22;
	}

	.footer {
		display: flex;
		justify-content: space-between;
		align-items: center;
		margin-top: 10px;
	}

	.time {
		font-size: 12px;
		color: #888;
	}

	.back-btn {
		margin-top: 30px;
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
</style>

</head>
<body>

	<h1> My Job Listings</h1>

	<div class="container">

		<c:forEach var="job" items="${jobs}">

			<div class="card">

				<div class="title">${job.title}</div>

				<div class="desc">${job.description}</div>

				<div class="info"> ${job.ctc} LPA</div>
				<div class="info"> ${job.location}</div>
				<div class="info"> ${job.experience} yrs experience</div>

				<div class="badge ${job.approved ? 'approved' : 'pending'}">
					<c:choose>
						<c:when test="${job.approved}">Approved</c:when>
						<c:otherwise>Pending</c:otherwise>
					</c:choose>
				</div>

				<div class="footer">

					<div class="time">
						<c:set var="duration"
							value="${Duration.between(job.postedTime, LocalDateTime.now())}" />

						<c:choose>
							<c:when test="${duration.toDays()==0}">
								<c:choose>
									<c:when test="${duration.toHours()==0}">
										<c:choose>
											<c:when test="${duration.toMinutes()==0}">
												${duration.toSeconds()} sec ago
											</c:when>
											<c:otherwise>
												${duration.toMinutes()} min ago
											</c:otherwise>
										</c:choose>
									</c:when>
									<c:otherwise>
										${duration.toHours()} hrs ago
									</c:otherwise>
								</c:choose>
							</c:when>
							<c:otherwise>
								${duration.toDays()} days ago
							</c:otherwise>
						</c:choose>
					</div>

				</div>

			</div>

		</c:forEach>

	</div>

	<a href="/recruiter/back">
		<button class="back-btn"> Back</button>
	</a>

</body>
</html>