<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<jsp:useBean id="login" class="beans.LoginBean" scope="session"/>
<jsp:setProperty property="*" name="login"/>

<%
if(login.loingveryfy()){
	
	session.setAttribute("username",login.getUserName());
	RequestDispatcher rd= request.getRequestDispatcher("/success.jsp");
	rd.forward(request, response);
}
else{
	response.sendRedirect("login.jsp");
}

 %>
</body>
</html>