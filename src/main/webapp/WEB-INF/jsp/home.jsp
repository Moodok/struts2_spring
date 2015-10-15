<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <title>Home</title>
</head>
<body>
<p>
    Message <b><c:out value="${message}"/></b>
</p>

<p>
    <c:url var="logoutUrl" value="/logout"/>

<form action="${logoutUrl}" method="post">
    <input type="submit" value="Log out"/>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>
</p>

<sec:authorize access="hasRole('ROLE_ADMIN') and hasRole('ROLE_USER')">
    <p>Must have ROLE_ADMIN and ROLE_USER</p>
</sec:authorize>
<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER')">
    <p>Must have ROLE_ADMIN or ROLE_USER</p>
</sec:authorize>
<sec:authorize access="!hasAnyRole('ROLE_ADMIN','ROLE_USER')">
    <p>Must not have ROLE_ADMIN or ROLE_USER</p>
</sec:authorize>

</body>
</html>
