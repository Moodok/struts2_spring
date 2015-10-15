<%@ page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<link rel="stylesheet" href="<s:url value="/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<s:url value="/css/style.css"/>">

<script src="<c:url value="/js/jquery-1.11.3.min.js"/>"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>

<!-- Fixed navbar -->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="home">Home</a></li>
            </ul>

            <form class="navbar-form navbar-right" action="<s:url value="/logout"/>" method="post">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <button type="submit" class="btn btn-default">Log out</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a>
                        <sec:authentication property="principal.name"/>
                        <sec:authentication property="principal.roles"/>
                    </a>
                </li>
            </ul>
        </div>
        <!--/.nav-collapse -->
    </div>
</nav>