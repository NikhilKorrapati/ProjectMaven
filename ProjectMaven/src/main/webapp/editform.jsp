<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	background-color: #F2F2F2;
	font-family: 'Roboto', sans-serif;
	margin-left: 50px;
	background-image:
		url('https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902771.jpg?size=626&ext=jpg');
	background-size: cover;
	background-height: 100vh;
	bacground-repeat: no-repeat;
}

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
	color: green;
	font-size: 40px;
}

td {
	font-size: 25px;
	color: #03807b;
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
</style>
</head>
<body>
	<%@page import="model.UserValueObject,bean.User"%>

	<%
	String id = request.getParameter("id");
	User u = UserValueObject.getRecordById(Integer.parseInt(id));

	/* if (u == null){
		response.sendRedirect("edit-errors.jsp");  
	}
	else{  */
	%>


	<h1 style="color: #807b03">Edit Form</h1>
	<form action="edituser.jsp" method="post">
		<input type="hidden" name="id" value="<%=u.getId()%>" />
		<table>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" value="<%=u.getName()%>" /></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password"
					value="<%=u.getPassword()%>" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="email" name="email" value="<%=u.getEmail()%>"
					style="width: 210px" /></td>
			</tr>
			<tr>
				<td>Sex:</td>
				<td><input type="radio" name="sex" value="male" style="margin-left: 30px"/>Male <input
					type="radio" name="sex" value="female" style="margin-left: 40px"/>Female</td>
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
			<br>
			<br>
			<tr>
				<td colspan="2"><input type="submit" value="Edit User" /></td>
			</tr>
		</table>
		<br> <br>
	</form>
	<form action="homepage.jsp">
		<input type="submit" value="Home Page">
	</form>

	<%-- <%}%>  --%>

</body>
</html>
