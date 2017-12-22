<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
	.error {color:red}
</style>
<title>Customer registration</title>
</head>
<body>
	<i>Please fill out the form. * means required.</i><br/><br/>
	<form:form action="processForm" modelAttribute="customer">
		<table border="0">
			<tr>
				<td>First name</td>
				<td><form:input path="firstName"/></td>
			</tr>
			<tr>
				<td>Last name(*)</td>
				<td>
					<form:input path="lastName"/>
					<form:errors path="lastName" cssClass="error"/>
				</td>
			</tr>
			<tr>
				<td>Free passes</td>
				<td>
					<form:input path="freePasses"/>
					<form:errors path="freePasses" cssClass="error"/>
				</td>
			</tr>
			<tr>
				<td>Postal code</td>
				<td>
					<form:input path="postalCode"/>
					<form:errors path="postalCode" cssClass="error"/>
				</td>
			</tr>
		</table>
		<input type="submit" value="Register"/>
	
	</form:form>

</body>
</html>