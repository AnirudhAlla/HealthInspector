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
	<h2>Reset Password</h2>
	${message}

	<form action="changePassword" method="post">
		<table>
			<tr>
				<td>New Password:</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td>Confirmation Password:</td>
				<td><input type="password" name="confirmationPassword"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Submit"></td>
			</tr>
			<tr>
				<td colspan="2"><a href="login">Login</a></td>
			</tr>
		</table>
	</form>


</body>
</html>