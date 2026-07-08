<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>

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
		background: linear-gradient(120deg, #2c3e50, #4ca1af);
	}

	.dashboard {
		background: #ffffff;
		padding: 40px 30px;
		border-radius: 15px;
		box-shadow: 0 12px 30px rgba(0,0,0,0.2);
		text-align: center;
		width: 100%;
		max-width: 420px;
	}

	h1 {
		margin-bottom: 30px;
		color: #2c3e50;
		font-weight: 600;
	}

	.card-container {
		display: flex;
		flex-direction: column;
		gap: 20px;
	}

	.card {
		padding: 18px;
		border-radius: 12px;
		color: white;
		text-decoration: none;
		display: flex;
		align-items: center;
		justify-content: space-between;
		font-size: 16px;
		font-weight: 500;
		transition: 0.3s;
		box-shadow: 0 6px 15px rgba(0,0,0,0.15);
	}

	.card span {
		font-size: 20px;
	}

	.approve {
		background: linear-gradient(135deg, #00b09b, #96c93d);
	}

	.logout {
		background: linear-gradient(135deg, #ff416c, #ff4b2b);
	}

	.card:hover {
		transform: translateY(-4px) scale(1.02);
		box-shadow: 0 10px 25px rgba(0,0,0,0.25);
	}

	/* Responsive */
	@media (max-width: 480px) {
		.dashboard {
			padding: 25px 20px;
		}

		h1 {
			font-size: 22px;
		}

		.card {
			font-size: 14px;
			padding: 14px;
		}
	}
</style>

</head>
<body>

	<div class="dashboard">
		<h1>Admin Dashboard</h1>

		<div class="card-container">

			<a href="/admin/view-jobs" class="card approve">
				<span> Approve Jobs</span>
				
			</a>

			<a href="/logout" class="card logout">
				<span> Logout</span>
				
			</a>

		</div>
	</div>

</body>
</html>