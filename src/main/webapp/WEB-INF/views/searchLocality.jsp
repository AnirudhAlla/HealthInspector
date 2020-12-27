<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search</title>
<link href="/resources/stylesheets/style.css" rel="stylesheet" />
</head>
<body>
	<div align="center">
		<div class="header">
			<h1>Health Inspector</h1>
		</div>
	</div>
	<h2>Select Locality</h2>
	<form:form method="post" action="/findLocality" modelAttribute="clinic">
		<table>
			<tr>
				<td><form:label path="locality">Locality</form:label></td>
				<td><form:input path="locality" /></td>
			</tr>


			<tr>
				<td colspan="2"><input type="submit" value="Search" /></td>
			</tr>
		</table>
	</form:form>
	<br>
	<br>
	<br>
	<a href="javascript:history.back()">Back</a>
</body>
</html>