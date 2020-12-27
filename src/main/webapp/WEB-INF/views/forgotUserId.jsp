<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	<h2>Forgot UserId</h2>
	<br> ${message}
	<br>

	<form action="/getUserId" method="post">
		<table>
			<tr>
				<td>Contact Number:</td>
				<td><input type="text" name="contactNumber"></td>
			</tr>
			<tr>
				<td>Select question:</td>
				<td><select name="securityQuestion">
						<option value="In which school you have studied first?">In
							which school you have studied first?</option>
						<option value="What is your favourite food?">What is your
							favourite food?</option>
						<option value="What is your favourite sport?">What is
							your favourite sport?</option>
				</select></td>
			</tr>
			<tr>
				<td>Enter answer:</td>
				<td><input type="text" name="answer" placeholder="Answer">
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Submit"></td>
			</tr>

		</table>

	</form>
	<br>
	<br>
	<a href="login">Login</a>
	</td>
</body>
</html>