<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Bank Application</title>
<link rel="stylesheet" href="styles.css">
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f8f9fa;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.container {
    text-align: center;
    background-color: #ffffff;
    padding: 50px;
    border-radius: 15px;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.container:hover {
    transform: scale(1.03);
    box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
}

h1 {
    color: #343a40;
    font-size: 32px;
    margin-bottom: 25px;
}

.buttons {
    margin-top: 30px;
}

.btn {
    display: inline-block;
    padding: 15px 30px;
    margin: 15px;
    font-size: 18px;
    color: #ffffff;
    background-color: #007bff;
    border: none;
    border-radius: 10px;
    text-decoration: none;
    transition: background-color 0.3s ease, transform 0.3s ease;
    cursor: pointer;
}

.btn:hover {
    background-color: #0056b3;
    transform: scale(1.05);
}
</style>
</head>
<body>
	<div class="container">
		<h1>Welcome to the Bank Application</h1>
		<div class="buttons">
			<a href="customerLogin.jsp" class="btn">Customer Login</a> <a
				href="adminLogin.jsp" class="btn">Admin Login</a>
		</div>
	</div>
</body>
</html>
