<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Details Page</title>
<link href="/resources/stylesheets/style.css" rel="stylesheet"/>
</head>
<body>
<div align="center">
<div class="header">
<h1>Health Inspector</h1>
</div>
</div>
<h2>Select Clinic</h2>
	<form:form method="post" action="searchDoctors"    modelAttribute="clinicModel">
		<td><form:select path="clinicId">
				<form:option value="Select Clinic"></form:option>
				<c:forEach items="${clinic}" var="clinic">
					<form:option value="${clinic.clinicId}">${clinic.clinicName}</form:option>
				</c:forEach>
			</form:select></td>
			<td colspan="2"><input type="submit" value="Search Doctors" /></td>
			
		
	</form:form>
	
		<br><br><br>
	<a href="javascript:history.back()">Back</a>
</body>
</html>