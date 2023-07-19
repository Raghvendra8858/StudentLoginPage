<%@page import="beans.RegsterBean"%>
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
	 RegsterBean rb  = dao.studentGetRecords(setid);
	 
	 if(rb != null) {
		 
		 session.setAttribute("rb",rb);
		 RequestDispatcher rd = request.getRequestDispatcher("/edit.jsp");
		 rd.forward(request, response);
	 }
	 else {
		 response.sendRedirect("update.html");
	 }
   
   %>


</body>
</html>