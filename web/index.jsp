<%--
  Created by IntelliJ IDEA.
  User: Phoenix
  Date: 2016/7/7
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Eva咖啡屋</title>
</head>
<body>
<h1>Eva咖啡屋</h1>

<c:if test="${sessionScope.user != null}">
    ${sessionScope.user.username}&nbsp<a href="${pageContext.request.contextPath}/LogInOutServlet?type=logout">退出</a>
</c:if>

<c:if test="${sessionScope.user == null}">
    您好，请<a href="${pageContext.request.contextPath}/LogInOutServlet?type=enterLogin">登录</a>
</c:if>
<a href="${pageContext.request.contextPath}/servlet/OrderServlet">我的订单</a>
</body>
</html>
