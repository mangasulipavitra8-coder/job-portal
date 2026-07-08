<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recruiter Home</title>

<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: 'Poppins', sans-serif;
	}

	body {
		min-height: 100vh;
		background: linear-gradient(135deg, #1f4037, #99f2c8);
		display: flex;
		flex-direction: column;
		align-items: center;
		padding: 20px;
	}

	h1 {
		color: white;
		margin-bottom: 20px;
		font-size: 28px;
	}

	.message {
		color: #ffdddd;
		margin-bottom: 15px;
	}

	.dashboard {
		display: grid;
		grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
		gap: 20px;
		width: 100%;
		max-width: 800px;
	}

	a {
		text-decoration: none;
	}

	.card {
		padding: 25px;
		border-radius: 15px;
		color: white;
		font-size: 18px;
		font-weight: 500;
		display: flex;
		align-items: center;
		justify-content: space-between;
		cursor: pointer;
		transition: 0.3s;
		box-shadow: 0 8px 20px rgba(0,0,0,0.2);
	}

	.card:hover {
		transform: translateY(-5px) scale(1.03);
		box-shadow: 0 12px 25px rgba(0,0,0,0.3);
	}

	/* Different colors for each action */
	.add {
		background: linear-gradient(135deg, #36d1dc, #5b86e5);
	}

	.view {
		background: linear-gradient(135deg, #11998e, #38ef7d);
	}

	.applications {
		background: linear-gradient(135deg, #f7971e, #ffd200);
		color: #000;
	}

	.logout {
		background: linear-gradient(135deg, #ff416c, #ff4b2b);
	}

	@media (max-width: 480px) {
		h1 {
			font-size: 22px;
		}
	}
</style>

</head>
<body>

	<div class="message">
		${pass} ${fail}
	</div>

	<h1>Recruiter Dashboard</h1>

	<div class="dashboard">

		<a href="/recruiter/add-job">
			<div class="card add">
				<span>Add Job</span>
				
			</div>
		</a>

		<a href="/recruiter/view-jobs">
			<div class="card view">
				<span> View Jobs</span>
				
			</div>
		</a>

		<a href="/recruiter/view-applications">
			<div class="card applications">
				<span> Applications</span>
				
			</div>
		</a>

		<a href="/logout">
			<div class="card logout">
				<span> Logout</span>
				
			</div>
		</a>

	</div>

</body>
</html>