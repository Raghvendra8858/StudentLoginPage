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

<jsp:useBean id="seb" class="beans.StudentEditBean" scope="session"/>
 <jsp:setProperty property="*" name="seb"/>
 <%
 
 StudentDAO dao = new StudentDAO();
	int x = dao.studentUpdate(seb);
	System.out.println("Update servlet x......  "+x);
	if(x > 0) {
		session.setAttribute("username",seb.getName());
		 RequestDispatcher rd = request.getRequestDispatcher("/sucess.jsp");
		 rd.forward(request, response);
	}
	else {
		 response.sendRedirect("update.html");
	}
 %>

</body>
</html>