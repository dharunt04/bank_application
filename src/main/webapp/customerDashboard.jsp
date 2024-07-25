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
<title>Customer Dashboard</title>
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
    border-radius: 15px;
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
    padding: 40px;
    max-width: 500px;
    width: 90%;
    box-sizing: border-box;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    text-align: center;
}

.container:hover {
    transform: scale(1.03);
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}

h2 {
    color: #3498db;
    margin-bottom: 25px;
    font-size: 24px;
}

p {
    margin: 15px 0 25px;
    font-size: 18px;
    color: #555;
}

ul {
    list-style: none;
    padding: 0;
    margin: 0;
}

li {
    margin: 15px 0;
}

form {
    display: inline-block;
    width: 100%;
}

button, a {
    display: block;
    padding: 15px 25px;
    background-color: #3498db;
    color: #fff;
    border-radius: 8px;
    text-decoration: none;
    font-size: 18px;
    transition: background-color 0.3s ease, transform 0.3s ease;
    border: none;
    cursor: pointer;
    width: 100%;
    text-align: center;
    margin: 15px 0;
}

button:hover, a:hover {
    background-color: #2980b9;
    transform: scale(1.08);
}
</style>
</head>
<body>
	<div class="container">
		<%
		if (session.getAttribute("accountNo") == null) {
			response.sendRedirect("customerLogin.jsp");
			return;
		}
		%>
		<h2>Customer Dashboard</h2>
		<h2>Welcome, ${customer.fullName}!</h2>
		<ul>
			<li>
				<form action="deposit.jsp" method="get">
					<button type="submit">Deposit Money</button>
				</form>
			</li>
			<li>
				<form action="withdraw.jsp" method="get">
					<button type="submit">Withdraw Money</button>
				</form>
			</li>
			<li>
				<form action="checkBalance.jsp" method="get">
					<button type="submit">Check Balance</button>
				</form>
			</li>
			<li>
				<form action="resetPassword.jsp" method="get">
					<button type="submit">Reset Password</button>
				</form>
			</li>
			<li>
				<form action="closeAccount.jsp" method="get">
					<button type="submit">Close Account</button>
				</form>
			</li>
			<li>
				<form action="GeneratePDFServlet" method="get">
					<button type="submit">Mini Statement</button>
				</form>
			</li>
			<li>
				<form action="logout.jsp" method="get">
					<button type="submit">Logout</button>
				</form>
			</li>
		</ul>
	</div>
	<%
	if (request.getAttribute("success") != null && (boolean) request.getAttribute("success")) {
	%>
	<script>
        alert("<%=request.getAttribute("message")%>");
        window.location.href = "customerDashboard.jsp";
    </script>
	<%
	} else if (request.getAttribute("error") != null) {
	%>
	<script>
        alert("<%=request.getAttribute("error")%>
		");
		window.location.href = "customerDashboard.jsp";
	</script>
	<%
	}
	%>
</body>
</html>
