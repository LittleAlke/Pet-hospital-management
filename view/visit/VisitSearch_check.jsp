<%@ page import="visit.VisitBean" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/6/17
  Time: 8:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>来访记录</title>
    <link href="../css/view.css" rel="stylesheet">
</head>
<body >
<h1 align="center">来访记录查询</h1>
<hr><br>
<table  align="center" class="table">
    <tr>
        <th>昵称</th>
        <th>症状</th>
        <th>时间</th>
        <th>消费额</th>
        <th>目前状态</th>
    </tr>
    <%
        request.setCharacterEncoding("UTF-8");
        List<VisitBean> list = (List<VisitBean>) session.getAttribute("list");
        int i = 0;
        while(i<list.size()){
    %>
    <tr>
        <td><%=list.get(i).getName()%></td>
        <td><%=list.get(i).getIllness()%></td>
        <td><%=list.get(i).getDate()%></td>
        <td><%=list.get(i).getCost()%></td>
        <td><%=list.get(i).getState()%></td>
    </tr>
    <%
            i++;
        }
    %>
</table>
</body>
</html>