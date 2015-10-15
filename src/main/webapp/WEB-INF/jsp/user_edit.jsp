<%@ page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<link rel="stylesheet" href="<s:url value="/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<s:url value="/css/style.css"/>">

<script src="<c:url value="/js/jquery-1.11.3.min.js"/>"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>

<html>
<head>
    <title>Edit</title>
</head>
<body>

<jsp:include page="header.jsp"/>
<div class="container">

    <div class="col-md-5">
        <form action="<c:url value="/userEditAction"/>" method="post" class="form-input">
            <div class="form-group">
                <s:label>Email address</s:label>
                <s:textfield type="email" class="form-control" name="email" placeholder="Email" value="%{model.email}"/>
            </div>
            <div class="form-group">
                <s:label>Name</s:label>
                <s:textfield type="input" class="form-control" name="name" placeholder="Name" value="%{model.name}"/>
            </div>
            <div class="form-group">
                <s:label>Password</s:label>
                <s:textfield type="input" class="form-control" name="password" placeholder="Password"
                             value="%{model.password}"/>
            </div>
            <div class="form-group">
                <s:label>Login</s:label>
                <s:textfield type="input" class="form-control" name="login" placeholder="login" value="%{model.email}"/>
            </div>
            <s:textfield type="hidden" class="form-control" name="id"  value="%{model.id}"/>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <button class="btn btn-lg btn-primary btn-block" name="Submit" type="Submit">Save</button>
        </form>
    </div>
</div>
</body>
</html>
