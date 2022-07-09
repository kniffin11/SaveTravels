
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach ; c:if -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!-- Formatting (like dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>   
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Expense</title>
	<!-- Bootstrap -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
		rel="stylesheet" 
		integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
		crossorigin="anonymous">
	<link href="/resources/css/styles.css" rel="stylesheet" />
</head>
<body>
	<nav>
        <h1 class="o"><strong>Save Travels!</strong></h1>
        <p><strong><a href="/dashboard">Dashboard</a></strong></p>
        <p><strong><a href="/logout">Logout</a></strong></p>
    </nav>

	<div class="forms">
		<h2>${expense.expenseName}</h2>
		<h4>Vender: ${expense.vendor}</h4>
		<h4>Price: ${expense.amount}</h4>
		<h4>Description: ${expense.description}</h4>
	</div>
</body>
</html>