<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<%@page import="model.*"%>  
	<jsp:useBean id="u" class="bean.User"></jsp:useBean>  
	<jsp:setProperty property="*" name="u"/>  
	
	<%  
	
	String name1 = session.getAttribute("user").toString(); 
	int i=UserValueObject.update(u, name1);  
	//response.sendRedirect("viewusers.jsp");  
	String id = request.getParameter("id");
	
	/* if(i==0){  	
		response.sendRedirect("edit-errors.jsp");  
	}else{  */ 
		response.sendRedirect("edit-success.jsp"); 
	/* }  */ 
	%>   
	
	<%-- <% 
	String name = request.getParameter("name");
	
	//response.sendRedirect("viewusers.jsp");  
	if(name.equals(null) || name.equals("")){  
		response.sendRedirect("adduser-errors.jsp");  	
		
	}else{  
		UserValueObject.update(name);  
		response.sendRedirect("edit-success.jsp");  
	}  
	%>  --%>
	
</body>
</html>