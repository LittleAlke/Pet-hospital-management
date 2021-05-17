<%@ page import="login.UserBean" %><%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/6/10
  Time: 19:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>爱心诊所</title>
    <link href="../css/list.css" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <style>
        h2{
            font-size: 30px;
            color: #fff;
            text-shadow: 0 0 20px #33B0A6;
            position: absolute;
            top: 10%;
            left: 30%;
        }
    </style>
</head>
<body>
  <%
      UserBean user = (UserBean)session.getAttribute("user");
  %>
<h2>欢迎登录<br><%=user.getID()%>!</h2>
<div class="middle">
    <div class="menu">
        <li class="item" id="vet">
            <a href="#vet" class="btn"><i class="fa fa-vcard-o (alias)" aria-hidden="true"></i>
                兽医</a>
            <div class="smenu">
                <a href="http://localhost:8080/vet/vetMessage.jsp" target="ff">兽医信息</a>
                <a href="http://localhost:8080/vet/vetSearch.jsp" target="ff">查询兽医</a>
                <a href="http://localhost:8080/vet/Add.jsp" target="ff">添加兽医</a>
            </div>
        </li>
        <li class="item" id="customer">
            <a href="#customer" class="btn"><i class="fa fa-user-circle-o" aria-hidden="true"></i>
                客户</a>
            <div class="smenu">
                <a href="http://localhost:8080/customer/Message_customer.jsp" target="ff">浏览客户</a>
                <a href="http://localhost:8080/customer/customerSearch.jsp" target="ff">查询客户</a>
                <a href="http://localhost:8080/customer/Add_customer.jsp" target="ff">新增客户</a>
                <a href="http://localhost:8080/customer/update.jsp" target="ff">更新客户</a>
            </div>
        </li>
        <li class="item" id="pet">
            <a href="#pet" class="btn"><i class="fa fa-paw" aria-hidden="true"></i>
                宠物</a>
            <div class="smenu">
                <a href="http://localhost:8080/pet/pet_message.jsp" target="ff">浏览宠物信息</a>
                <a href="http://localhost:8080/pet/petSearch.jsp" target="ff">查询宠物信息</a>
                <a href="http://localhost:8080/pet/Add.jsp" target="ff">新增宠物信息</a>
                <a href="http://localhost:8080/pet/update.jsp" target="ff">修改宠物信息</a>
            </div>
        </li>
        <li class="item" id="visit">
            <a href="#visit" class="btn"><i class="fa fa-plus-square" aria-hidden="true"></i>
                宠物来访</a>
            <div class="smenu">
                <a href="http://localhost:8080/visit/visit_message.jsp" target="ff">浏览来访记录</a>
                <a href="http://localhost:8080/visit/Add_visit.jsp" target="ff">新增来访</a>
                <a href="http://localhost:8080/visit/visitSearch.jsp" target="ff">查询来访</a>
            </div>
        </li>
        <li class="item">
            <a href="http://localhost:8080/login/Login.jsp" class="btn"><i class="fa fa-power-off" aria-hidden="true"></i>
                退出系统</a>
        </li>
    </div>
</div>
<iframe src="http://localhost:8080/vet/vetSearch.jsp" name="ff"marginwidth="0" marginheight=0   frameborder="0" scrolling="no"height="700" width="1000" ></iframe>
</body>
</html>
