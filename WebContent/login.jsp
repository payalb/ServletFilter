<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Details</title>
</head>
<body>
<form action = "./home.jsp" method = "post">
        <div>
            Name: <input class="text" name="userName" type="text"/>
        </div>

        <div>
            Password: <input class="password" name="password" type="password"/>
        </div>

        <div>
            <input type="submit" value="Submit">
        </div>
    </form>
</body>
</html>