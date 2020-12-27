<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Home Page</title>
<link href="/resources/stylesheets/style.css" rel="stylesheet"/>
<script type="text/javascript">
	function changeStatus(status) {
		document.getElementById("status").value = status;
		document.getElementById("statuschange").submit();
	}
</script>
</head>
<body>
<div align="center">
<div class="header">
<h1>Health Inspector</h1>
</div>
</div>
	<h2>Doctor Home Page</h2>
	<h3>Welcome, ${userLogin.userid} .........${message}</h3>
	<a href="update">Update Details</a>
	<br><br>
	<a href="showclinic">Add Clinic</a>
	<br><br>
	<a href="listAppointments">My Appointments</a>
	<br><br>
	<a href="updatedRecords">Updated Records</a>
	<br><br>
	<a href="logout" >  Logout</a>
	
	<c:forEach items="${pendingAppointments}" var="appointment"
		varStatus="loop">
		<form:form id="statuschange" method="post" action="changeStatus"
			modelAttribute="appointment">
					${loop.index+1}
					<form:hidden path="appointmentId"
				value="${appointment.appointmentId}" />
					${appointment.patientName.firstName} ${appointment.patientName.lastName} 
					${appointment.visitDate }
					<form:hidden path="appointmentStatus" id="status" value='P' />
			<input type="button" value="accept" onclick="changeStatus('A')">
			<input type="button" value="reject" onclick="changeStatus('R')">
		</form:form>
		<br />
	</c:forEach>
<br />
<br />


</body>
</html>