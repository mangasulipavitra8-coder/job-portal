<%@page import="java.time.format.DateTimeFormatter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Applications</title>

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

	.container {
		background: white;
		border-radius: 15px;
		padding: 20px;
		box-shadow: 0 10px 25px rgba(0,0,0,0.1);
		overflow-x: auto;
	}

	table {
		width: 100%;
		border-collapse: collapse;
		min-width: 900px;
	}

	th {
		background: linear-gradient(135deg, #667eea, #764ba2);
		color: white;
		padding: 12px;
		font-size: 14px;
		text-align: left;
	}

	td {
		padding: 12px;
		font-size: 14px;
		color: #444;
		border-bottom: 1px solid #eee;
	}

	tr:hover {
		background: #f5f8ff;
	}

	.badge {
		padding: 5px 10px;
		border-radius: 20px;
		font-size: 12px;
		color: white;
		display: inline-block;
		font-weight: bold;
		text-transform: uppercase;
	}

	.pending {
		background: #f39c12;
	}

	.scheduled {
		background: #3498db;
	}

	.selected {
		background: #2ecc71;
	}

	.rejected {
		background: #e74c3c;
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
		font-size: 14px;
		font-weight: bold;
		transition: 0.3s;
	}

	.back-btn:hover {
		background: #555;
	}

	@media (max-width: 768px) {
		table {
			font-size: 12px;
		}
	}
</style>

</head>

<body>

	<h1>My Applications</h1>

	<div class="container">

		<table>

			<tr>
				<th>Company</th>
				<th>Role</th>
				<th>Package</th>
				<th>Location</th>
				<th>Applied Date</th>
				<th>Interview</th>
				<th>Status</th>
			</tr>

			<c:forEach var="application" items="${applications}">

				<tr>

					<td>${application.job.recruiter.companyname}</td>

					<td>${application.job.title}</td>

					<td>₹${application.job.ctc} LPA</td>

					<td>${application.job.location}</td>

					<td>
						<c:set var="format"
							value="${DateTimeFormatter.ofPattern('dd-MMM-yyyy HH:mm')}" />

						${application.appliedDate.format(format)}
					</td>

					<td>
						<c:choose>

							<c:when test="${application.interviewDate == null}">
								<span style="color: #888;">Not Scheduled</span>
							</c:when>

							<c:otherwise>

								<c:set var="format"
									value="${DateTimeFormatter.ofPattern('dd-MMM-yyyy HH:mm')}" />

								${application.interviewDate.format(format)}

							</c:otherwise>

						</c:choose>
					</td>

					<td>

						<span class="badge
							${application.jobStatus.name() eq 'PENDING' ? 'pending' :
							  application.jobStatus.name() eq 'SCHEDULED' ? 'scheduled' :
							  application.jobStatus.name() eq 'SELECTED' ? 'selected' :
							  'rejected'}">

							${application.jobStatus}

						</span>

					</td>

				</tr>

			</c:forEach>

		</table>

	</div>

	<a href="/user/back">
		<button class="back-btn">Back</button>
	</a>

</body>
</html>