<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap CSS and JS Imports-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/CSS/main.css">
<meta charset="ISO-8859-1">
<title>Form</title>
</head>
<body>

<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Hello World App</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
</nav>  
  <!-- Form For Name Processing -->
 <form:form onsubmit="return myFunction()" action="processForm" modelAttribute="Student">
 <br><br>
    *First Name:<form:input path="firstName" id="FirstName" />
    <form:errors path="firstName" cssClass="error"/>
    <br><br>
    *Last Name:<form:input path="secondName" id="SecondName" />
    <form:errors path="secondName" cssClass="error"/>
    <br><br>
      Country: <form:select path="Country">
      				<form:option value="India" label="India"/>
      				<form:option value="India" label="India"/>
      				<form:option value="India" label="India"/>
      				<form:option value="India" label="India"/>
      			</form:select>
    <br><br>
    Favourite Language - 
    <br><br>
    <form:radiobutton path="favouriteLanguage" value="Java"/>Java
    <form:radiobutton path="favouriteLanguage" value="Perl"/>Perl
    <form:radiobutton path="favouriteLanguage" value="Ruby"/>Ruby
    <form:radiobutton path="favouriteLanguage" value="Python"/>Python
    <br><br>
     Operating Systems - 
    <form:checkbox path="operatingSystems" value="Mac OS"/>Mac OS
    <form:checkbox path="operatingSystems" value="Windows"/>Windows
    <form:checkbox path="operatingSystems" value="Linux"/>Linux
    <br><br>
    <input type="submit" value="Submit">
 </form:form>

    <!--  <script src="${pageContext.request.contextPath}/resources/JavaScript/main.js"></script> -->
    <script>
    alert("Welcome");
function myFunction() {
	var firstname = document.getElementById("FirstName").value;
	var secondname = document.getElementById("SecondName").value;
  if(!confirm("Do you wish to continue?"))
	  {
	   return false;
	  }
  if(firstname=="" || firstname==null)
	  {
	    alert("Please Enter first name");
	    return false;
	  }
  if(secondname=="" || secondname==null)
  {
    alert("Please Enter Last name");
    return false;
  }
	  return true;
}
</script>
</body>
</html>