<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/6/17
  Time: 8:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>记录查询</title>
    <link href="../css/customer.css" rel="stylesheet">
</head>
<body>
<div class="container" style="height: 600px">
    <div class="register-box" style="height: 600px">
        <div id="register-title" style="font-size: 30px">
            查询来访记录
        </div>
        <form action="/VisitSearchServlet" name="forml" method="post">
            <div class="input">
                <input type="text" placeholder="宠物昵称昵称" name="name">
            </div>


            <div id="register-1" align="center">
                <input type="submit" value="确认" id="register-btn"/>
            </div>
        </form>
    </div>
</div>

</body>
</html>
