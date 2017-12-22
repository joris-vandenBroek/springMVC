<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student registration confirmation</title>
</head>
<body>
	Student ${student.firstName} ${student.lastName} has been registered.<br/><br/>
	Country: ${student.country}<br/><br/>
	Favorite programming language: ${student.favoriteProgrammingLanguage}<br/><br/>
	Experience with Operating system(s): 
	<ul><c:forEach var="temp" items="${student.operatingSystems}">
		<li>${temp}</li>
	</c:forEach><br/><br/>
</body>
</html>