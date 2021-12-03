<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>JSP CRUD Example</title>  
<style>
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
	body{
		
		font-family: 'Roboto', sans-serif;
		background-image: url('https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v546batch3-mynt-34-badgewatercolor_1.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=89288ef4b47127f7f34a5998b50e4470');
		background-size: cover;
		background-height: 100vh;
		bacground-repeat: no-repeat;
	}
	
	.viewing{		
		margin: auto;
		float: left;
	}
	
	.main{
		display: flex;
		flex-direction: column;
		justify-content: center;
	}

	
</style>
</head>  
<body>  
	<div class="main">
		
		<%
			String name=(String)session.getAttribute("user");  
			out.print("<h1 style='color:#034380'>Welcome "+name+ "</h1>");  
			
		%>
		
		<form action="adduserform.jsp">
	        <input type="submit" value="Add User">
	    </form>
	    <br><br>
	    <!-- <form action="editinput.jsp" >
	        <input type="submit" value="Edit User">
	    </form>
	    <br><br>
	    <form action="deleteuser.jsp">
	        <input type="submit" value="Delete User">
	    </form> -->
	    <form action="index.jsp">
	        <input type="submit" value="Sign out" >
	    </form>
	    <br>
  </div> 
  
    <div class="viewing">
    	<jsp:include page="viewusers.jsp"></jsp:include>  
    </div>
</body>  
</html>  



