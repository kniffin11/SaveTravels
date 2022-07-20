<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!-- c:out ; c:forEach ; c:if -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Formatting (like dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- for rendering errors on PUT routes -->
<%@ page session="true" isErrorPage="true" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
        crossorigin="anonymous">
    <link href="/resources/css/styles.css" rel="stylesheet" />

</head>

<body>
    <!--  right click index.jsp on package explorer then Open With then external apps, then VS code source file and all changes made their will update here. -->
    <nav>
        <h1 class="o"><strong>Save Travels!</strong></h1>
        <p><strong><a href="/logout">Logout</a></strong></p>
    </nav>
    <div class="container d-flex ">
        <div class="left">
            <!-- table start -->
            <table class="table table-hover">
                <h1 class="m-2">All of your expenses will show up here: </h1>
                <thead>
                    <tr>
                        <th class="align-middle">Expense</th>
                        <th class="align-middle">Vendor</th>
                        <th class="align-middle">Amount</th>
                        <th class="align-middle">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${allExpenses}" var="i">
                        <tr>
                            <td> <a href="/oneExpense/${i.id}">
                                <c:out value="${i.expenseName}"></c:out>
                                </a></td>
                            <td>
                                <c:out value="${i.vendor}"></c:out>
                            </td>
                            <td>
                                <c:out value="${i.amount}"></c:out>
                            </td>
                            <td><a href="/editExpense/${i.id}">Edit</a> | <a href="/delete/${i.id}">Delete</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <p class="m-2"><strong></strong><a href="/expenses/new">Add Expense</a></strong></p>
            <!-- table end -->
        </div>
		
        <div class="right">
            <!-- Beginning of Container -->
            <h1>Dont Forget These Essentials!</h1>
            <ul>
                <li>Sun Screen</li>
                <li>Beach Towels</li>
                <li>Swim Wear</li>
                <li>Beach Balls</li>
                <li>Drinks</li>
                <li>Snacks</li>
                <li><strong><a href="/expenses/new">Click here to add something to your list!</a></strong></li>
            </ul>
        </div>
    </div> <!-- End of Container -->
</body>

</html>