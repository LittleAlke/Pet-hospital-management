<%@ page import="pet.PetBean" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/6/17
  Time: 8:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>宠物信息</title>
    <link href="../css/view.css" rel="stylesheet">
</head>
<body >
<h1 align="center">宠物信息</h1>
<hr><br>
<table  align="center" class="table">
    <tr>
        <th>昵称</th>
        <th>种类</th>
        <th>年龄</th>
        <th>目前状态</th>
        <th>主人</th>
    </tr>
    <%
        request.setCharacterEncoding("UTF-8");
        List<PetBean> list = (List<PetBean>) session.getAttribute("list");
        int i = 0;
        while(i<list.size()){
    %>
    <tr>
        <td><%=list.get(i).getName()%></td>
        <td><%=list.get(i).getClass_()%></td>
        <td><%=list.get(i).getAge()%></td>
        <td><%=list.get(i).getState()%></td>
        <td><%=list.get(i).getMaster()%></td>
    </tr>
    <%
            i++;
        }
    %>
</table>
</body>
</html>
