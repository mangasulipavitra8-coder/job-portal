<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Verify OTP</title>

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
		background: linear-gradient(135deg, #667eea, #764ba2);
	}

	.card {
		background: white;
		padding: 35px 30px;
		border-radius: 16px;
		box-shadow: 0 10px 30px rgba(0,0,0,0.2);
		text-align: center;
		width: 100%;
		max-width: 380px;
	}

	h2 {
		margin-bottom: 10px;
		color: #333;
	}

	.message {
		color: #ef4444;
		font-size: 14px;
		margin-bottom: 10px;
	}

	.desc {
		font-size: 13px;
		color: #666;
		margin-bottom: 20px;
	}

	/* OTP Input */
	.otp-input {
		display: flex;
		justify-content: space-between;
		gap: 8px;
		margin-bottom: 20px;
	}

	.otp-input input {
		width: 40px;
		height: 50px;
		text-align: center;
		font-size: 18px;
		border-radius: 8px;
		border: 1px solid #ccc;
		transition: 0.3s;
	}

	.otp-input input:focus {
		border-color: #667eea;
		box-shadow: 0 0 6px rgba(102,126,234,0.5);
		outline: none;
	}

	button {
		width: 100%;
		padding: 12px;
		border: none;
		border-radius: 8px;
		background: linear-gradient(135deg, #667eea, #764ba2);
		color: white;
		font-size: 15px;
		cursor: pointer;
		transition: 0.3s;
	}

	button:hover {
		transform: translateY(-2px);
	}

	.resend {
		margin-top: 10px;
		background: #f3f4f6;
		color: #333;
	}

	.resend:disabled {
		background: #ddd;
		cursor: not-allowed;
	}

	@media (max-width: 480px) {
		.card {
			padding: 25px 20px;
		}
	}
</style>

</head>
<body>

	<div class="card">
		<h2> Verify OTP</h2>

		<div class="message">
			${pass} ${fail}
		</div>

		<div class="desc">
			Enter the OTP sent to your registered email
		</div>

		<form action="/recruiter/verify-otp" method="post">
			<input type="text" name="id" value="${id}" hidden>

			<!-- 6 Digit OTP -->
			<div class="otp-input">
				<input type="text" maxlength="1">
				<input type="text" maxlength="1">
				<input type="text" maxlength="1">
				<input type="text" maxlength="1">
				<input type="text" maxlength="1">
				<input type="text" maxlength="1">
			</div>

			<input type="hidden" name="otp" id="finalOtp">

			<button>Verify</button>
		</form>

		<a href="/recruiter/resend-otp/${id}">
			<button id="resendButton" class="resend">Resend OTP</button>
		</a>

	</div>

	<script>
		var resendButton = document.getElementById("resendButton");
		var timer;

		function disableButton() {
			resendButton.disabled = true;

			var seconds = 30;
			timer = setInterval(function() {
				resendButton.innerHTML = "Resend OTP (" + seconds + "s)";
				seconds--;

				if (seconds < 0) {
					clearInterval(timer);
					resendButton.innerHTML = "Resend OTP";
					resendButton.disabled = false;
				}
			}, 1000);
		}

		window.onload = function() {
			disableButton();
		};

		window.onunload = function() {
			clearInterval(timer);
		};

		/* OTP Logic */
		const inputs = document.querySelectorAll(".otp-input input");
		const finalOtp = document.getElementById("finalOtp");

		inputs.forEach((input, index) => {
			input.addEventListener("input", () => {
				if (input.value.length === 1 && index < inputs.length - 1) {
					inputs[index + 1].focus();
				}
				updateOTP();
			});

			/* Backspace support */
			input.addEventListener("keydown", (e) => {
				if (e.key === "Backspace" && input.value === "" && index > 0) {
					inputs[index - 1].focus();
				}
			});
		});

		function updateOTP() {
			let otp = "";
			inputs.forEach(i => otp += i.value);
			finalOtp.value = otp;
		}
	</script>

</body>
</html>