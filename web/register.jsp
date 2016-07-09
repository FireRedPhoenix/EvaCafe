<%--
  Created by IntelliJ IDEA.
  User: Phoenix
  Date: 2016/7/9
  Time: 8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Eva咖啡屋</title>
</head>
<body>
${msg}
<form action="${pageContext.request.contextPath}/RegisterServlet" method="POST">
  <table>
    <tr>
      <td>用户名</td>
      <td><input type="text" name="username" /></td>
    </tr>
    <tr>
      <td>密码</td>
      <td><input type="text" name="password"/></td>
    </tr>
    <tr>
      <td>确认密码</td>
      <td><input type="text" name="password2"/></td>
    </tr>
    <tr>
      <td>电话</td>
      <td><input type="text" name="phoneNumber" /></td>
    </tr>
    <tr>
      <td><input type="submit" value="注册"/></td>
    </tr>
  </table>
</form>

</body>
</html>
