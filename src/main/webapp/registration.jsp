<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="rps.css"/> 
</head>
<body>
  <html><body>
          <h2>REGISTRATION PAGE</h2>
		 <form action='registrationbean.jsp' method='post'>
		 <h3>User-Id</h3><input type='text' name='id' >
		 <h3>UserName</h3><input type='text' name='userName'></br>
		 <h3>password</h3><input type='password' name='password' ></br>
		 <h3>Name</h3><input type='text' name='name' ></br>
		 <h3>Email</h3><input type='text' name='email' ></br>
		 <h3>Address</h3><input type='text' name='address' ></br>
		 <h3>DOB</h3><input type='text' name='dob' ></br>
		 <h3>Mobileno</h3><input type='text' name='mobno' ></br>
		 
		 <input type='submit' value='Register' ></br>
		 </form>
		 </body></html>

</body>
</html>