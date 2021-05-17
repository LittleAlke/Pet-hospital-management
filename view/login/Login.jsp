<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/6/10
  Time: 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <link href="../css/LoginStyle.css" rel="stylesheet">
</head>
<body>
<%--    <img src="dog.png" alt="dog.png">--%>
    <h1 class="h11">小明爱心宠物诊所</h1>
    <h1 class="h12">您的私人宠物医院</h1>
<div class="loginBox">
    <h2>登录</h2>
    <form action="/loginServlet" name="forml" method="post">
        <div class="item">
            <%--@declare id=""--%><input type="text" name="username" required>
            <label for="">账号</label>
        </div>
        <div class="item">
            <input type="password" name="password" required>
            <label for="">密码</label>
        </div>
        <div class="bbn">
            <button class="btn">登录
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </button>
        </div>
        <a href="regist.jsp">注册</a>
    </form>
</div>
</body>
</html>
