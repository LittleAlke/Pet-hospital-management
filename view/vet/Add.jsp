<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/6/17
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加兽医</title>
    <link href="../css/customer.css" rel="stylesheet">
</head>
<body>
<div class="container" style="height: 600px">
    <div class="register-box" style="height: 600px">
        <div id="register-title" style="font-size: 30px">
            添加兽医信息
        </div>
        <form action="/AddVetServlet" name="forml" method="post">
            <div class="input">
                <input type="text" placeholder="姓名" name="name">
            </div>
            <div class="input">
                <font size=5>男</font><input style="width: 180px;height: 20px" type="radio" name="sex" value="男"checked>
                <font size=5>女</font><input style="width: 180px;height: 20px" type="radio" name="sex" value="女">
            </div>
            <div class="input">
                <input type="text"  placeholder="年龄" name="age">
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
            <div class="input">
                <input type="text" placeholder="工作年龄" name="workage">
            </div>
            <div class="input">
                <input type="text" placeholder="电话" name="phone">
            </div>

            <div id="register-1" align="center">
                <input type="submit" value="确认" id="register-btn"/>
            </div>
        </form>
    </div>
</div>

</body>
</html>