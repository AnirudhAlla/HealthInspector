<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
<link href="/resources/stylesheets/style.css" rel="stylesheet"/>
</head>
<body>
<div align="center">
<div class="header">
<h1>Health Inspector</h1>
</div>
</div>
<h2>Book Appointment</h2>
	<%--  <div id="doctorList"> --%>
	<form:form method="post" action="appointment"
		modelAttribute="doctorModel">
		<table>
			<tr>

				<td><form:select path="userid">
						<c:forEach items="${doctorList}" var="doctor">
							<form:option
								value="${doctor.userid.userid},${doctor.clinicId.clinicId}">${doctor.userid.lastName},${doctor.userid.firstName} |${doctor.clinicId.clinicName} | ${doctor.time} | ${doctor.days} </form:option>
						</c:forEach>
					</form:select></td>
		</tr>
		<tr>
				<td><form:label path="visitDate">Booking Date</form:label>
				<form:input type="Date" path="visitDate" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Book Appointment" /></td>

			</tr>
		</table>
	</form:form>
	<br><br><br>
	<a href="javascript:history.back()">Back</a>
</body>
</html>