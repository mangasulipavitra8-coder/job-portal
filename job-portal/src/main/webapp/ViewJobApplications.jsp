<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Applications Dashboard</title>

<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Poppins', sans-serif;
	}

	body {
		background: #f0f2f5;
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
		min-width: 1000px;
	}

	th {
		background: #2c3e50;
		color: white;
		padding: 12px;
		text-align: left;
		font-size: 14px;
	}

	td {
		padding: 12px;
		font-size: 14px;
		color: #444;
		border-bottom: 1px solid #eee;
	}

	tr:hover {
		background: #f7f9fc;
	}

	.badge {
		padding: 5px 10px;
		border-radius: 20px;
		font-size: 12px;
		color: white;
	}

	.applied { background: #f39c12; }
	.scheduled { background: #3498db; }
	.selected { background: #2ecc71; }
	.rejected { background: #e74c3c; }

	.btn {
		padding: 6px 10px;
		border: none;
		border-radius: 6px;
		cursor: pointer;
		font-size: 12px;
		color: white;
		margin: 2px;
		transition: 0.3s;
	}

	.download { background: #8e44ad; }
	.schedule { background: #3498db; }
	.accept { background: #2ecc71; }
	.reject { background: #e74c3c; }

	.btn:hover {
		transform: translateY(-2px);
		box-shadow: 0 4px 10px rgba(0,0,0,0.2);
	}

	.na {
		color: #888;
		font-style: italic;
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

	@media (max-width: 768px) {
		table {
			font-size: 12px;
		}
	}
</style>

</head>
<body>

	<h1> Applications Dashboard</h1>

	<div class="container">

		<table>

			<tr>
				<th>Applicant</th>
				<th>Mobile</th>
				<th>Role</th>
				<th>Resume</th>
				<th>Applied</th>
				<th>Interview</th>
				<th>Status</th>
				<th>Action</th>
			</tr>

			<c:forEach var="application" items="${applications}">
				<tr>

					<td>${application.user.name}</td>
					<td>${application.user.mobile}</td>
					<td>${application.job.title}</td>

					<td>
						<a href="/recruiter/resume/${application.user.id}">
							<button class="btn download">Download</button>
						</a>
					</td>

					<td>${application.appliedDate}</td>

					<td>
						<c:choose>
							<c:when test="${application.interviewDate==null}">
								<span class="na">Not Scheduled</span>
							</c:when>
							<c:otherwise>
								${application.interviewDate}
							</c:otherwise>
						</c:choose>
					</td>

					<td>
						<span class="badge 
							<c:choose>
								<c:when test='${application.jobStatus.name()=="APPLIED"}'>applied</c:when>
								<c:when test='${application.jobStatus.name()=="SCHEDULED"}'>scheduled</c:when>
								<c:when test='${application.jobStatus.name()=="SELECTED"}'>selected</c:when>
								<c:otherwise>rejected</c:otherwise>
							</c:choose>">
							${application.jobStatus}
						</span>
					</td>

					<td>
						<c:choose>

							<c:when test="${application.jobStatus.name()=='APPLIED'}">
								<a href="/recruiter/schedule/${application.id}">
									<button class="btn schedule">Schedule</button>
								</a>
							</c:when>

							<c:when test="${application.jobStatus.name()=='SCHEDULED'}">
								<a href="/recruiter/accept/${application.id}">
									<button class="btn accept">Accept</button>
								</a>
								<a href="/recruiter/reject/${application.id}">
									<button class="btn reject">Reject</button>
								</a>
							</c:when>

							<c:otherwise>
								<span class="na">Completed</span>
							</c:otherwise>

						</c:choose>
					</td>

				</tr>
			</c:forEach>

		</table>

	</div>

	<a href="/recruiter/back">
		<button class="back-btn"> Back</button>
	</a>

</body>
</html>