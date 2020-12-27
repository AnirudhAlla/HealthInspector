<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="/resources/stylesheets/style.css" rel="stylesheet" />
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div class="header">
			<h1>Health Inspector</h1>
		</div>
	</div>
	<h2>My Appointments</h2>
	<table border="1">

		<tr>
			<td>PatientId</td>
			<td>Name</td>
			<td>Gender</td>
			<td>Update details</td>

		</tr>
		<c:forEach items="${approvedAppointments}" var="appointment">

			<tr>
				<td>${appointment.patientId}</td>
				<td>${appointment.patientName.firstName}
					${appointment.patientName.lastName}</td>
				<td>${appointment.patientName.gender}</td>
				<td><a
					href="/updatePatientDetails?appointmentId=${appointment.appointmentId}">Update</a>
			</tr>
		</c:forEach>
	</table>


	<br>
	<br>
	<br>
	<a href="javascript:history.back()">Back</a>

</body>
</html>