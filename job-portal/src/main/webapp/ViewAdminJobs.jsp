<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.Duration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin - Job Listings</title>

<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	}

	body {
		background: #f4f6f9;
		padding: 20px;
	}

	h1 {
		text-align: center;
		margin-bottom: 20px;
		color: #333;
	}

	.container {
		max-width: 1100px;
		margin: auto;
		background: white;
		padding: 20px;
		border-radius: 12px;
		box-shadow: 0 5px 20px rgba(0,0,0,0.1);
		overflow-x: auto;
	}

	table {
		width: 100%;
		border-collapse: collapse;
		min-width: 900px;
	}

	th, td {
		padding: 12px;
		text-align: left;
		font-size: 14px;
	}

	th {
		background: #2c3e50;
		color: white;
		position: sticky;
		top: 0;
	}

	tr:nth-child(even) {
		background: #f9f9f9;
	}

	tr:hover {
		background: #eef3ff;
	}

	td {
		color: #555;
	}

	.status-btn {
		padding: 6px 12px;
		border: none;
		border-radius: 5px;
		cursor: pointer;
		font-size: 12px;
		color: white;
	}

	.approve {
		background: #2ecc71;
	}

	.disapprove {
		background: #e74c3c;
	}

	.back {
		text-align: center;
		margin-top: 15px;
	}

	.back button {
		padding: 8px 16px;
		border: none;
		border-radius: 6px;
		background: #34495e;
		color: white;
		cursor: pointer;
	}

	.back button:hover {
		opacity: 0.9;
	}

	@media (max-width: 768px) {
		h1 {
			font-size: 20px;
		}
	}
</style>

</head>
<body>

	<h1> All Job Details</h1>

	<div class="container">

		<table>
			<tr>
				<th>Role</th>
				<th>Description</th>
				<th>Package</th>
				<th>Experience</th>
				<th>Location</th>
				<th>Posted</th>
				<th>Status</th>
			</tr>

			<c:forEach var="job" items="${jobs}">
				<tr>
					<td>${job.title}</td>
					<td>${job.description}</td>
					<td>${job.ctc} LPA</td>
					<td>${job.experience} yrs</td>
					<td>${job.location}</td>

					<td>
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
					</td>

					<td>
						<a href="/admin/change-status/${job.id}">
							<button class="status-btn 
								<c:if test='${job.approved}'>disapprove</c:if>
								<c:if test='${!job.approved}'>approve</c:if>">
								
								<c:if test="${job.approved}">
									Disapprove
								</c:if>
								<c:if test="${!job.approved}">
									Approve
								</c:if>

							</button>
						</a>
					</td>
				</tr>
			</c:forEach>

		</table>

	</div>

	<div class="back">
		<a href="/admin/back">
			<button> Back</button>
		</a>
	</div>

</body>
</html>