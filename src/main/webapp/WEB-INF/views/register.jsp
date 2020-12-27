<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link href="/resources/stylesheets/style.css" rel="stylesheet"/>
<style type="text/css">
.error
{
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
${userId}
 <h2>Add User</h2>
    <br/>
    <form:form method="post" action="saveuser" modelAttribute="user">
        <table>
       
         <tr>
                <td><form:label path="firstName"><b>First Name</b></form:label></td>
                <td><form:input path="firstName" /></td>
                <td><form:errors path="firstName" cssClass="error"/>
            </tr>
            
            <tr>
                <td><form:label path="lastName"><b>Last Name</b></form:label></td>
                <td><form:input path="lastName" /></td>
                 <td><form:errors path="lastName" cssClass="error"/>
            </tr>
            
            <tr>
                <td><form:label path="dateOfBirth"><b>DoB</b></form:label></td>
                <td><form:input type="Date" path="dateOfBirth"/></td>
                 <td><form:errors path="dateOfBirth" cssClass="error"/>
                
            </tr>
            
             <tr>
             <td><form:label path="gender"><b>Gender</b></form:label></td>
            <td><form:radiobutton path="gender" value="Male"/>Male  
            <form:radiobutton path="gender" value="Female"/>Female</td>
            </tr>
            
             <tr>
                <td><form:label path="contactNumber"><b>Contact Number</b></form:label></td>
                <td><form:input path="contactNumber" /></td>
                 <td><form:errors path="contactNumber" cssClass="error"/>
                
            </tr>
            
            <tr>
                <td><form:label path="userid"><b>User Id</b></form:label></td>
                <td><form:input path="userid" /></td>
                 <td><form:errors path="userid" cssClass="error"/>
            </tr>
            
            <tr>
                <td><form:label path="password"><b>Password</b></form:label></td>
                <td><form:input path="password" /></td>
                 <td><form:errors path="password" cssClass="error"/>
            </tr>
           
           <tr>
                <td><form:label path="email"><b>Email</b></form:label></td>
                <td><form:input path="email" /></td>
                 <td><form:errors path="email" cssClass="error"/>
            </tr>
            
            <tr>
				<td><b>User category</b></td>
				<td><form:select path="userCategory">
					 <form:option value="Patient" />
					  <form:option value="Doctor" />
				       </form:select>
                 </td>
            <tr>
            
             <tr>
            	<td><form:label path="securityQuestion"><b>Secret Question</b></form:label></td>
				<td><form:select path="securityQuestion" >
  					<form:option selected="selected" value="In which school you have studied first?"/>
  					<form:option value="What is your favourite food?"/>
  					<form:option value="What is your favourite sport?"/>
					</form:select>
				</td>
			</tr>
			<tr>
                <td><form:label path="answer"><b>Answer</b></form:label></td>
                <td><form:input path="answer" placeholder = "Answer"/></td>
               <td><form:errors path="answer" cssClass="error"/>
            </tr>
                <td colspan="2"><input type="submit" value="register"/></td>
            </tr>
        </table>
    </form:form>
    <br><br>
	<a href="javascript:history.back()">Back</a>
</body>
</html>