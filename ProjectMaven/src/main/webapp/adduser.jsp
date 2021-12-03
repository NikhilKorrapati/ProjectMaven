<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="model.UserValueObject"%>  
	<jsp:useBean id="u" class="bean.User"></jsp:useBean>  
	<jsp:setProperty property="*" name="u"/>  
	  
	<%  
	String name = session.getAttribute("user").toString(); 
	int i=UserValueObject.save(u, name); 
	//String name = request.getParameter("name");
	if(i>0){  
		response.sendRedirect("adduser-success.jsp");  
	}else{  
		response.sendRedirect("adduser-errors.jsp");  
	}  
	%>  
	
</body>
</html>