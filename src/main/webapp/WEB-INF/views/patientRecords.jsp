<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<h2>Medical Report</h2>
	<table border="1">

		<tr>
			<td>PatientId</td>
			<td>Doctor Name</td>
			<td>Gender</td>
			<td>Symptoms</td>
			<td>Diagnosis</td>
			<td>Treatment planned</td>
			<td>Prescription</td>
			<td>Revisit Required</td>
			<td>Revisit Date</td>
		</tr>
		<c:forEach items="${records}" var="records">
			<tr>
				<td>${ records.patientId}</td>
				<td>${records.doctorName.firstName},${records.doctorName.lastName}</td>
				<td>${records.patientName.gender}</td>
				<td>${records.symptoms}</td>
				<td>${records.diagnosis}</td>
				<td>${records.treatmentPlanned}</td>
				<td>${records.prescription}</td>
				<td>${records.revisitRequired}</td>
				<td>${records.revisitDate}</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<br>
	<br>
	<a href="javascript:history.back()">Back</a>
</body>
</html>