<%--
  Created by IntelliJ IDEA.
  User: Phoenix
  Date: 2016/7/8
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Eva咖啡屋</title>
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
<!--整体布局-->
<div class="main">
    <!--中间部分-->
    <div class="owner">
        <!--登陆表格-->
        <div class="contant">
            <div class="login_title" id="business">账户登录</div>
            <font color="red">${msg}</font>

            <form method="post" action="${pageContext.request.contextPath}/LogInOutServlet?type=login" name="form">
                <div class="filed">
                    <input class="input_test" type="text" style="color:#666;" placeholder="请输入用户名"
                           name="username"/>
                </div>
                <div class="filed">
                    <input class="input_test" type="text" style="color:#666;" placeholder="请输入密码" name="password"/>
                </div>
                <div class="link">
                    <a class="forgetpsw" href="__URL__/findpwd">忘记密码</a>
                    <a class="sign" href="${pageContext.request.contextPath}/LogInOutServlet?type=register">注册</a>
                </div>
                <div>
                    <input class="submit" type="submit" value="登录"/>
                </div>
            </form>
        </div>
    </div>
</div>
</div>
</body>
</html>
