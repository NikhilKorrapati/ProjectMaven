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
	margin-left: 80px;
}

input{
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

/* 

      body {
        font-family: 'Inter', sans-serif;
        color: #343a40;
        line-height: 1;
        display: flex;
        justify-content: center;
      } */
table {
	width: 800px;
	border-right-color: #ffffff;
	margin-top: 50px;
	margin-left: 50px;
	font-size: 18px;
	/* /* border: 1px solid #343a40; */
	border-collapse: collapse;
}

th, td {
	/* border: 1px solid #343a40; */
	padding: 16px 24px;
	text-align: left;
	width: auto;
}

th {
	background-color: #087f5b;
	color: #fff;
	width: 25%;
}

tbody tr:nth-child(odd) {
	background-color: #f8f9fa;
}

tbody tr:nth-child(even) {
	background-color: #e9ecef;
}

h1 {
	margin-left: 50px;
}

td {
	width: auto;
}

.del-icon{
	width: 60px;
}
.edit-icon{
	width: 40px;
}
</style>
</head>
<body>
	<%@page import="bean.*,model.*,java.util.*"%>
	<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>

	<h1 style="color:#034380">Users List</h1>

	<%
	List<User> list = UserValueObject.getAllRecords();
	request.setAttribute("list", list);
	%>

	<table border="1" width="90%">
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Password</th>
				<th>Email</th>
				<th>Sex</th>
				<th>Country</th>
				<th>Inserted Date</th>
				<th>Modified User</th>
				<th>Modified Date</th>
				<th>Edit</th>
				<th>Delete</th>
				<!-- <th>Edit</th>
			<th>Delete</th> -->
			</tr>
		</thead>
		<%
		for (int i = 0; i < list.size(); i++) {
		%>
		<tbody>
			<tr>
				<td><%=(list.get(i)).getId()%></td>
				<td><%=(list.get(i)).getName()%></td>
				<td><%=(list.get(i)).getPassword()%></td>
				<td><%=(list.get(i)).getEmail()%></td>
				<td><%=(list.get(i)).getSex()%></td>
				<td><%=(list.get(i)).getCountry()%></td>
				<td><%=(list.get(i)).getDate()%></td>
				<td><%=(list.get(i)).getModifiedBy()%></td>
				<td><%=(list.get(i)).getModifiedDate()%></td>

				<td><a href="editform.jsp?id=<%=(list.get(i)).getId()%>"><img src="https://cdn.icon-icons.com/icons2/2621/PNG/512/gui_edit_icon_157165.png" class="edit-icon"></a></td>
				<td><a href="deleteuser.jsp?id=<%=(list.get(i)).getId()%>" onclick="return confirm('Are you sure you want to Remove?');">
						<img src="https://media.istockphoto.com/vectors/garbage-bin-sign-vector-id1139466631?k=20&m=1139466631&s=170667a&w=0&h=oDWQQL3j8o56bar7af_g9XYrRxBqdnUAKbCUeWTMg1Q=" 
						class="del-icon"></a></td>
			</tr>

			<!-- <td><a href="editform.jsp">Edit</a></td>
			<td><a href="deleteuser.jsp">Delete</a></td> -->

			</tr>

			<%
			}
			%>

			<%-- <c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getId()}</td>
				<td>${u.getName()}</td>
				<td>${u.getPassword()}</td>
				<td>${u.getEmail()}</td>
				<td>${u.getSex()}</td>
				<td>${u.getCountry()}</td>
				<td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>
				<td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td>
			</tr>
		</c:forEach> --%>
		<tbody>
	</table>
	<br />
	<br>
	<br />
	<!-- <form action="adduserform.jsp">
         <input type="submit" name="AddUser" value="Add User">       
    </form> 
	<br><br>
	<form action="homepage.jsp">
         <input type="submit" name="Back" value="HomePage">       
    </form>  -->
</body>
</html>