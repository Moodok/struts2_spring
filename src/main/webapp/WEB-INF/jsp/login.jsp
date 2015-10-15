<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page pageEncoding="UTF-8" %>

<html>
<head>
    <title>Login</title>
</head>

<body>
<h1>Login</h1>

<s:if test="%{result != null}">
    <div style="color: red">Invalid User</div>
</s:if>
<s:form name="loginForm" action="login" method="post">
    <s:textfield name="username" label="Username"/>
    <s:password name="password" label="Password"/>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <s:submit value="Login"/>
</s:form>

</body>
</html>
