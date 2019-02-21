<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Details</title>
</head>
<body>

	<form action="./addEmployee" method="post">
		Name: <input type="text" name="name" required pattern="[a-zA-Z]{3,}" /><br />
		Telephone Number: <input type="tel" name="telNo" required
			pattern="[0-9]{8,12}" /><br /> Email: <input type="email"
			name="email" required /><br /> Password: <input type="password"
			name="password" required /><br /> Projects: <select name="projects"
			multiple="multiple" required="required">
			<option value="Java">Java Project</option>
			<option value="C">C Project</option>
			<option value="C++">C++ Project</option>
			<option value="VB">VB Project</option>
		</select> <input type="submit">
	</form>
</body>
</html>