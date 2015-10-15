<%@ page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="<s:url value="/css/style.css"/>">

<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>


<html>
<head>
    <title>Home</title>
</head>
<body>

<jsp:include page="header.jsp"/>

<div class="container">

    Message

    <table class="table">
        <thead>
        <tr>
            <th>#</th>
            <th>Name</th>
            <th>Email</th>
            <th>Login</th>
            <th>Edit</th>
            <th>Remove</th>
        </tr>
        </thead>
        <c:forEach items="${users}" var="user" varStatus="index">
            <tr>
                <td>
                        ${index.count}
                </td>
                <td>
                        ${user.name}
                </td>
                <td>
                        ${user.email}
                </td>
                <td>
                        ${user.login}
                </td>
                <td>
                    <sec:authorize
                            access="hasRole('ROLE_ADMIN') or
                            hasRole('ROLE_USER') and principal.id == ${user.id}">
                        <a href="<c:url value="/userEdit?userId=${user.id}"/>" class="btn btn-default">Edit</a>
                    </sec:authorize>
                </td>
                <td>
                    <a href="" class="btn btn-danger">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <sec:authorize access="hasRole('ROLE_ADMIN') and hasRole('ROLE_USER')">
        <p>Must have ROLE_ADMIN and ROLE_USER</p>
    </sec:authorize>
    <sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER')">
        <p>Must have ROLE_ADMIN or ROLE_USER</p>
    </sec:authorize>
    <sec:authorize access="!hasAnyRole('ROLE_ADMIN','ROLE_USER')">
        <p>Must not have ROLE_ADMIN or ROLE_USER</p>
    </sec:authorize>
</div>
</body>
</html>
