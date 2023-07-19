<%@page import="dao.StudentDAO"%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <jsp:useBean id="rb" class="beans.RegsterBean" scope="session"/>
   <jsp:setProperty property="*" name="rb"/>
   
    <%
     StudentDAO dao = new StudentDAO();
     int x = dao.studentRegister(rb);
     if(x > 0) {
    	 session.setAttribute("username","Register success "+ rb.getUserName());
		 RequestDispatcher rd = request.getRequestDispatcher("/sucess.jsp");
		 rd.forward(request, response);
	}
	else {
		 response.sendRedirect("registration.jsp");
	}
  %>
   
</body>
</html>