<%--
  Created by IntelliJ IDEA.
  User: Phoenix
  Date: 2016/7/9
  Time: 9:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Eva咖啡屋</title>
</head>
<body>
<c:forEach items="${requestScope.orders}" var="order">
    <a href="${pageContext.request.contextPath}/servlet/ProdDetailsServlet?prodId=${order.productId}">
        <img src="../image/products/${order.path}"/>
    </a>
    ${order.productName}
    ${order.price}
    ${order.productQuantity}
    ${order.time}
    ${order.status}

    <c:if test="${!order.isPaid}">
        <a href="${pageContext.request.contextPath}/servlet/OrderOpServlet?type=pay&orderId=${order.orderId}">${"付款"}</a>
        <a href="${pageContext.request.contextPath}/servlet/OrderOpServlet?type=cancel&orderId=${order.orderId}">${"取消订单"}</a>
    </c:if>

    <c:if test="${order.isPaid}">
        <c:if test="${order.status == '预备发货'}">
            <a href="${pageContext.request.contextPath}/servlet/OrderOpServlet?type=reject&orderId=${order.orderId}">${"退货"}</a>
        </c:if>
        <c:if test="${order.status == '运送中'}">
            <a href="${pageContext.request.contextPath}/servlet/OrderOpServlet?type=reject&orderId=${order.orderId}">${"退货"}</a>
        </c:if>
        <c:if test="${order.status == '准备收货'}">
            <a href="${pageContext.request.contextPath}/servlet/OrderOpServlet?type=accept&orderId=${order.orderId}">${"确认收货"}</a>
            <a href="${pageContext.request.contextPath}/servlet/OrderOpServlet?type=reject&orderId=${order.orderId}">${"退货"}</a>
        </c:if>
        <c:if test="${order.status == '已取消'}">
            ${"订单已取消"}
        </c:if>
        <c:if test="${order.status == '已完成'}">
            <c:if test="${!order.isEvaluated}">
                <a href="${pageContext.request.contextPath}/servlet/OrderOpServlet?type=good&orderId=${order.orderId}">${"好评"}</a>
                <a href="${pageContext.request.contextPath}/servlet/OrderOpServlet?type=normal&orderId=${order.orderId}">${"中评"}</a>
                <a href="${pageContext.request.contextPath}/servlet/OrderOpServlet?type=bad&orderId=${order.orderId}">${"差评"}</a>
            </c:if>
            <c:if test="${order.isEvaluated}">
                ${"已完成评价"}
            </c:if>
        </c:if>
    </c:if>
    <br>
</c:forEach>
</body>
</html>
