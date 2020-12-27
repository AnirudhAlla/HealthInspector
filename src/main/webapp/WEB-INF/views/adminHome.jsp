
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Home</title>
<link href="/resources/stylesheets/style.css" rel="stylesheet" />
</head>

<body>
	<div align="center">
		<div class="header">
			<h1>Health Inspector</h1>
		</div>
	</div>

	<h2>Admin Home Page</h2>

	<h3>Welcome, ${userLogin.userid}</h3>
	<br>
	<br>
	<a href="showclinic">Add Clinic</a>
	<br>
	<br>
	<br>
	<br>
	<a href="logout"> Logout</a>


</body>

</html>
