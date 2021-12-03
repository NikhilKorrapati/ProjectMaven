<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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

h2 {
	margin-left: 50px;
}
</style>

</head>
<body>
	<script>
		swal("Sorry, an error occurred! Please try again.");
	</script>
	<h2 style="color: #034380">Hint: Enter all the required fields and
		check if the user already exists.</h2>
	<form action="homepage.jsp">
		<input type="submit" name="Back" value="HomePage">
	</form>
	<br>
	<br>
	<%-- <jsp:include page="index.jsp"></jsp:include>   --%>
</body>
</html>