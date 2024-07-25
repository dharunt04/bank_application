<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<style>
body {
    font-family: 'Arial', sans-serif;
    background-color: #f4f4f9;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.container {
    background-color: #fff;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
    border-radius: 12px;
    padding: 30px;
    width: 320px;
    text-align: center;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.container:hover {
    transform: scale(1.05);
    box-shadow: 0 6px 18px rgba(0, 0, 0, 0.2);
}

h2 {
    color: #333;
    margin-bottom: 20px;
}

label {
    display: block;
    margin: 15px 0 5px;
    color: #555;
    text-align: left;
}

input[type="text"], input[type="password"] {
    width: calc(100% - 20px);
    padding: 12px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 8px;
    box-sizing: border-box;
    transition: border-color 0.3s ease;
}

input[type="text"]:focus, input[type="password"]:focus {
    border-color: #007bff;
    outline: none;
}

button {
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 8px;
    padding: 12px 25px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.3s ease;
    width: 100%;
}

button:hover {
    background-color: #0056b3;
    transform: translateY(-2px);
}

.error {
    color: #ff0000;
    margin-top: 10px;
}

.buttons {
    margin-top: 20px;
}

.btn {
    display: inline-block;
    padding: 12px 25px;
    margin: 10px;
    font-size: 16px;
    color: #ffffff;
    background-color: #007bff;
    border: none;
    border-radius: 8px;
    text-decoration: none;
    transition: background-color 0.3s ease, transform 0.3s ease;
}

.btn:hover {
    background-color: #0056b3;
    transform: translateY(-2px);
}
</style>
</head>
<body>
	<div class="container">
		<h2>Admin Login</h2>
		<form action="adminLogin" method="post">
			<label for="username">Username:</label> <input type="text"
				id="username" name="username" required> <label
				for="password">Password:</label> <input type="password"
				id="password" name="password" required>

			<button type="submit">Login</button>
			<div class="buttons">
				<a href="index.jsp" class="btn">Home Page</a>
			</div>

			<%
			if (request.getAttribute("errorMessage") != null) {
			%>
			<p class="error"><%=request.getAttribute("errorMessage")%></p>
			<%
			}
			%>
		</form>
	</div>
</body>
</html>
