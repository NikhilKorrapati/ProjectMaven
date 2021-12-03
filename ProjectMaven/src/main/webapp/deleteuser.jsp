<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
input {
	border-radius: 20px;
	color: #038043;
	background-color: #f3f4f6;
	font-size: 20px;
	height: 60px;
	width: 160px;
	border-width: 0px;
	margin-left: 35px;
	text-align: center;
	background-color: transparent;
	background-image: linear-gradient(to bottom, #fff, #f8eedb);
	border: 0 solid #e5e7eb;
}

input[type=text] {
	border-radius: 20px;
	color: #038043;
	background-color: #f3f4f6;
	font-size: 20px;
	height: 60px;
	width: 160px;
	border-width: 0px;
	margin-left: 35px;
	text-align: center;
	background-color: transparent;
	background-image: linear-gradient(to bottom, #fff, #f8eedb);
	border: 0 solid #e5e7eb;
}

body {
	background-color: #F2F2F2;
	font-family: 'Roboto', sans-serif;
	background-image:
		url('https://i.imgur.com/ZOcLM7h.jpg');
	background-size: cover;
	background-height: 100vh;
	bacground-repeat: no-repeat;
}
</style>
</head>
<body>

	<!-- <h1 style="color: orange">Enter the name to delete:</h1>
	<form action="deleteuserform.jsp">
		<input type="text" name="name" placeholder="Enter here"> <br>
		<br> <input type="submit" value="Delete">
	</form>
	<br>
	<br> -->
	<%@page import="model.*"%>
	<jsp:useBean id="u" class="bean.User"></jsp:useBean>
	<jsp:setProperty property="*" name="u" />
	<%
	UserValueObject.delete(u);
	response.sendRedirect("delete-sucess.jsp");
	//response.sendRedirect("viewusers.jsp");
	%>

	<!-- <form action="homepage.jsp">
		<input type="submit" name="Back" value="HomePage">
	</form> -->

</body>
</html>