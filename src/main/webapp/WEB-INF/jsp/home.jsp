<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<link rel="stylesheet" href="<s:url value="/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<s:url value="/css/style.css"/>">

<script src="<c:url value="/js/jquery-1.11.3.min.js"/>"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>

<html>
<head>
    <title><s:text name="home"/></title>
</head>
<body>

<jsp:include page="header.jsp"/>

<div class="container">
    <sec:authorize access="hasRole('ROLE_ADMIN')">
        <a href="<s:url value="userAddAction"/>" class="btn btn-success"><s:text name="new.user"/></a>
    </sec:authorize>
    <table class="table">
        <thead>
        <tr>
            <th>#</th>
            <th><s:text name="name"/></th>
            <th><s:text name="email"/></th>
            <th><s:text name="login"/></th>
            <th><s:text name="roles"/></th>
            <th><s:text name="edit"/></th>
            <th><s:text name="delete"/></th>
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
                        ${user.roles}
                </td>
                <td>
                    <sec:authorize
                            access="hasRole('ROLE_ADMIN') or
                            hasRole('ROLE_USER') and principal.id == ${user.id}">
                        <a href="<c:url value="/userEdit?userId=${user.id}"/>" class="btn btn-default"><s:text name="edit"/></a>
                    </sec:authorize>
                </td>
                <td>
                    <sec:authorize
                            access="hasRole('ROLE_ADMIN') or
                            hasRole('ROLE_USER') and principal.id == ${user.id}">
                        <a href="<c:url value="/userDeleteAction?userId=${user.id}"/>" class="btn btn-danger"><s:text name="delete"/></a>
                    </sec:authorize>
                </td>
            </tr>
        </c:forEach>
    </table>

</div>
</body>
</html>
