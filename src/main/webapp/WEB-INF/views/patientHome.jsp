<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Home Page</title>
<link href="/resources/stylesheets/style.css" rel="stylesheet" />
</head>
<body>
	<div align="center">
		<div class="header">
			<h1>Health Inspector</h1>
		</div>
	</div>
	<h2>Patient Home Page</h2>
	<h3>Welcome, ${userLogin.userid} .........${message}</h3>

	<a href="show">Search Doctor</a>
	<br>
	<br>
	<a href="getPatientAppointments">My Appointments</a>
	<br>
	<br>
	<a href="logout"> Logout</a>



	<br>
	<br>
	<form:form modelAttribute="appointment">
		<h3>${approved}appointments approved</h3>
		<h3>${rejected}appointments rejected</h3>

	</form:form>
</body>
</html>