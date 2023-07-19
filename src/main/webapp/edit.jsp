<%@page import="beans.RegsterBean" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<html><body>
      <% RegsterBean rb = (RegsterBean)session.getAttribute("rb");  %>
		 <form action='updatebean.jsp' method='post'>
		 <h3>User-Id</h3><input type='text' name='id' value="<%=rb.getId() %>" >
		 <h3>Name</h3><input type='text' name='name'  value= "<%= rb.getName() %> "></br>
		 <h3>Email</h3><input type='text' name='email' value="<%= rb.getEmail() %>" ></br>
		 <h3>Address</h3><input type='text' name='address' value=<%= rb.getAddress() %> ></br>
		 <h3>DOB</h3><input type='text' name='dob' value="<%= rb.getDob() %>" ></br>
		 <h3>Mobileno</h3><input type='text' name='mobno' value="<%=rb.getMobno() %>" ></br>
		 
		 <input type='submit' value='Register' ></br>
		 </form>
		 </body></html>
		 
</body>
</html>