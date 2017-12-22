<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer registration confirmation</title>
</head>
<body>
	Customer ${customer.firstName} ${customer.lastName} has been registered.<br/><br/>
	Free passes: ${customer.freePasses}<br/><br/>
	Postal code: ${customer.postalCode}<br/><br/>
</body>
</html>