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
	margin-left: 50px;
	text-align: center;
	background-color: transparent;
	background-image: linear-gradient(to bottom, #fff, #f8eedb);
	border: 0 solid #e5e7eb;
}

body {
	background-color: #F2F2F2;
	font-family: 'Roboto', sans-serif;
	background-image:
		url('https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v546batch3-mynt-34-badgewatercolor_1.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=89288ef4b47127f7f34a5998b50e4470');
	background-size: cover;
	background-height: 100vh;
	bacground-repeat: no-repeat;
}
</style>
</head>
<body>
	<%@page import="model.*"%>
	<jsp:useBean id="u" class="bean.User"></jsp:useBean>
	<jsp:setProperty property="*" name="u" />
	<%
	String name = request.getParameter("uname");
	String pass = request.getParameter("pass");
	int status;
	status = UserValueObject.validation(name, pass);

	if (status == 1) {

		session.setAttribute("user", name);

		response.sendRedirect("homepage.jsp");

	} else {
		out.print("<div style='margin-left:50px'>");
		out.print("<h1 style='color:#034380'>Please enter correct credentials!</h1>");
		out.print("</div>");
		out.print("<br><br>");
	%>

	<form action='index.jsp'>
		<input type='submit' name='back' value="Back to Login">
	</form>

	<%
	}
	%>

</body>
</html>