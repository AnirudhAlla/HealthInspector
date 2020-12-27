<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="/resources/stylesheets/style.css" rel="stylesheet" />
</head>
<body>
	<div align="center">
		<div class="header">
			<h1>Health Inspector</h1>
		</div>
	</div>
	<h2>Update Appointments</h2>
	<form:form method="post" action="confirmUpdate" modelAttribute="app">
		<table>
			<tr>
				<td><form:label path="appointmentId">
						<b>Appointment Id</b>
					</form:label></td>
				<td><form:input path="appointmentId"
						value="${appointment.appointmentId}" /></td>
			</tr>


			<tr>
				<td><form:label path="patientName">
						<b>Patient Name</b>
					</form:label></td>
				<td><form:input path="patientName"
						value="${appointment.patientName.userid}" /></td>
			</tr>

			<tr>
				<td><form:label path="doctorName">
						<b>Doctor Name</b>
					</form:label></td>
				<td><form:input path="doctorName"
						value="${appointment.doctorName.userid}" /></td>
			</tr>

			<tr>
				<td><form:label path="symptoms">
						<b>Symptoms</b>
					</form:label></td>
				<td><form:input path="symptoms" required="required" /></td>
			</tr>

			<tr>
				<td><form:label path="diagnosis">
						<b>Diagnosis</b>
					</form:label></td>
				<td><form:input path="diagnosis" required="required" /></td>
			</tr>

			<tr>
				<td><form:label path="treatmentPlanned">
						<b>Treatment Planned</b>
					</form:label></td>
				<td><form:input path="treatmentPlanned" required="required" /></td>
			</tr>

			<tr>
				<td><form:label path="prescription">
						<b>Prescription</b>
					</form:label></td>
				<td><form:input path="prescription" required="required" /></td>
			</tr>

			<tr>
				<td><form:label path="revisitRequired">
						<b>Revisit Required</b>
					</form:label></td>
				<td><form:input path="revisitRequired" /></td>
			</tr>

			<tr>
				<td><form:label path="revisitDate">
						<b>Revisit Date</b>
					</form:label></td>
				<td><form:input type="Date" path="revisitDate" /></td>
			</tr>

			<tr>
				<td><input type="submit" value="Update  details"></td>


			</tr>
		</table>



	</form:form>
	<br>
	<br>
	<br>
	<a href="javascript:history.back()">Back</a>
</body>
</html>