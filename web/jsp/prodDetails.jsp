<%--
  Created by IntelliJ IDEA.
  User: Phoenix
  Date: 2016/7/9
  Time: 22:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Eva咖啡屋</title>
</head>
<body>
<img src="../image/products/${requestScope.product.paths[0]}"/>
<h1>${requestScope.product.productId}</h1>
<h1>${requestScope.product.productName}</h1>
<h1>${requestScope.product.type}</h1>
<h1>${requestScope.product.brand}</h1>
<h1>${requestScope.product.packaging}</h1>
<h1>${requestScope.product.level}</h1>
<h1>${requestScope.product.introduction}</h1>
<h1>${requestScope.product.producingArea}</h1>
<h1>${requestScope.product.quantity}</h1>
<h1>${requestScope.product.price}</h1>
<h1>${requestScope.product.tast}</h1>
<h1>${requestScope.product.cupSize}</h1>
<h1>${requestScope.product.concentrations}</h1>
<h1>${requestScope.product.material}</h1>
<h1>${requestScope.product.weight}</h1>
<h1>${requestScope.product.capacity}</h1>
<h1>${requestScope.product.sugar}</h1>
<h1>${requestScope.product.containsMilk}</h1>
<h1>${requestScope.product.spice}</h1>
<h1>${requestScope.product.makerType}</h1>
<h1>${requestScope.product.power}</h1>
<h1>${requestScope.product.good}</h1>
<h1>${requestScope.product.bad}</h1>
<h1>${requestScope.product.ordinary}</h1>
</body>
</html>
