<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/security/tags"
  prefix="security"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>
    WELCOME
    <security:authorize access="isAnonymous()">
    Guest
    </security:authorize>
    <security:authorize access="isAuthenticated()">
    <security:authentication property="principal.username"/>
    </security:authorize>
    </h3>
    <security:authorize access="isAnonymous()">
    Login as <a href="user"> USER</a> or <a href="/admin">ADMIN</a>
    </security:authorize>
    <security:authorize access="isAuthenticated()">
    <security:authorize access="hasRole('USER')">
    	<a href="user">MY profile</a>
    </security:authorize>
    <security:authorize> access="hasRole('ADMIN')">
    <a href="admin">My profile</a>
    </security:authorize>
    <a href="logout">Logout</a>
    </security:authorize>
    </body>
    </html>
    