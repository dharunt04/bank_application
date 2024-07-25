<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setDateHeader("Expires", 0); // Proxies.
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Deposit Money</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f4f7;
	color: #333;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.container {
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	padding: 30px;
	max-width: 400px;
	width: 100%;
	text-align: center;
}

h2 {
	color: #2ecc71;
	margin-bottom: 20px;
}

form {
	display: flex;
	flex-direction: column;
	gap: 15px;
}

label {
	font-size: 16px;
	color: #555;
	text-align: left;
}

input[type="number"] {
	padding: 12px;
	border: 1px solid #ddd;
	border-radius: 5px;
	font-size: 16px;
	box-sizing: border-box;
	width: 100%;
}

input[type="number"]:focus {
	border-color: #2ecc71;
	outline: none;
	box-shadow: 0 0 5px rgba(46, 204, 113, 0.3);
}

button {
	background-color: #2ecc71;
	border: none;
	color: #fff;
	padding: 12px 20px;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
	transition: background-color 0.3s ease, transform 0.3s ease;
}

button:hover {
	background-color: #27ae60;
	transform: scale(1.05);
}

.error {
	color: #e74c3c;
	margin-top: 10px;
}

.success {
	color: #2ecc71;
	margin-top: 10px;
}

/* Styles for the Back to Dashboard link */
a.back-to-dashboard {
	display: inline-block;
	background-color: #3498db;
	color: #fff;
	padding: 10px 15px;
	border-radius: 5px;
	font-size: 14px;
	text-decoration: none;
	text-align: center;
	margin-top: 20px; /* Add margin for spacing */
	transition: background-color 0.3s ease, transform 0.3s ease;
}

a.back-to-dashboard:hover {
	background-color: #2980b9;
	transform: scale(1.05);
}

/* Center the "Back to Dashboard" link */
.center {
	text-align: center;
}
</style>
<script>
function validateForm() {
    const amount = parseFloat(document.getElementById('amount').value);
    const errorElement = document.getElementById('js-error');
    if (amount > 50000) {
        errorElement.textContent = 'Deposit only less than 50,000';
        return false;
    }
    if (amount <= 0) {
        errorElement.textContent = 'Amount must be greater than zero';
        return false;
    }
    return true;
}
</script>
</head>
<body>
	<%
	if (session.getAttribute("accountNo") == null) {
		response.sendRedirect("customerLogin.jsp");
		return;
	}
	%>
	<div class="container">
		<h2>Deposit Money</h2>
		<form action="deposit" method="post" onsubmit="return validateForm()">
			<label for="amount">Amount:</label> 
			<input type="number" id="amount" name="amount" step="0.01" required>
			<button type="submit">Deposit</button>
			<p id="js-error" class="error"></p>
			<%
			if (request.getAttribute("error") != null) {
			%>
			<p class="error"><%=request.getAttribute("error")%></p>
			<%
			}
			%>
			<%
			if (request.getAttribute("message") != null) {
			%>
			<p class="success"><%=request.getAttribute("message")%></p>
			<%
			}
			%>
		</form>
		<div class="center">
			<a href="customerDashboard.jsp" class="back-to-dashboard">Back to Dashboard</a>
		</div>
	</div>
</body>
</html>

