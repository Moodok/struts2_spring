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
    <title>Edit</title>
</head>
<body>

<jsp:include page="header.jsp"/>
<div class="container">

    <div class="col-md-5">
        <form action="<c:url value="${postFormUrl}"/>" method="post" class="form-input">
            <div class="form-group">
                <label class="bold-text"><s:text name="email"/>:</label>
                <s:textfield type="email" class="form-control" name="email" errorPosition="bottom"
                             cssErrorClass="input-error"
                             value="%{model.email}"/>
            </div>
            <div class="form-group">
                <label class="bold-text"><s:text name="name"/>:</label>
                <s:textfield type="input" class="form-control" name="name"  errorPosition="bottom"
                             cssErrorClass="input-error"
                             value="%{model.name}"/>
            </div>
            <div class="form-group">
                <label class="bold-text"><s:text name="password"/>:</label>
                <s:textfield type="input" class="form-control" name="password" errorPosition="bottom"
                             cssErrorClass="input-error"
                             value="%{model.password}"/>
            </div>
            <div class="form-group">
                <label class="bold-text"><s:text name="login"/>:</label>
                <s:textfield type="input" class="form-control" name="login" errorPosition="bottom"
                             cssErrorClass="input-error"
                             value="%{model.login}"/>
            </div>
            <s:textfield type="hidden" class="form-control" name="id"  value="%{model.id}"/>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <button class="btn btn-lg btn-primary btn-block" name="Submit" type="Submit"><s:text name="save"/></button>
        </form>
    </div>
</div>
</body>
</html>
