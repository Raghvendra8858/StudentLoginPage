<%@page import="dao.StudentDAO"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="setid" class="beans.SetIDBean" scope="session"/>
<jsp:setProperty property="*" name="setid"/>

<%
StudentDAO dao = new StudentDAO();
int x= dao.deleteById(setid);
if(x>0){
	RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");
	rd.forward(request, response);
}
else{
	response.sendRedirect("error.html");
}
%>
</body>
</html>