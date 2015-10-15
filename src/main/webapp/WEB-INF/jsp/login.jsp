<%@ page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="<s:url value="/css/style.css"/>">

<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<html>
<head>
    <title>Login</title>
</head>

<body>

<div class="container">
    <div class="wrapper">
        <form action="<s:url value="/login"/>" method="post" name="loginForm" class="form-signin">
            <s:if test="%{result == 'error'}">
                <div class="alert alert-danger" role="alert">
                    Invalid User
                </div>
            </s:if>
            <s:if test="%{result == '403'}">
                <div class="alert alert-danger" role="alert">
                    Access denied
                </div>
            </s:if>
            <h3 class="form-signin-heading">Please Sign In</h3>
            <hr class="colorgraph">
            <br>

            <input type="text" name="username" class="form-control" placeholder="Username" required="" autofocus=""/>
            <input type="password" name="password" class="form-control" placeholder="Password" required=""/>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <button class="btn btn-lg btn-primary btn-block" name="Submit" value="Login" type="Submit">Login</button>
        </form>
    </div>
</div>
</body>
</html>
