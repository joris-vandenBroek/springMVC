<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student registration</title>
</head>
<body>
	<form:form action="processForm" modelAttribute="student">
		<table border="0">
			<tr>
				<td>First name</td>
				<td><form:input path="firstName"/></td>
			</tr>
			<tr>
				<td>Last name</td>
				<td>
					<form:input path="lastName"/>
				</td>
			</tr>
			<tr>
				<td>Country</td>
				<td>
					<form:select path="country">
						<form:options items="${countryOptions}"/>
					</form:select>
				</td>
				
			</tr>
			<tr>
				<td>Favorite programming language</td>
				<td>
					<form:radiobuttons path="favoriteProgrammingLanguage" items="${programmingLanguageOptions }"/>
				</td>
			</tr>
			<tr>
				<td>Experience with Operating Sysems:</td>
				<td>
					<form:checkboxes path="operatingSystems" items="${operatingSystemsOptions }"/>
				</td>
			</tr>
		</table>
		<input type="submit" value="Register"/>
	
	</form:form>

</body>
</html>