<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/6/15
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询兽医</title>
    <link href="../css/customer.css" rel="stylesheet">
</head>
<body>
<div class="container" style="height: 600px">
    <div class="register-box" style="height: 600px">
        <div id="register-title" style="font-size: 30px">
            查询兽医信息信息
        </div>
        <form action="/VetSearchServlet" name="forml" method="post">
            <div class="input">
                <font size=5 style="color: white">按特长查询</font><input style="width: 180px;height: 20px" type="radio" name="search" value="good"checked>
                <br>
                <font size=5 style="color: white">按姓名查询</font><input style="width: 180px;height: 20px" type="radio" name="search" value="name">
            </div>
            <div class="input">
                <input type="text" placeholder="姓名" name="name">
            </div>
            <div id="sel" >
                特长
            </div>
            <select name="good" >
                <option value="犬科">犬科</option>
                <option value="猫科">猫科</option>
                <option value="大型哺乳类">大型哺乳类</option>
                <option value="小型哺乳类">小型哺乳类</option>
                <option value="水生动物">水生动物</option>
            </select>

            <div id="register-1" align="center">
                <input type="submit" value="确认" id="register-btn"/>
            </div>
        </form>
    </div>
</div>

</body>
</html>