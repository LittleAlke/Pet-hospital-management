<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/6/11
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>宠物来访</title>
    <link href="../css/customer.css" rel="stylesheet">
</head>
<body>
<div class="container" style="height: 600px">
    <div class="register-box" style="height: 600px">
        <div id="register-title" style="font-size: 30px">
            添加宠物来访记录
        </div>
        <form action="/AddVisitServlet" name="forml" method="post">
            <div class="input">
                <input type="text" placeholder="昵称" name="name">
            </div>
            <div class="input">
                <input type="text" placeholder="症状" name="illness">
            </div>
            <div class="input">
                <input type="text" placeholder="费用" name="cost">
            </div>
            <div id="sel" >
                状态
            </div>
                <select name="state" >
                    <option value="队列中">队列中</option>
                    <option value="治疗中">治疗中</option>
                    <option value="恢复中">恢复中</option>
                    <option value="观察中">观察中</option>
                </select>
<%--                <input type="text" placeholder="目前状态" name="state">--%>

            <div id="register-1" align="center">
                <input type="submit" value="确认" id="register-btn"/>
            </div>
        </form>
    </div>
</div>

</body>
</html>
