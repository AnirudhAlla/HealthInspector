<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	<pre>
<form:form method="post" action="changeStatus"
			modelAttribute="appointment">
<table border="2">
<tr>
<td>PatientId</td>
<td>Name</td>
<td>Gender</td>
<td>Doctor Name</td>
<td>diagnosis</td>
<td>symptoms</td>
<td>prescription</td>
<td>treatmentPlanned</td>

</tr>
<tr>
<td>${appointment.patientName.userid}</td>
<td>${appointment.patientName.firstName},${appointment.patientName.lastName}</td>
<td>${appointment.patientName.gender}</td>
<td>${appointment.doctorName.userid}</td>
<td><form:input type="text" path="diagnosis"
							value="${appointment.diagnosis}" /></td>
<td><form:input type="text" path="symptoms"
							value="${appointment.symptoms}" /></td>
<td><form:input type="text" path="prescription"
							value="${appointment.prescription}" /></td>
<td><form:input type="text" path="treatmentPlanned"
							value="${appointment.treatmentPlanned}" /></td>
</tr>

</table>
</form:form>
</pre>
</body>
</html>