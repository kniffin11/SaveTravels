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
	<title>Edit Expense</title>
	<!-- Bootstrap -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
		rel="stylesheet" 
		integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
		crossorigin="anonymous">
	<link href="/resources/css/styles.css" rel="stylesheet" />
</head>
<body>
    <!-- Nav -->
    <nav>
        <h1 class="o"><strong>Save Travels!</strong></h1>
        <p><strong><a href="/dashboard">Dashboard</a></strong></p>
        <p><strong><a href="/logout">Logout</a></strong></p>
    </nav>

    <!-- Form -->
    <form:form class="forms" action="/processExpense" method="post" modelAttribute="expense">
        <h2>Add an Expense: </h2>
        <p>
            <form:label path="expenseName">Expense Name: </form:label>
            <form:errors path="expenseName" />
            <form:input path="expenseName" />
        </p>
        <p>
            <form:label path="vendor">Vendor: </form:label>
            <form:errors path="vendor" />
            <form:input path="vendor" />
        </p>
        <p>
            <form:label path="amount">Amount: </form:label>
            <form:errors path="amount" />
            <form:input type="number" step="0.01" path="amount" />
        </p>
        <p>
            <form:label path="description">Description: </form:label>
            <form:errors path="description" />
            <form:textarea path="description" />
        </p>
        <form:input path="user" type="hidden" value="${sessionScope.user_id}"></form:input>
        <input id="add-expense" type="submit" value="Add Expense" />
    </form:form> 
</body>
</html>