<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<link rel="stylesheet" href="<s:url value="/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<s:url value="/css/style.css"/>">

<script src="<c:url value="/js/jquery-1.11.3.min.js"/>"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>

<html>
<head>
    <title><s:text name="login"/></title>
</head>

<body>

<div class="container">
    <div class="wrapper">
        <form action="<s:url value="/login"/>" method="post" name="loginForm" class="form-signin">
            <s:if test="%{result == 'error'}">
                <div class="alert alert-danger" role="alert">
                    <s:text name="user.invalid"/>
                </div>
            </s:if>
            <s:if test="%{result == '403'}">
                <div class="alert alert-danger" role="alert">
                    <s:text name="user.access.denied"/>
                </div>
            </s:if>
            <h3 class="form-signin-heading"><s:text name="sing.in"/></h3>
            <hr class="colorgraph">
            <br>

            <input type="text" name="username" class="form-control" placeholder="<s:text name="login"/>" required=""
                   autofocus=""/>
            <input type="password" name="password" class="form-control" placeholder="<s:text name="password"/>"
                   required=""/>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <button class="btn btn-lg btn-primary btn-block" name="Submit" type="Submit"><s:text name="login"/></button>

            <br/>

            <a href="?request_locale=en">English</a>
            <a href="?request_locale=ru">Русский</a>

        </form>
    </div>
</div>
</body>
</html>
