<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/6/17
  Time: 8:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询客户</title>
    <link href="../css/customer.css" rel="stylesheet">
</head>
<body>
<div class="container" style="height: 600px">
    <div class="register-box" style="height: 600px">
        <div id="register-title" style="font-size: 30px">
            查询客户信息
        </div>
        <form action="/CustomerSearchServlet" name="forml" method="post">
            <div class="input">
                <font size=5 style="color: white">按姓名查询</font><input style="width: 180px;height: 20px" type="radio" name="search" value="name"checked>
                <br>
                <font size=5 style="color: white">按电话查询</font><input style="width: 180px;height: 20px" type="radio" name="search" value="tel">
            </div>
            <div class="input">
                <input type="text" placeholder="姓名" name="name">
            </div>
            <div class="input">
                <input type="text" placeholder="电话" name="tel">
            </div>

            <div id="register-1" align="center">
                <input type="submit" value="确认" id="register-btn"/>
            </div>
        </form>
    </div>
</div>

</body>
</html>
