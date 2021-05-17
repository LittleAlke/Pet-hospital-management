<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/6/17
  Time: 8:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询宠物</title>
    <link href="../css/customer.css" rel="stylesheet">
</head>
<body>
<div class="container" style="height: 600px">
    <div class="register-box" style="height: 600px">
        <div id="register-title" style="font-size: 30px">
            查询宠物信息
        </div>
        <form action="/PetSearchServlet" name="forml" method="post">
            <div class="input">
                <font size=5 style="color: white">按昵称查询</font><input style="width: 180px;height: 20px" type="radio" name="search" value="name"checked>
                <br>
                <font size=5 style="color: white">按主人查询</font><input style="width: 180px;height: 20px" type="radio" name="search" value="master">
            </div>
            <div class="input">
                <input type="text" placeholder="宠物昵称昵称" name="name">
            </div>
            <div class="input">
                <input type="text" placeholder="主人姓名" name="master">
            </div>

            <div id="register-1" align="center">
                <input type="submit" value="确认" id="register-btn"/>
            </div>
        </form>
    </div>
</div>

</body>
</html>
