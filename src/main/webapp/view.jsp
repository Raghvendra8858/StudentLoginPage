<%@page import="dao.StudentDAO"%>
<%@page import="beans.StudentViewBean"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="rps3.css"/> 
</head>
<body>

<h1>Student List</h1>
<% 


List<StudentViewBean> list=StudentDAO.getAllStudents();
%>
 <table border='1' width='100%'>
 <tr><th>Id</th><th>Name</th><th>Email</th><th>Address</th><th>Date_of_Birth</th><th>Mobileno</th></tr>
 <%
for(StudentViewBean st:list){

%>
	 <tr>
	 <td> <%=st.getId() %> </td>
	 <td> <%=st.getName() %></td>
	 <td><%= st.getEmail() %></td>
	 <td><%=st.getAdderss() %></td>
	 <td><%=st.getDob() %></td>
	 <td><%=st.getMobno() %></td>
	 </tr>
<%
   }
 %>
 </table>
 
</body>
</html>