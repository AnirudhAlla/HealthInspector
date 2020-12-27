<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="/resources/stylesheets/style.css" rel="stylesheet" />
<script type="text/javascript">
	function valid() {
		flag = true;
		var usrid = document.getElementById("userid").value;
		var pass = document.getElementById("password").value;
		// alert(usrid +" "+usrid.length);
		// alert(pass +" "+pass.length);
		if (usrid == "" || usrid.length == 0) {
			//alert("userid is mandantory");
			document.getElementById("userid").focus();
			document.getElementById("userid").style.borderColor = "red";
			document.getElementById("userid").style.borderStyle = "solid";
			document.getElementById("usriderr").innerText = "*Userid is mandatory";
			flag = false;
		} else {
			//flag=true;
			document.getElementById("userid").style.borderColor = "";
			document.getElementById("userid").style.borderStyle = "";
			document.getElementById("usriderr").innerText = "";
		}

		if (pass == "" || pass.length == 0) {//alert("Password is mandantory");
			document.getElementById("password").focus();
			document.getElementById("password").style.borderColor = "red";
			document.getElementById("password").style.borderStyle = "solid";
			document.getElementById("pwderr").innerText = "*Password is mandatory";
			flag = false;
		} else {

			document.getElementById("password").style.borderColor = "";
			document.getElementById("password").style.borderStyle = "";
			document.getElementById("pwderr").innerText = "";
			//flag=true;
		}

		return flag;
	}
</script>


<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet" />
<style type="text/css">
.error {
	color: red;
}
</style>

<link href="/resources/stylesheets/style.css" rel="stylesheet" />
</head>

<body>

	<div align="center">
		<div class="header">
			<h1>Health Inspector</h1>
		</div>
	</div>
	<h2>Login</h2>
	${uname}
	<form:form method="post" action="validate" modelAttribute="userLogin"
		onsubmit="return valid();">
		<table>
			<tr>
				<td><form:label path="userid">
						<b>Username</b>
					</form:label></td>
				<td><form:input id="userid" path="userid" /></td>
				<td><span id="usriderr" style="color: red"></span></td>
				<td><form:errors path="userid" cssClass="error" />
			</tr>
			<tr>
				<td><form:label path="password">
						<b>Password</b>
					</form:label></td>
				<td><form:password id="password" path="password" /></td>
				<td><span id="pwderr" style="color: red"></span></td>
				<td><form:errors path="password" cssClass="error" />
			</tr>

			<tr>
				<td colspan="2"><input type="submit" value="Login" /></td>
			</tr>


		</table>
	</form:form>
	<br>
	<a href="forgotUserId">Forgot UserId</a>
	<br>
	<br>
	<a href="forgotPassword">Forgot Password</a>
	<br>
	<br>
	<a href="/showregister">New User Registration</a>


</body>
</html>