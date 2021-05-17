<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/6/11
  Time: 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加客户</title>
    <link href="../css/customer.css" rel="stylesheet">
</head>
<body>
<div class="container" style="height: 600px">
    <div class="register-box" style="height: 600px">
        <div id="register-title" style="font-size: 30px">
            请输入客户信息
        </div>
        <form action="/AddCustomerServlet" name="forml" method="post">
            <div class="input">
                <input type="text" placeholder="姓名" name="name">
            </div>
            <div class="input">
                <font size=5>男</font><input style="width: 180px;height: 20px" type="radio" name="sex" value="男"checked>
                <font size=5>女</font><input style="width: 180px;height: 20px" type="radio" name="sex" value="女">
            </div>
            <div class="input">
                <input type="text"  placeholder="联系方式" name="tel">
            </div>
            <div class="input">
                <input type="text" placeholder="宠物数量" name="pet">
            </div>
            <div class="input">
                <input type="text" placeholder="会员类型" name="type">
            </div>
            <div id="register-1" align="center">
                <input type="submit" value="确认" id="register-btn"/>
            </div>
        </form>
    </div>
</div>

</body>
</html>
