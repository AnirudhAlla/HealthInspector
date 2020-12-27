<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Clinic Details</title>

<link href="/resources/stylesheets/style.css" rel="stylesheet" />
<style type="text/css">
.error {
	color: red;
}
</style>
</head>
<body>
	<div align="center">
		<div class="header">
			<h1>Health Inspector</h1>
		</div>
	</div>
	<h2>Add Clinic</h2>
	<br />
	<form:form method="post" action="saveclinic" modelAttribute="clinic">

		<table>
			<tr>
				<td><form:label path="clinicName">
						<b>Clinic Name</b>
					</form:label></td>
				<td><form:input path="clinicName" /></td>
				<td><form:errors path="clinicName" cssClass="error" />
			</tr>
			<tr>
				<td><form:label path="clinicId">
						<b>Clinic Id</b>
					</form:label></td>
				<td><form:input path="clinicId" /></td>
				<td><form:errors path="clinicId" cssClass="error" />
			</tr>

			<tr>
				<td><form:label path="address">
						<b>Address</b>
					</form:label></td>
				<td><form:input path="address" /></td>
				<td><form:errors path="address" cssClass="error" />
			</tr>
			<tr>
				<td><b>Facilities</b></td>
				<td><form:select path="facilities">
						<form:option value="Ventilator" />
						<form:option value="Operation Theatre" />
						<form:option value="Pharmacy" />
					</form:select></td>
			<tr>
			<tr>
				<td><form:label path="contactNumber">
						<b>Contact Number</b>
					</form:label></td>
				<td><form:input path="contactNumber" /></td>
				<td><form:errors path="contactNumber" cssClass="error" />
			</tr>

			<tr>
				<td><form:label path="website">
						<b>Website</b>
					</form:label></td>
				<td><form:input path="website" /></td>
				<td><form:errors path="website" cssClass="error" />
			</tr>

			<tr>
				<td><form:label path="locality">
						<b>Locality</b>
					</form:label></td>
				<td><form:input path="locality" /></td>
				<td><form:errors path="locality" cssClass="error" />
			</tr>


			<tr>
				<td colspan="2"><input type="submit" value="Save" /></td>
			</tr>
		</table>
	</form:form>
	<br>
	<br>
	<br>
	<a href="javascript:history.back()">Back</a>
</body>
</html>





