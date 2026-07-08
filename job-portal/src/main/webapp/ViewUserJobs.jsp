<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.Duration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Jobs</title>

<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Poppins', sans-serif;
	}

	body {
		background: linear-gradient(135deg, #eef2f3, #dfe9f3);
		padding: 20px;
	}

	h1 {
		text-align: center;
		margin-bottom: 20px;
		color: #333;
	}

	.message {
		text-align: center;
		color: #e74c3c;
		margin-bottom: 10px;
	}

	.container {
		display: grid;
		grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
		gap: 20px;
	}

	.card {
		background: white;
		padding: 20px;
		border-radius: 15px;
		box-shadow: 0 10px 25px rgba(0,0,0,0.1);
		transition: 0.3s;
		display: flex;
		flex-direction: column;
		gap: 10px;
	}

	.card:hover {
		transform: translateY(-5px);
		box-shadow: 0 15px 35px rgba(0,0,0,0.2);
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

	.skills {
		display: flex;
		flex-wrap: wrap;
		gap: 6px;
	}

	.skill {
		background: #ecf0f1;
		padding: 4px 8px;
		border-radius: 6px;
		font-size: 12px;
	}

	.info {
		font-size: 13px;
		color: #777;
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

	.apply-btn {
		padding: 8px 14px;
		border: none;
		border-radius: 8px;
		background: linear-gradient(135deg, #667eea, #764ba2);
		color: white;
		cursor: pointer;
		font-size: 13px;
		transition: 0.3s;
	}

	.apply-btn:hover {
		transform: translateY(-2px);
		box-shadow: 0 5px 15px rgba(0,0,0,0.2);
	}

	.back-btn {
		margin-top: 25px;
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

	<div class="message">
		${fail} ${pass}
	</div>

	<h1> Available Jobs</h1>

	<div class="container">

		<c:forEach var="job" items="${jobs}">

			<div class="card">

				<div class="title">${job.title}</div>

				<div class="desc">${job.description}</div>

				<div class="skills">
					<span class="skill">${job.skills}</span>
				</div>

				<div class="info"> ₹${job.ctc} LPA</div>
				<div class="info"> ${job.location}</div>
				<div class="info"> ${job.experience} yrs experience</div>
				<div class="info"> ${job.numberOfPositions} openings</div>

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

					<a href="/user/check-job/${job.id}">
						<button class="apply-btn">Apply</button>
					</a>

				</div>

			</div>

		</c:forEach>

	</div>

	<a href="/user/back">
		<button class="back-btn"> Back</button>
	</a>

</body>
</html>