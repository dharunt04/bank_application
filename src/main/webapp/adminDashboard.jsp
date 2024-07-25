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
<title>Admin Dashboard</title>
<style>
	body {
    font-family: 'Arial', sans-serif;
    background-color: #e9ecef;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    flex-direction: column;
}

h2 {
    color: #333;
    margin-bottom: 20px;
}

nav {
    background: linear-gradient(145deg, #ffffff, #e6e6e6);
    box-shadow: 4px 4px 8px #d1d1d1, -4px -4px 8px #ffffff;
    border-radius: 12px;
    padding: 30px;
    width: 320px;
    text-align: center;
}

ul {
    list-style-type: none;
    padding: 0;
}

li {
    margin: 15px 0;
}

button {
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 25px;
    padding: 12px 25px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.3s ease;
    outline: none;
}

button:hover {
    background-color: #0056b3;
    transform: scale(1.05);
}

a {
    text-decoration: none;
    color: #007bff;
    font-weight: bold;
    transition: color 0.3s ease;
}

a:hover {
    color: #0056b3;
}
</style>

</head>
<body>
	<%
	if (session.getAttribute("admin") == null) {
		response.sendRedirect("adminLogin.jsp");
		return;
	}
	%>
	<h2>Welcome, ${admin.username}!</h2>
	
	<nav>
		<ul>
			<li>
				<form action="registerCustomer.jsp" method="get">
					<button type="submit">Register Customer</button>
				</form>
			</li>
			<li>
				<form action="viewCustomers" method="get">
					<button type="submit">View Customer List</button>
				</form>
			</li>
			<li>
				<form action="manageCustomers" method="get">
					<button type="submit">Manage Customers</button>
				</form>
			</li>
			<li>
				<form action="logout.jsp" method="get">
					<button type="submit">Logout</button>
				</form>
			</li>
		</ul>
	</nav>
</body>
</html>
