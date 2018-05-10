<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User page</title>
</head>
<body>
<h3>
User Dashboard
</h3>
<security:authorize access="isAuthenticted()">
<b>WELCOME <security:authentication property="principal.username"/></b>
</security:authorize>
<br/>
<security:authorize access="isAuthenticated()"><a href="/">Home</a> |  <a href="logout">Logout</a>
</security:authorize>
</body>
</html>