<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
input[type=submit] {
	border-radius: 20px;
	color: #038043;
	background-color: #f3f4f6;
	font-size: 20px;
	height: 60px;
	width: 200px;
	border-width: 0px;
	margin-left: 35px;
	text-align: center;
	background-color: transparent;
	background-image: linear-gradient(to bottom, #fff, #f8eedb);
	border: 0 solid #e5e7eb;
}

h1 {
	color: #807b03;
	font-size: 40px;
}

td {
	font-size: 25px;
	color: #03807b;
	margin-top: 20px;
}

input[type=text] {
	border-radius: 20px;
	color: #038043;
	background-color: #f3f4f6;
	font-size: 20px;
	height: 20px;
	width: 200px;
	border-width: 0px;
	margin-left: 35px;
	text-align: center;
	background-color: transparent;
	background-image: linear-gradient(to bottom, #fff, #f8eedb);
	border: 0 solid #e5e7eb;
}

input[type=password] {
	border-radius: 20px;
	color: #038043;
	background-color: #f3f4f6;
	font-size: 20px;
	height: 20px;
	width: 200px;
	border-width: 0px;
	margin-left: 35px;
	text-align: center;
	background-color: transparent;
	background-image: linear-gradient(to bottom, #fff, #f8eedb);
	border: 0 solid #e5e7eb;
}

input[type=email] {
	border-radius: 20px;
	color: #038043;
	background-color: #f3f4f6;
	font-size: 20px;
	height: 20px;
	width: 200px;
	border-width: 0px;
	margin-left: 35px;
	text-align: center;
	background-color: transparent;
	background-image: linear-gradient(to bottom, #fff, #f8eedb);
	border: 0 solid #e5e7eb;
}

select {
	height: 35px;
	width: 220px;
	border-radius: 20px;
	color: green;
	background-color: #d3db79;
	font-size: 20px;
	border-width: 0px;
	margin-left: 20px;
	text-align: center;
}

body {
	background-color: #F2F2F2;
	font-family: 'Roboto', sans-serif;
	background-image:
		url('https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902771.jpg?size=626&ext=jpg');
	background-size: cover;
	background-height: 100vh;
	bacground-repeat: no-repeat;
}

tr {
	margin-top: 20px;
}

body {
	margin-left: 50px;
}
</style>
</head>
<body>

	<h1>Add New User</h1>
	<form action="adduser.jsp" method="post">
		<table>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="email" name="email" style="width: 210px" /></td>
			</tr>
			<tr>
				<td>Sex:</td>
				<td><input type="radio" name="sex" value="male"
					style="margin-left: 30px" />Male <input type="radio" name="sex" style="margin-left: 40px"
					value="female" />Female</td>
			</tr>
			<tr>
				<td>Country:</td>
				<td><select name="country" style="margin-left: 30px">
						<option>India</option>
						<option>Australia</option>
						<option>Netherlands</option>
						<option>England</option>
						<option>Other</option>
				</select></td>
			</tr>
		</table>
		<br> <br> <input type="submit" value="Add User" />
	</form>

	<br>
	<br>

	<form action="homepage.jsp">
		<input type="submit" value="Home Page">
	</form>
</body>
</html>

