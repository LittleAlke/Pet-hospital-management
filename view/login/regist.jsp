<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/6/17
  Time: 13:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>register</title>
    <link href="../css/customer.css" rel="stylesheet"/>
</head>
<body style="background-image: linear-gradient(150deg, #33b0a6,#fb5f21)">
<div class="container">
    <div class="register-box">
        <div id="register-title">
            Register
        </div>
        <form action="/RegistServlet" name="forml" method="post">
            <div class="input">
                <input type="text"  placeholder="姓名" name="id">
            </div>
            <div class="input">
                <input type="text"  placeholder="用户名" name="username">
            </div>
            <div class="input">
                <input type="password" placeholder="密码" name="password">
            </div>
            <div id="register-1" align="center">
                <input type="submit" value="注册" id="register-btn"/>
            </div>
        </form>
    </div>
</div>
</body>
</html>